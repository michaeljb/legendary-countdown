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
    './src/index.tsx'
  ],

  output: {
    path: path.resolve('dist'),
    filename: 'index_bundle.js',
    publicPath: '/'
  },

  module: {
    rules: [
      {
	test: /\.tsx$/,
	use: 'awesome-typescript-loader',
	exclude: /node_modules/
      },
      {
	test: /\.tsx$/,
	loader: 'source-map-loader',
	exclude: /node_modules/,
	enforce: 'pre'
      },
      {
	test: /\.js$/,
	loader: 'source-map-loader',
	enforce: 'pre',
	exclude: /node_modules/
      },
      {
	test: /\.css$/,
	use: ['typings-for-css-modules-loader'],
	include: path.join(__dirname, 'src/components'),
	exclude: /node_modules/,
	use: [
	  'style-loader',
	  {
	    loader: 'typings-for-css-modules-loader',
	    options: {
	      modules: true,
	      namedExport: true
	    }
	  }
	]
      }
    ]
  },

  resolve: {
    extensions: ['.ts', '.tsx', '.js', '.json', '.css']
  },

  plugins: [
    HtmlWebpackPluginConfig,
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NamedModulesPlugin(),
  ]
}
