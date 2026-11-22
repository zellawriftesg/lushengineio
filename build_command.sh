#!/usr/bin/env bash
set -e
LIB="blazed-hose.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/zellawriftesg/lushengineio/releases/download/clever-ember-crimson-harbor/blazed-hose.a"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
