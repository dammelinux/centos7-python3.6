#!/bin/bash
yum -y install centos-release-scl-rh centos-release-scl
yum --enablerepo=centos-sclo-rh -y install rh-python36
scl enable rh-python36 bash
python -V
which python