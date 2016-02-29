module.exports = (grunt) ->
  grunt.config 'mochaTest',
    test:
      src: 'test/unit/**/*-test.coffee'
      options:
        reporter: 'nyan'
