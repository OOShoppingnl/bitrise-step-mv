#!/bin/bash
set -e
set -x
mv $mv_from $mv_to
envman add --key NEW_LOCATION -- value $mv_to