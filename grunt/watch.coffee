module.exports = (grunt) ->
  grunt.config 'watch',
    tests:
      files: ['test/unit/**/*.coffee', 'src/lib/**/*.coffee']
      tasks: 'mochaTest'
