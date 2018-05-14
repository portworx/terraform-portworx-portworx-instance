#!/bin/sh
set -e

# Create get.portworx command

CMD='sh -s -- '

if [ ! -z "${device_args}" ]; then
    CMD="$CMD ${device_args}"
fi

if [ ! -z "${clusterID}" ]; then
    CMD="$CMD -c ${clusterID}"
fi

if [ ! -z "${kvdb}" ]; then
    CMD="$CMD -k ${kvdb}"
fi

if [ ! -z "${data_if}" ]; then
    CMD="$CMD -d ${data_if}"
fi

if [ ! -z "${mgmt_if}" ]; then
    CMD="$CMD -m ${mgmt_if}"
fi

if [ ! -z "${journal_dev}" ]; then
    CMD="$CMD -j ${journal_dev}"
fi

if [ ! -z "${scheduler}" ]; then
    CMD="$CMD -x ${scheduler}"
fi

if [ ! -z "${token}" ]; then
    CMD="$CMD -t ${token}"
fi

if [ ! -z "${force_use}" ]; then
    CMD="$CMD -f"
fi

if [ ! -z "${zero_storage}" ]; then
    CMD="$CMD -z"
fi

if [ ! -z "${env_list}" ]; then
    CMD="$CMD ${env_list}"
fi

if [ ! -z "${secret_type}" ]; then
    CMD="$CMD -secret_type ${secret_type}"
fi

if [ ! -z "${cluster_secret_key}" ]; then
    CMD="$CMD -cluster_secret_key ${cluster_secret_key}"
fi

echo "CMD = $CMD"
sh -c "curl -fsSL https://get.portworx.com | $CMD"
