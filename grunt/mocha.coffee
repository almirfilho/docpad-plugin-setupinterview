module.exports = (grunt) ->
  grunt.config 'mochaTest',
    lib:
      src: 'test/unit/**/*-test.coffee'
      options:
        reporter: 'nyan'
