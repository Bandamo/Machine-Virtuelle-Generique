#!/bin/bash

PID=$(pgrep qemu)
kill $PID

echo QEMU Killed
