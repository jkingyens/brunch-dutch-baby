exports.config =
  files:
    javascripts:
      joinTo:
        'app.js': /^app/
        'vendor.js': /^bower_components/
      order:
        after: [
          'index.coffee'
        ]
    stylesheets:
      joinTo:
        'styles/app.css': /^app/
      order:
        before: [
          'bootstrap/less/bootstrap.less'
        ]
    templates:
      joinTo: 'templates.js'