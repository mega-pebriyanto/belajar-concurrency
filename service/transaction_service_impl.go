package service

import (
	"belajar-corcurent/entity"
	"belajar-corcurent/model"
	"belajar-corcurent/repository"
	"encoding/json"
	"fmt"
	"github.com/sirupsen/logrus"
	"net/http"
	"strings"
	"time"
)

type transtionServiceImpl struct {
	SupplierRepo    repository.SupplierRepo
	TransactionRepo repository.TransactionRepo
}

func NewTransactionService(supplierRepo *repository.SupplierRepo, tranactionRepo *repository.TransactionRepo) TransactionService {
	return &transtionServiceImpl{SupplierRepo: *supplierRepo, TransactionRepo: *tranactionRepo}
}

var counter = 0

func (service transtionServiceImpl) Processtransaction() {
	in := make(chan entity.Transactions)
	out := make(chan entity.Transactions)
	for {
		dataTrx, _ := service.TransactionRepo.GetTransactionQue()
		//fmt.Println("Total trx:", len(dataTrx))
		logrus.Info("Total trx:", len(dataTrx))
		if len(dataTrx) > 0 {
			go func() {
				for _, data := range dataTrx {
					supp, _ := service.SupplierRepo.GetSupplier(data.SupplierId)
					data.Url = supp.Url
					in <- data
					fmt.Printf("-> Send Job: %d\n", data.Id)

				}

			}()

			//worker 1
			go func() {
				for {
					n := <-in
					response := MakeRequest(n.Url, n)
					if response.RC == "01" {
						n.Status = "SUKSES"
						desc, _ := json.Marshal(response)
						n.ResponseSupplier = string(desc)
					}
					//time.Sleep(time.Duration(rand.Intn(3000)) * time.Millisecond)

					out <- n
					fmt.Println("asign A")
				}
			}()

			//worker 2
			go func() {
				for {
					n := <-in
					response := MakeRequest(n.Url, n)
					if response.RC == "01" {
						n.Status = "SUKSES"
						desc, _ := json.Marshal(response)
						n.ResponseSupplier = string(desc)
					}
					//

					out <- n
					fmt.Println("asign B")
				}
			}()

			go func() {
				for n := range out {

					service.TransactionRepo.UpdateTransaction(entity.Transactions{
						Status:           n.Status,
						ResponseSupplier: n.ResponseSupplier,
						Id:               n.Id,
					})
					//	fmt.Println("nnn", n)
				}
			}()
		}

		fmt.Println("encheck....")

		time.Sleep(5 * time.Second)
	}

}

func MakeRequest(url string, dataTrx entity.Transactions) (response model.ResponseSupplier) {
	method := "POST"

	payload := strings.NewReader(`{"kode": "` + dataTrx.Kodeproduk + `","tujuan": "` + dataTrx.Tujuan + `"}`)

	client := &http.Client{}
	req, err := http.NewRequest(method, url, payload)

	if err != nil {
		fmt.Println(err)
		return response
	}
	res, err := client.Do(req)
	if err != nil {
		fmt.Println(err)
		return response
	}
	defer res.Body.Close()
	err = json.NewDecoder(res.Body).Decode(&response)
	if err != nil {
		fmt.Println(err)
		return response
	}

	return response
}
