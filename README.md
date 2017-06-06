http://michaeljb.github.io/legendary-countdown/

[![Build Status](https://travis-ci.org/michaeljb/legendary-countdown.svg?branch=rewrite)](https://travis-ci.org/michaeljb/legendary-countdown)

## Development

* `./dev-server.sh start` - start a Docker container with webpack-dev-server
  running and the repo directory mounted at `/app`

* `./dev-server.sh attach` - start a bash shell on the container started by
  `dev-server.sh start`; from here, use `yarn run $SCRIPT` to run the scripts
  defined in `package.json`

* `./bundle.sh` - create `dist/index.html` and `dist/bundle.js`
