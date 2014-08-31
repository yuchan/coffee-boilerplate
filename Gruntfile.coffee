module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      compileJoined:
        options:
          join: true
        files:
          'build/main.js': ['src/jslib/*.coffee']
          'build/mylib.js': ['src/nodelib/*.coffee']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-sass';
  return
