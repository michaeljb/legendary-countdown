const path = require('path');

const HtmlWebpackPlugin = require('html-webpack-plugin');
const webpack = require('webpack');

const HtmlWebpackPluginConfig = new HtmlWebpackPlugin({
  template: './src/index.html',
  filename: 'index.html',
  inject: 'body'
});

module.exports = {
  entry: [
    './src/index.tsx'
  ],

  output: {
    path: path.resolve('dist'),
    filename: 'bundle.js',
    publicPath: './'
  },

  module: {
    rules: [
      {
	test: /\.tsx?$/,
	loader: 'awesome-typescript-loader',
	exclude: /node_modules/
      },
      {
	test: /\.js$/,
	loader: 'source-map-loader',
	enforce: 'pre',
	exclude: /node_modules/
      },
      {
	test: /\.css$/,
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
