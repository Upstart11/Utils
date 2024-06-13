#!/bin/bash

# Function to get the current cache size in kilobytes
get_cache_size() {
    grep -i '^Cached:' /proc/meminfo | awk '{print $2}'
}

# Cache size threshold in kilobytes (4GB = 4 * 1024 * 1024 KB)
THRESHOLD=$((10 * 1024 * 1024))

# Get the current cache size
CACHE_SIZE=$(get_cache_size)

# Check if the cache size exceeds the threshold
if [ "$CACHE_SIZE" -gt "$THRESHOLD" ]; then
    # Clear the cache
    sudo sync
    sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'
    echo "Cache cleared. Cache size was: $((CACHE_SIZE / 1024)) MB"
fi