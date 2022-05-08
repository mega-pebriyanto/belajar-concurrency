package repository

import "belajar-corcurent/entity"

type TransactionRepo interface {
	GetTransactionQue() (data []entity.Transactions, err error)
	UpdateTransaction(data entity.Transactions) (err error)
}
