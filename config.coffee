exports.config =
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^bower_components/
    stylesheets:
      joinTo: 'styles/app.css'
    templates:
      joinTo: 'js/templates.js'