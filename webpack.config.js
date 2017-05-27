var path = require('path');

module.exports = {
  devServer: {
    disableHostCheck: true,
    host: '0.0.0.0',
    publicPath: 'http://0.0.0.0:8080/dist/'
  },

  entry: './src/index.js',

  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js'
  }
}
