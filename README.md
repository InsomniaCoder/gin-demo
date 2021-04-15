# Overview

This project is to try using Gin to create a Go API

## Installation

```
docker run --name=demo -e MYSQL_ROOT_PASSWORD=12345 -e MYSQL_DATABASE=demo -p 3306:3306 -d mysql
go mod init gin-101
$ go get gopkg.in/gin-gonic/gin.v1
$ go get -u github.com/jinzhu/gorm
$ go get github.com/go-sql-driver/mysql
go run main.go
```

## Tools

Gin = Go's API Framework
Gorm = Go's ORM Framework


## Reference 

https://thedevsaddam.medium.com/build-restful-api-service-in-golang-using-gin-gonic-framework-85b1a6e176f3