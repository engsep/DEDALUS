#!/bin/bash

openssl enc -aes-256-cbc -salt -in .env -out .env.enc -pbkdf2 -pass pass:Hyperride!