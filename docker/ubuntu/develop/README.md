Developing Zen Using Docker under Ubuntu
========================================

If you want to develop Zen using docker you first need to [install docker](..).

You can choose from the following scripts:

- [`run_zen_server.sh`](./run_zen_server.sh) runs the zen HTTP server.
- [`run_zen_bash.sh`](./run_zen_bash.sh) runs a bash shell in the zen docker container. You should exit it by typing "exit".

Both create a code folder at `../../code` (relative to this file) in which you can find the source code. `code` is the git repository [cp-local-development](https://github.com/CoderDojo/cp-local-development). Next read the [`code/README.md`](https://github.com/CoderDojo/cp-local-development/blob/master/README.md). 

See the [build](../build) directory to see what has been done for you. Essentially you can proceed with [making code changes and working locally](https://github.com/CoderDojo/cp-local-development/blob/master/README.md#making-code-changes-and-working-locally).

Useful Commands
---------------

When you are in the zen bash
- `./localdev.js run zen` to run the web server.
- `grep -r WORD` to search for a words in files
- `find . | grep FILE` to find a `FILE` in the folder `.`.
