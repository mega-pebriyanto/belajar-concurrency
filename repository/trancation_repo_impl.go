package repository

import (
	"belajar-corcurent/entity"
	"gorm.io/gorm"
)

type transactionRepoImpl struct {
	Mysql *gorm.DB
}

func NewTransactionRepoImpl(Mysql *gorm.DB) TransactionRepo {
	return &transactionRepoImpl{
		Mysql: Mysql,
	}
}

func (t transactionRepoImpl) GetTransactionQue() (data []entity.Transactions, err error) {
	//TODO implement me
	err = t.Mysql.Where("status", "PENDING").Find(&data).Error
	return data, err
}

func (t transactionRepoImpl) UpdateTransaction(data entity.Transactions) (err error) {
	err = t.Mysql.Where("id", data.Id).Updates(data).Error
	return err
}
