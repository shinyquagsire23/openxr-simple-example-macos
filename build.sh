#!/bin/zsh
CWD=$(pwd)
cd ../monado/build && make && \
cd $CWD && \
cd build && make && cd $CWD && \
XR_RUNTIME_JSON=/Users/maxamillion/workspace/monado/build/openxr_monado-dev.json OXR_DEBUG_GUI=0 MVK_CONFIG_RESUME_LOST_DEVICE=1 ./build/openxr-example
#XR_RUNTIME_JSON=/Users/maxamillion/workspace/monado/build/openxr_monado-dev.json OXR_DEBUG_GUI=0 MVK_CONFIG_RESUME_LOST_DEVICE=1 lldb -o run ./build/openxr-example