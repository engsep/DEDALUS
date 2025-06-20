#!/bin/bash

openssl req -newkey rsa:4096 -x509 -sha512 -days 365 -nodes -out fullchain.pem -keyout privkey.pem -subj "/CN=localhost"
