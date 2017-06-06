const webpack = require('webpack');

const config = require('./webpack.config');

config.devtool = 'inline-source-map';

config.devServer = {
  hot: true,
  disableHostCheck: true,
  host: '0.0.0.0',
  proxy: {
    '*': 'http://0.0.0.0:8080/dist/'
  },
  publicPath: '/'
};

config.entry = [
  'react-hot-loader/patch',

  // must be a host accessible from the client
  'webpack-dev-server/client?http://vm:8080',

  'webpack/hot/only-dev-server',
  './src/index.tsx'
];

config.module.rules[0].use = [
  'react-hot-loader/webpack',
  'awesome-typescript-loader'
];

module.exports = config;
