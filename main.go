package main

import (
	"belajar-corcurent/config"
	"belajar-corcurent/repository"
	"belajar-corcurent/service"
	"fmt"
	"github.com/joho/godotenv"
	"io/ioutil"
	"net/http"
	"time"
)

func MakeRequest(url string, ch chan<- string) {
	start := time.Now()
	resp, _ := http.Get(url)
	secs := time.Since(start).Seconds()
	body, _ := ioutil.ReadAll(resp.Body)
	ch <- fmt.Sprintf("%.2f elapsed with response length: %d %s", secs, len(body), url)
}
func MakeRequest2(url string) string {
	start := time.Now()
	resp, _ := http.Get(url)
	secs := time.Since(start).Seconds()
	body, _ := ioutil.ReadAll(resp.Body)
	return fmt.Sprintf("%.2f elapsed with response length: %d %s", secs, len(body), url)
}
func main() {
	godotenv.Load()

	//start := time.Now()
	//ch := make(chan string)
	//for _, url := range os.Args[1:] {
	//	go MakeRequest(url, ch)
	//}
	//for range os.Args[1:] {
	//	fmt.Println(<-ch)
	//}
	//for _, url := range os.Args[1:] {
	//	fmt.Println(MakeRequest2(url))
	//}
	//fmt.Printf("%.2fs elapsed\n", time.Since(start).Seconds())

	mysql := config.MysqlConnection()
	supplierRepo := repository.NewSupplierRepository(mysql)
	transactionRepo := repository.NewTransactionRepoImpl(mysql)

	transactionService := service.NewTransactionService(&supplierRepo, &transactionRepo)

	transactionService.Processtransaction()
}
