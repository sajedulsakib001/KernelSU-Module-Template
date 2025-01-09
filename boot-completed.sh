#!/system/bin/sh

# Check if KernelSU is enabled
if [ -e /dev/kernelsu ]; then
    echo "KernelSU detected. Executing swapfile setup..."
    su -c "swapon swapfile"
else
    echo "KernelSU not detected. Skipping..."
fi