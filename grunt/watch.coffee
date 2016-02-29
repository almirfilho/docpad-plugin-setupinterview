module.exports = (grunt) ->
  grunt.config 'watch',
    tests:
      files: 'test/unit/**/*.coffee'
      tasks: 'mochaTest'
