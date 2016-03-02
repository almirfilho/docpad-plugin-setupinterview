format = require './lib/formatter'

module.exports = (BasePlugin) ->
  class SetupInterviewPlugin extends BasePlugin
    name: 'setupinterview'
    render: (opts) ->
      {inExtension, outExtension, file} = opts

      if inExtension in ['html'] and outExtension in ['setup', null]
        opts.content = format opts.content

      return
