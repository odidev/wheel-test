#!/bin/bash
set -e -u -x

cd /io/
rm -f /io/wheelhouse/*
yum update -y
/opt/python/cp39-cp39/bin/python3.9 /io/setup.py bdist_wheel
cp /io/dist/*.whl /io/wheelhouse/
for whl in wheelhouse/*_aarch64.whl; do
	auditwheel repair $whl --plat "manylinux2014_aarch64" -w /io/wheelhouse/
done
/opt/python/cp39-cp39/bin/pip3.9 install /io/wheelhouse/*-manylinux2014_aarch64.whl
