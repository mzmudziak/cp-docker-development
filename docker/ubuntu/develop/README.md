Developing Zen Using Docker under Ubuntu
========================================

This downloads docker files with preconfigured images and starts the zen platform.
Everything until [localdev init](https://github.com/CoderDojo/cp-local-development#localdev-init) has been done, already.

1. Run [`01_initialize.sh`](01_initialize.sh) to download the images and initialize the modules. This executes [localdev init](https://github.com/CoderDojo/cp-local-development#localdev-init). 
2. Run [`02_run.sh`](02_run.sh) to [start the zen service](https://github.com/CoderDojo/cp-local-development#localdev-run). Visit [localhost:8000](http://localhost:8000) when it started.
3. Run [`03_testdata.sh`](03_testdata.sh) to [inject the test data](https://github.com/CoderDojo/cp-local-development#test-data) into the zen platform.

Since Zen is up and running now, you can [start developing](https://github.com/CoderDojo/cp-local-development#making-code-changes-and-working-locally).

