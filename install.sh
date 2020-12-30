#!/bin/bash
#
# Author: Rüdiger Schierz
# Date: 2020-12-30
#

set -x

make && sudo make install && sudo modprobe 88x2bu

