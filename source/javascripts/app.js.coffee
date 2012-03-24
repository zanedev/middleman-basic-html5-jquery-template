# adapted from coffeescript cookbook http://coffeescriptcookbook.com singleton pattern
root = exports ? this # http://stackoverflow.com/questions/4214731/coffeescript-global-variables

# The publicly accessible Singleton fetcher
class root.MyApp
  _instance = undefined # Must be declared here to force the closure on the class
  @get: (args) -> # Must be a static method
    _instance ?= new _MyApp args

# The actual Singleton class
class _MyApp
  constructor: (@args) ->

  init: ->
    @args

jQuery ->
  a = root.MyApp.init 'hello coffeescript!'
  alert a.echo()