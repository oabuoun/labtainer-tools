#!/usr/bin/env bash

mkdir -p ${HOME}/.local/share/labtainers

cd ${HOME}/labtainer/labtainer-student

echo "=== `date` : Start Adding Labtainer Labs ==="
imodule https://raw.githubusercontent.com/oabuoun/labtainer-imodules/master/imodules/sparta-firewall.tar
imodule https://raw.githubusercontent.com/oabuoun/labtainer-imodules/master/imodules/sparta-nat.tar
imodule https://raw.githubusercontent.com/oabuoun/labtainer-imodules/master/imodules/sparta-networking-basics.tar
imodule https://raw.githubusercontent.com/oabuoun/labtainer-imodules/master/imodules/sparta-port-forwarding.tar
imodule https://raw.githubusercontent.com/oabuoun/labtainer-imodules/master/imodules/sparta-routing-basics.tar
imodule https://raw.githubusercontent.com/oabuoun/labtainer-imodules/master/imodules/sparta-vpn.tar
imodule https://raw.githubusercontent.com/oabuoun/labtainer-imodules/master/imodules/sparta-vpn2.tar
imodule https://raw.githubusercontent.com/oabuoun/labtainer-imodules/master/imodules/sparta-vpn3.tar
imodule https://raw.githubusercontent.com/oabuoun/labtainer-imodules/master/imodules/sparta-vpn4.tar
