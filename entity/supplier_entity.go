package entity

type Suppliers struct {
	Id  int64  `gorm:"column:id"`
	Url string `gorm:"column:url"`
}

func (Suppliers) TableName() string {
	return "suppliers"
}
