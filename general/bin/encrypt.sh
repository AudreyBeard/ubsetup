#!/bin/bash

openssl rsautl -encrypt -pubin -inkey $1 -ssl -in $2 -out $2.enc
