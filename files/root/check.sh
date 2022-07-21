#!/bin/bash

ping -c 3 pixiv.net > /dev/null 2>&1
if [ $? -ne 0 ];then
    /etc/init.d/passwall restart
fi