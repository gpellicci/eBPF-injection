#!/usr/bin/env bash

set -eux

rm -rf /home/giacomo/Desktop/alternate-linux/linux/samples/bpf/myprog.c
rm -rf /home/giacomo/Desktop/alternate-linux/linux/samples/bpf/daemon_bpf.c
cp /home/giacomo/myvm/data/myprog.c /home/giacomo/Desktop/alternate-linux/linux/samples/bpf/myprog.c
cp /home/giacomo/myvm/shared/daemon_bpf/daemon_bpf.c /home/giacomo/Desktop/alternate-linux/linux/samples/bpf/daemon_bpf.c
cp /home/giacomo/myvm/shared/daemon_bpf/bpf_injection_msg.h /home/giacomo/Desktop/alternate-linux/linux/samples/bpf/bpf_injection_msg.h
cd /home/giacomo/Desktop/alternate-linux/linux
make M=samples/bpf

sudo cp samples/bpf/myprog.o /home/giacomo/myvm/shared/test/programs/mytestprog.o
sudo cp samples/bpf/myprog.o /home/giacomo/myvm/data/mytestprog.o
sudo cp /home/giacomo/Desktop/alternate-linux/linux/samples/bpf/daemon_bpf /home/giacomo/myvm/shared/daemon_bpf/daemon_bpf
sudo chmod 755 /home/giacomo/myvm/shared/daemon_bpf/daemon_bpf