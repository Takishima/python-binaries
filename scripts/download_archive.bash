#! /bin/bash

pkg_name=$1
shift
pkg_version=$1
shift
pkg_ext=$1
shift
pkg_hash=$1
shift

wget https://files.pythonhosted.org/packages/${pkg_hash}/${pkg_name}-${pkg_version}.${pkg_ext}

if [ -f ${pkg_name}-${pkg_version}.zip ]; then
    unzip ${pkg_name}-${pkg_version}.zip
elif [ -f ${pkg_name}-${pkg_version}.tar.gz ]; then
    tar xf ${pkg_name}-${pkg_version}.tar.gz
fi
