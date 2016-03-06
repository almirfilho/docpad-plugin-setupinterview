module.exports = (grunt) ->
  grunt.registerTask 'test', 'Runs all tests.', [
    'mochaTest',
    'shell:docpad_test'
  ]

  grunt.registerTask 'build', 'Build the plugin. (outputs in /out)', [
    'test',
    'shell:docpad_compile'
    'copy'
  ]
  
  grunt.registerTask 'dev', 'Watches for changes and runs tests.', [
    'watch'
  ]
  
  grunt.registerTask 'default', 'Shows this help message.', [
    'availabletasks'
  ]
