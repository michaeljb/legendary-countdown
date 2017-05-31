http://michaeljb.github.io/legendary-countdown/

## Development

* `./dev-server.sh` - start a Docker container with webpack-dev-server running
  and the repo directory mounted at `/app`

* `./attach.sh` - start a bash shell on the container started by
  `dev-server.sh`; from here, use `yarn run $SCRIPT` to run the scripts defined
  in `package.json`
