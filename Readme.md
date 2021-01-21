# Simple OpenXR C Example

Note: Currently this example only supports Linux/X11.

This example is intended as a reference for writing a simple OpenXR applications.
Its main objective is being easy to follow, therefore it uses very few abstractions
and one very long main function.

For a similar, more abstracted example that exercises more of the OpenXR API, see
https://gitlab.freedesktop.org/monado/demos/openxr-simple-playground

# Code structure

## 1. Matrix Math

OpenXR returns Poses (Vector + Quaternion) for views and device locations instead of matrices.

A succinct selection of matrix math code from the OpenXR SDK is included in main_simple.c.

## 2: OpenXR related functions

Most of these functions are optional, but print useful information.

`get_swapchain_format()` is the only function that performs real work.
You should write your own version of this function to fit your needs.

## 3: Main

This is the code that directly interacts with the OpenXR API.

## 4: OpenGL rendering

Render a few colorful cubes around the HMD. Render green/red blocks for the controllers.

# Running

Unless the OpenXR runtime is installed in the file system, the `XR_RUNTIME_JSON` variable has to be set for the loader to know where to look for the runtime and how the runtime is named

    XR_RUNTIME_JSON=~/monado/build/openxr_monado-dev.json

then, you should be ready to run `./openxr-example`.

If you want to use API layers that are not installed in the default path, set the variable `XR_API_LAYER_PATH`

    XR_API_LAYER_PATH=/path/to/api_layers/

This will enable to loader to find api layers at this path and enumerate them with `xrEnumerateApiLayerProperties()`

API Layers can be enabled either with code or the loader can be told to enable an API layer with `XR_ENABLE_API_LAYERS`

    XR_ENABLE_API_LAYERS=XR_APILAYER_LUNARG_core_validation
