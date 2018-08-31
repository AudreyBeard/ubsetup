#!/bin/bash
ssh-keygen -f $1 -e -m PKCS8 > $2

