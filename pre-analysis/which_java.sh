#!/bin/bash

# AbbyMoore 7.13.18
# Had trouble getting java to run on Tractor for fastqc. 
# After running this, hard coded java path in the fastqc script.

export PATH="/usr/bin/java:$PATH"
source ~/.bashrc
which java
