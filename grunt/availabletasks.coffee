module.exports = (grunt) ->
  grunt.config 'availabletasks',
    tasks:
      options:
        sort: ['dev', 'test', 'build']
        showTasks: ['user']
