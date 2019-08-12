#!/bin/bash

sudo service aesmd stop
sudo rmmod isgx
sudo insmod isgx.ko || exit -1
sudo service aesmd start || exit -1
