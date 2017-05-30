const path = require('path');

const HtmlWebpackPlugin = require('html-webpack-plugin');
const webpack = require('webpack');

const HtmlWebpackPluginConfig = new HtmlWebpackPlugin({
  template: './src/index.html',
  filename: 'index.html',
  inject: 'body'
});

module.exports = {
  devtool: 'inline-source-map',
  devServer: {
    hot: true,
    disableHostCheck: true,
    host: '0.0.0.0',
    proxy: {
      '*': 'http://0.0.0.0:8080/dist/'
    },
    publicPath: '/'
  },

  entry: [
    'react-hot-loader/patch',

    // must be a host accessible from the client
    'webpack-dev-server/client?http://vm:8080',

    'webpack/hot/only-dev-server',
    './src/index.js'
  ],

  output: {
    path: path.resolve('dist'),
    filename: 'index_bundle.js',
    publicPath: '/'
  },

  module: {
    loaders: [
      { test: /\.js$/, use: ['babel-loader'], exclude: /node_modules/ },
      { test: /\.css$/, use: ['style-loader', 'css-loader?modules'], exclude: /node_modules/ }
    ]
  },

  plugins: [
    HtmlWebpackPluginConfig,
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NamedModulesPlugin(),
  ]
}
