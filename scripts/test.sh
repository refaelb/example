#!/bin/bash

# TODO implement script to test component is running and its version is valid using its '/health' endpoint.
# Script can be called either from Makefile (see Makefile)
# or from shell, or by another script using the 'test' bash function.
#
# Component health endpoint: /health
#  Example output:
#    > curl localhost:8080/health
#    {"status":"OK", "version":"0.1.0_rev-8fd1adf"}
#
# See scripts/version.sh for version info and examples.
#
# Test should pass if service health is OK and its version is valid and not dirty
#

usage() {
    echo "usage: $(basename "$0") [-hv]"
    echo "Test component health and version."
    echo "The test should pass if the service health is OK and its version is valid and not dirty."
    echo ""
    echo "  options:"
    echo "      -h|--help - display this help."
    echo "      -v|--verbose - set verbosity"
    echo "      --expected-version - expected version, optional. Default is the current version."
    echo ""
}

test() {
    echo "Not Implemented"
    # exit 1
}

# TODO add options support
test $@
