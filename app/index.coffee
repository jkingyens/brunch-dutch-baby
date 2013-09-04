router = require 'router'
theRouter = new router

$ () ->
  Backbone.history.start pushState: true