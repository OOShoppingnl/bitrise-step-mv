#!/bin/bash
set -e
set -x

File_Name=$(basename "$mv_from")
Dir_Path="${mv_from/$File_Name}"
Dir_Path=${Dir_Path%?}

if [[ -d "$Dir_Path" ]]; then
  echo "$Dir_Path exists"
  else
  mkdir -p $Dir_Path
  echo "Created directory: $Dir_Path"
fi

mv $mv_from $mv_to

envman add --key NEW_LOCATION --value $mv_from
