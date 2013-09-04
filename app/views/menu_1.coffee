template = require 'templates/menu_1'

Menu = Backbone.View.extend

  initialize: () ->

  render: () ->
    @$el.html template()
    @el

module.exports = Menu