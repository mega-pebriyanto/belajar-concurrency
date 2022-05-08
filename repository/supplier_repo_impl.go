package repository

import (
	"belajar-corcurent/entity"
	"gorm.io/gorm"
)

type supplierRepoImpl struct {
	Mysql *gorm.DB
}

func NewSupplierRepository(Mysql *gorm.DB) SupplierRepo {
	return &supplierRepoImpl{
		Mysql: Mysql,
	}
}
func (s supplierRepoImpl) GetSupplier(id int) (data entity.Suppliers, err error) {
	err = s.Mysql.Where("id", id).Find(&data).Error
	return data, err
}
