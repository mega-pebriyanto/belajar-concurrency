package entity

import "time"

type Transactions struct {
	Id               int64     `gorm:"column:id"`
	Kodeproduk       string    `gorm:"column:kodeproduk"`
	Tujuan           string    `gorm:"column:tujuan"`
	UserId           int       `gorm:"column:user_id"`
	Username         string    `gorm:"column:username"`
	Price            int64     `gorm:"column:price"`
	CreatedAt        time.Time `gorm:"column:created_at"`
	UpdatedAt        time.Time `gorm:"column:updated_at"`
	Status           string    `gorm:"column:status"`
	ResponseSupplier string    `gorm:"column:response_supplier"`
	SupplierId       int       `gorm:"column:supplier_id"`
	Url              string    `gorm:"-"`
}

func (Transactions) TableName() string {
	return "transaction"
}
