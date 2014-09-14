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
    stylus:
      compile:
        files:
          'public/css/main.css': 'assets/stylus/*.styl'
    jade:
      compile:
        options:
          data:
            debug: false
        files: "public/index.html": ["assets/templates/*.jade", "assets/index.jade"]
    watch:
      coffee:
        files: ['assets/javascript/*.coffee', 'assets/nodejs/*.coffee']
        tasks: ['coffee:compileJoined']
      stylus:
        files: 'assets/stylus/*.styl'
        tasks: ['stylus:compile']
      jade:
        files: 'assets/*.jade'
        tasks: ['jade:compile']
      options:
        livereload: true
    connect:
      server:
        options:
          port: 9000
          base: 'public'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-connect'

  grunt.registerTask 'default', ['coffee','stylus:compile','jade:compile']
  grunt.registerTask 'serve', ['coffee', 'stylus:compile', 'jade:compile', 'connect', 'watch']
  return
