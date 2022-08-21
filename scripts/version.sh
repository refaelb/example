#!/bin/bash

# TODO implement script to print full component version
# Script can be called either from Makefile (see Makefile)
# or from shell, or by another script using the 'version' bash function.
#
# Component version template: <VERSION>_rev-<REVISION><DIRTY>
# Where:
#  VERSION - SemVer2.0 string in the format <MAJOR>.<MINOR>.<PATCH> from the VERSION file
#  REVISION - Git short SHA1 of the repo
#  DIRTY - version "dirty" suffix ="-dirty" if the current status of of the git repository is "dirty" (*)
#
#  (*) It is considered a "dirty" state if one of the following conditions are true:
#      - uncommitted changes
#      - untracked files
#      - commit not in 'main' branch

usage() {
    echo "usage: $(basename "$0") [-hv]"
    echo "Get component full version string."
    echo "  Version format: <major>.<minor>.<patch>_rev-<revision><dirty>"
    echo "  Where:"
    echo "    VERSION - SemVer2.0 string in the format <MAJOR>.<MINOR>.<PATCH> from the VERSION file"
    echo "    REVISION - Git short SHA1 of the repo"
    echo "    DIRTY - version \"dirty\" suffix =\"-dirty\" if the current status of of the git repository is \"dirty\" (*)"
    echo ""
    echo "    (*) It is considered a \"dirty\" state if one of the following conditions are true:"
    echo "     - uncommitted changes"
    echo "     - untracked files"
    echo "     - commit not in 'main' branch"
    echo ""
    echo "  options:"
    echo "      -h|--help - display this help."
    echo "      -v|--verbose - set verbosity"
    echo "      --semver-only - print only the semver2.0 part of the version string"
    echo "      --revision-only - print only the revision part of the version string"
    echo "      --dirty-only - print only the dirty suffix if the repo is dirty"
    echo "      --long-revision - use long revision SHA1 instead of the default which is short"
    echo ""
}

semver() {
    # TODO
    echo "NA"
}

revision() {
    # TODO
    echo "NA"
}

dirty() {
    # TODO
    echo "-unknown"
}

version() {
    echo "$(semver)_rev-$(revision)$(dirty)"
}

# TODO add options support
version $@
