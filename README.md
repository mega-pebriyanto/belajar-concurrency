# Belajar concurrency dengan worker pool

Aplikasi ini berfungsi memproses http request kemudian mengupdate statusnya

## Cara Menjalankannya ##

1. import file di folder db
2. ubah statusnya menjadi `PENDING` dengan, `update `transaction` set status = "PENDING" , response_supplier = NULL`
3. jalankan dengan `go run main.go`