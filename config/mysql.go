package config

import (
	"belajar-corcurent/exception"
	"context"
	"database/sql"
	"fmt"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"os"
	"strconv"
	"time"
)

func MysqlConnection() *gorm.DB {
	ctx, cancel := NewMySQLContext()
	defer cancel()

	fmt.Println("xxxx", os.Getenv("MYSQL_MASTER_HOST"))

	sqlDB, err := sql.Open("mysql", os.Getenv("MYSQL_MASTER_HOST"))
	exception.PanicIfNeeded(err)

	err = sqlDB.PingContext(ctx)
	exception.PanicIfNeeded(err)

	mysqlPoolMax, err := strconv.Atoi(os.Getenv("MYSQL_MASTER_POOL_MAX"))
	exception.PanicIfNeeded(err)

	mysqlIdleMax, err := strconv.Atoi(os.Getenv("MYSQL_MASTER_IDLE_MAX"))
	exception.PanicIfNeeded(err)

	mysqlMaxLifeTime, err := strconv.Atoi(os.Getenv("MYSQL_MASTER_MAX_LIFE_TIME_MINUTE"))
	exception.PanicIfNeeded(err)

	// mysqlMaxIdleTime, err := strconv.Atoi(os.Getenv("MYSQL_MASTER_MAX_IDLE_TIME_MINUTE"))
	exception.PanicIfNeeded(err)

	// SetMaxIdleConns sets the maximum number of connections in the idle connection pool.
	sqlDB.SetMaxIdleConns(mysqlIdleMax)

	// SetMaxOpenConns sets the maximum number of open connections to the database.
	sqlDB.SetMaxOpenConns(mysqlPoolMax)

	// SetConnMaxLifetime sets the maximum amount of time a connection may be reused.
	sqlDB.SetConnMaxLifetime(time.Duration(mysqlMaxLifeTime) * time.Minute)

	// sqlDB.SetConnMaxIdleTime(time.Duration(mysqlMaxIdleTime) * time.Minute)

	gormDB, err := gorm.Open(mysql.New(mysql.Config{
		Conn: sqlDB,
	}), &gorm.Config{})
	exception.PanicIfNeeded(err)
	return gormDB
}

func NewMySQLContext() (context.Context, context.CancelFunc) {
	return context.WithTimeout(context.Background(), 10*time.Second)
}
