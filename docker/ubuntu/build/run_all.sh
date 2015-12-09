#!/bin/bash

( ./00_remove_old_images.sh && ./01_build.sh && ./02_install.sh && ./03_initialize.sh && ./04_run.sh ) | tee run_all.log
