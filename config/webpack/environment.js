const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery',
    'window.Tether': "tether",
    Popper: ['popper.js', 'default']
  })
)

const aliasConfig = {
  'jquery': 'jquery/src/jquery',
};

environment.config.set('resolve.alias', aliasConfig);

module.exports = environment
