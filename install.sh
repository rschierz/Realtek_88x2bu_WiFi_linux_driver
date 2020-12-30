#!/bin/bash

set -x

make && sudo make install && sudo modprobe 88x2bu

