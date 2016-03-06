module.exports = (grunt) ->
  grunt.config 'watch',
    lib:
      tasks: 'mochaTest'
      files: [
        'test/unit/**/*.coffee'
        'src/lib/**/*.coffee'
        'src/template/**/*'
      ]

    docpad_test:
      tasks: 'shell:docpad_test'
      files: [
        'test/src/**/*'
        'test/out-expected/**/*'
        'src/setupinterview.*.coffee'
      ]
