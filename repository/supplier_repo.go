package repository

import "belajar-corcurent/entity"

type SupplierRepo interface {
	GetSupplier(id int) (data entity.Suppliers, err error)
}
