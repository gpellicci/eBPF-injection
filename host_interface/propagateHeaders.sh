#!/usr/bin/env bash

set -eux

# Copy to qemu tree to let it compile
cp /home/giacomo/eBPF-injection/host_interface/bpf_injection_msg.h /home/giacomo/Desktop/tesi/qemu/hw/misc/

# Send to guest code (driver)
# Cut portions that implements userspace functions or require userspace libraries
sed -n '/\/\/cut/,/\/\/cut/{/\/\/cut/!{/\/\/cut/!p}}' /home/giacomo/eBPF-injection/host_interface/bpf_injection_msg.h > /home/giacomo/eBPF-injection/shared/driver/bpf_injection_msg.h

# Copy to guest daemon directory
cp /home/giacomo/eBPF-injection/host_interface/bpf_injection_msg.h /home/giacomo/eBPF-injection/shared/daemon_bpf/bpf_injection_msg.h


