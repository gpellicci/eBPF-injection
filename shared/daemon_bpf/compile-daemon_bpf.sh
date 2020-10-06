#!/usr/bin/env bash

set -eux

cp /home/giacomo/myvm/shared/daemon_bpf/daemon_bpf.c /home/giacomo/Desktop/tesi/linux/samples/bpf/daemon_bpf.c
cp /home/giacomo/myvm/shared/daemon_bpf/bpf_injection_msg.h /home/giacomo/Desktop/tesi/linux/samples/bpf/bpf_injection_msg.h
cd /home/giacomo/Desktop/tesi/linux
make M=samples/bpf

sudo cp /home/giacomo/Desktop/tesi/linux/samples/bpf/daemon_bpf /home/giacomo/myvm/shared/daemon_bpf/daemon_bpf
sudo chmod 755 /home/giacomo/myvm/shared/daemon_bpf/daemon_bpf