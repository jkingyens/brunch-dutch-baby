template = require 'templates/navbar'
menu_1 = require 'views/menu_1'
menu_2 = require 'views/menu_2'
menu_3 = require 'views/menu_3'

NavBar = Backbone.View.extend

  initialize: () ->
    @menu_1_view = new menu_1()
    @menu_2_view = new menu_2()
    @menu_3_view = new menu_3()

  events:
    'click .navbar-brand'    : 'root'
    'click .menu-1-button'   : 'menu_1'
    'click .menu-2-button'   : 'menu_2'
    'click .menu-3-button'   : 'menu_3'

  render: () ->
    if not @page then @page = Backbone.history.fragment
    @$el.html template page: @page
    @["#{@page}_view"].setElement(@$('.content-body')).render()
    @el

  root: (e) ->
    e.preventDefault()
    @page = ''
    @options.router.navigate ''
    @render()

  menu_1: (e) ->
    e.preventDefault()
    @page = 'menu_1'
    @options.router.navigate 'menu_1'
    @render()

  menu_2: (e) ->
    e.preventDefault()
    @page = 'menu_2'
    @options.router.navigate 'menu_2'
    @render()

  menu_3: (e) ->
    e.preventDefault()
    @page = 'menu_3'
    @options.router.navigate 'menu_3'
    @render()

module.exports = NavBar