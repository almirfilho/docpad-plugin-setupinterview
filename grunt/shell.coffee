module.exports = (grunt) ->
  grunt.config 'shell',
    docpad_test:
      command: './node_modules/coffee-script/bin/cake test'

    docpad_compile:
      command: './node_modules/coffee-script/bin/cake compile'
