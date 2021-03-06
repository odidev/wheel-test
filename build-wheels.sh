#!/bin/bash
set -e -u -x

cd /io/
rm -rf /io/wheelhouse
mkdir /io/wheelhouse
yum update -y
/opt/python/cp39-cp39/bin/python3.9 /io/setup.py bdist_wheel
cp /io/dist/*.whl /io/
for whl in /io/*_aarch64.whl; do
	auditwheel repair $whl --plat "manylinux2014_aarch64" -w /io/
done
/opt/python/cp39-cp39/bin/pip3.9 install /io/*-manylinux2014_aarch64.whl
