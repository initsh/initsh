#!/bin/bash
v_epel_dir='http://dl.fedoraproject.org/pub/epel/6/x86_64/'
v_epel_url="${v_epel_dir}$(curl -LRs $v_epel_dir | sed -r -e '/epel-release/!d' -e 's/^.*href="(epel-release.*\.rpm)".*$/\1/g')"
yum -y install yum-utils "${v_epel_url}"
yum-config-manager --disable epel*

#EOF
