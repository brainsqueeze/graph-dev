#!/bin/bash

jupyter \
    notebook \
    --NotebookApp.kernel_manager_class=notebook.services.kernels.kernelmanager.AsyncMappingKernelManager \
    ./notebooks \
    --ip=* --no-browser --allow-root