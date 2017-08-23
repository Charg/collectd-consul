#!/bin/bash
flake8 consul_plugin.py
if [ "$?" -ne 0 ]; then
    exit 1;
fi
python -m unittest discover > /dev/null
if [ "$?" -ne 0 ]; then
    exit 1;
fi