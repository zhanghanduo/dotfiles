#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./build-essentials.sh

# Install Nvidia Driver (Optional)
./nvidia.sh

# Install git
./git.sh

# Install nodejs
# ./../nvm.sh
# ./browsers.sh
./compression_tools.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
# ./../npm.sh
# ./tmux.sh
./../vim.sh

./cleanup.sh
