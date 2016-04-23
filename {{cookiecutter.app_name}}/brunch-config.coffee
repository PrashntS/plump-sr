#!/usr/bin/env coffee
# {{project_name}}

module.exports = config:
  paths:
    watched: ['{{cookiecutter.app_name}}']

  plugins:
    autoReload:
      enabled: yes
    coffeelint:
      pattern: /^{{cookiecutter.app_name}}\/.*\.(coffee)$/
      useCoffeelintJson: yes
    jaded:
      staticPatterns: /^{{cookiecutter.app_name}}\/markup\/(.*)\.jade$/

  npm:
    enabled: yes
    styles:
      'normalize.css': [
        'normalize.css'
      ]

  modules:
    nameCleaner: (path) ->
      path
        .replace /^{{cookiecutter.app_name}}\//, ''
        .replace /\.coffee/, ''

  files:
    javascripts:
      joinTo:
        'js/libraries.js': /^(?!{{cookiecutter.app_name}}\/)/
        'js/app.js': /^{{cookiecutter.app_name}}\//
    stylesheets:
      joinTo:
        'css/libraries.css': /^(?!{{cookiecutter.app_name}}\/)/
        'css/app.css': /^{{cookiecutter.app_name}}\//
