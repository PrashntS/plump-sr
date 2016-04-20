#!/usr/bin/env coffee
# Mr. Plump Senior

module.exports = config:
  paths:
    watched: ['plumpsr']

  plugins:
    autoReload:
      enabled: yes
    coffeelint:
      pattern: /^plumpsr\/.*\.(coffee)$/
      useCoffeelintJson: yes

  npm:
    enabled: yes
    styles:
      'normalize.css': [
        'normalize.css'
      ]

  modules:
    nameCleaner: (path) ->
      path
        .replace /^plumpsr\//, ''
        .replace /\.coffee/, ''

  files:
    javascripts:
      joinTo:
        'js/libraries.js': /^(?!plumpsr\/)/
        'js/plumpsr.js': /^plumpsr\//
    stylesheets:
      joinTo:
        'css/libraries.css': /^(?!plumpsr\/)/
        'css/plumpsr.css': /^plumpsr\//
