#!/bin/bash
dd if=/dev/sdX1 of=/dev/sdY1 bs=64K conv=noerror,sync
