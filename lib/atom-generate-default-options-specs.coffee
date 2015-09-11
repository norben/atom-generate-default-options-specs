{CompositeDisposable} = require 'atom'

module.exports = AtomGenerateDefaultOptionsSpecs =
  subscriptions: null

  config:
    specFileName:
      type: 'string'
      default: './spec/atom-generate-default-options-specs-spec.coffee'
      description: 'general : follows click order or not'


  activate: ->
    # Events subscribed to in atom's system can be cleaned up with this
    @subscriptions = new CompositeDisposable

    # Register commands
    @subscriptions.add atom.commands.add 'atom-workspace',
      'atom-generate-default-options-specs:genDefOptionsSpecs': => @genSpecs()
    @subscriptions.add atom.commands.add 'atom-workspace',
      'atom-generate-default-options-specs:activate': => @fakeActivate()


  deactivate: ->
    @subscriptions.dispose()


  fakeActivate: ->
    return ""


  genSpecs: ->
    console.log "That's a good start!"
