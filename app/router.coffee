navbar = require 'views/navbar'
user = require 'models/user'

Router = Backbone.Router.extend

  initialize: () ->

    @navbar = new navbar
      el: $('.root-view')
      model: new user
      router: @

  routes:
    ''            : 'menu_1'
    'menu_1'      : 'menu_1'
    'menu_2'      : 'menu_2'
    'menu_3'      : 'menu_3'

  menu_1: () ->
    @navbar.render()

  menu_2: () ->
    @navbar.render()

  menu_3: () ->
    @navbar.render()

module.exports = Router