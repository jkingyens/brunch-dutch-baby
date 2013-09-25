template = require 'templates/navbar'
menu_1 = require 'views/menu_1'
menu_2 = require 'views/menu_2'
menu_3 = require 'views/menu_3'

NavBar = Backbone.View.extend

  initialize: (options) ->
    @menu_1_view = new menu_1()
    @menu_2_view = new menu_2()
    @menu_3_view = new menu_3()

    options.router.on 'route:menu_1', () =>
      @page = 'menu_1'
      @render()

    options.router.on 'route:menu_2', () =>
      @page = 'menu_2'
      @render()

    options.router.on 'route:menu_3', () =>
      @page = 'menu_3'
      @render()

  render: () ->
    if not @page then @page = Backbone.history.fragment
    if @page is '' then @page = 'menu_1'
    @$el.html template page: @page
    @["#{@page}_view"].setElement(@$('.content-body')).render()
    @el

module.exports = NavBar