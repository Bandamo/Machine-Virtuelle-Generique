#!/bin/bash

until ssh -o ConnectTimeout=1 -p 5555 localhost; do
	sleep 1
done

echo "Disconnected"
