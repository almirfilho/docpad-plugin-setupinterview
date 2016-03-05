module.exports = (grunt) ->
  grunt.config 'copy',
    templates:
      files: [
        expand: true
        cwd: 'src/template/'
        src: '**'
        dest: 'out/template/'
      ]
