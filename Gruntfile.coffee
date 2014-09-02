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
          bundleExec: true
          environment: 'production'
      dev:
        options:
          sassDir: 'assets/sass'
          cssDir: 'public/css'
          bundleExec: true
    haml:
      dist:
        options:
          bundleExec: true
        files:
          'public/index.html': 'assets/index.haml'
    watch:
      coffee:
        files: ['assets/javascript/*.coffee', 'assets/nodejs/*.coffee']
        tasks: ['coffee:compileJoined']
      compass:
        files: 'assets/sass/*.sass'
        tasks: ['compass:dev']
      haml:
        files: 'assets/*.haml'
        tasks: ['haml:dist']
      options:
        livereload: true

  grunt.loadNpmTasks 'grunt-contrib-haml'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-compass';

  grunt.registerTask 'default', ['coffee','compass:dist','haml:dist']
  return
