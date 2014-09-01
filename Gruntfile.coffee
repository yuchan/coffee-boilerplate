module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      compileJoined:
        options:
          join: true
        files:
          'public/js/main.js': ['assets/javascript/*.coffee']
          'public/js/mylib.js': ['assets/nodejs/*.coffee']
    compass:
      dist:
        options:
          sassDir: 'assets/sass'
          cssDir: 'public/css'
          environment: 'production'
      dev:
        options:
          sassDir: 'assets/sass'
          cssDir: 'public/css'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-compass';
  return
