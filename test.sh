#!/bin/bash

modules=("base" "share")

for_module() {
  local module
  for module in "${modules[@]}";do
    eval "${@//"{}"/${module}}"
  done
}


for_module "cat ./module/{}/testfile"

