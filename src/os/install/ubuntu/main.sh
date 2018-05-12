#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./build-essentials.sh

# ./browsers.sh
# ./compression_tools.sh
./git.sh
# ./image_tools.sh
# ./misc.sh
./tmux.sh
#./../vim.sh
./misc_tools.sh

#./nvidia.sh

./zsh.sh

./cleanup.sh



