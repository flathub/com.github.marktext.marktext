#!/bin/bash

# We need to disable Chromiums sandbox due flatpak#3044. This should be ok
# because Mark Text don't use the renderer sandbox.
/app/marktext/marktext --no-sandbox "$@"
exit $?
