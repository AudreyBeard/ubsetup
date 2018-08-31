#!/bin/bash

openssl rsautl -decrypt -inkey $1 -in $2 -out $2.dec
