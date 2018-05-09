#! /bin/bash
cc-test-reporter format-coverage -t coverage.py coverage/coverage.xml 
cc-test-reporter upload-coverage                
