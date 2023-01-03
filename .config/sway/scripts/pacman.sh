#!/bin/bash

count="$(checkupdates | wc -l)"
if [[ "$count" != "0" ]]; then
	    echo "$count"
fi
