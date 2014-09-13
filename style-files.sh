#!/bin/bash
# Style all verilog files in project directory and user's V file
iStyle --indent=tab --style=kr --suffix=".old~" --pad=all $@
# Requires https://code.google.com/p/istyle-verilog-formatter/
# iStyle does not always work correctly, but usually does
