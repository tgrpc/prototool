#!/bin/sh
(rm -rf ../vendor | rm -rf vendor) & go run cmd/excited/main.go