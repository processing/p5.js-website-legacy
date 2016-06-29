'use strict';

// # Globbing
// for performance reasons we're only matching one level down:
// '<%= config.src %>/templates/pages/{,*/}*.hbs'
// use this if you want to match all subfolders:
// '<%= config.src %>/templates/pages/**/*.hbs'

module.exports = function(grunt) {

  require('time-grunt')(grunt);
  require('load-grunt-tasks')(grunt);

  // Project configuration. actual tasks
  grunt.initConfig({

    config: {
      src: 'src',
      dist: 'dist'
    },

    watch: {
      assemble: {
        files: ['<%= config.src %>/{content,data,templates}/{,*/}*.{md,hbs,yml,json}'],
        tasks: ['assemble']
      },
      livereload: {
        options: {
          livereload: '<%= connect.options.livereload %>'
        },
        files: [
          '<%= config.dist %>/{,*/}*.html',
          '<%= config.dist %>/assets/css/*.css',
          '<%= config.dist %>/assets/js/*.js',
          '<%= config.dist %>/assets/img/*.{png,jpg,jpeg,gif,webp,svg}',
          '<%= config.dist %>/assets/p5_featured/{,*/}*.*'
        ]
      }
    },

    // runs the local server
    connect: {
      options: {
        port: 9000,
        livereload: 35729,
        // change this to '0.0.0.0' to access the server from outside
        hostname: 'localhost'
      },
      livereload: {
        options: {
          open: true,
          base: [
            '<%= config.dist %>'
          ]
        }
      }
    },

    assemble: {
      pages: {
        options: {
          expand: true,
          flatten: true,
          helpers: ['<%= config.dist %>/assets/js/translation.js'],
          assets: '<%= config.dist %>/assets',
          layout: '<%= config.src %>/templates/layouts/default.hbs',
          data: '<%= config.src %>/data/**/*.{json,yml}',
          partials: '<%= config.src %>/templates/partials/*.hbs',
          plugins: [
            'assemble-contrib-permalinks',
            'assemble-contrib-i18n'
          ],
          i18n: {
            languages: [
              'en',
              'es'
            ],
            templates: [
              "src/templates/pages/**/*.hbs",
            ]
          },
          permalinks: {
            structure: ':lang/:slug/:base:ext',
            patterns: [
              {
                pattern: ':lang',
                replacement: function () {
                  return this.language === 'en' ? '' : this.language;
                }
              },
              {
                pattern: ':base',
                replacement: function () {
                  var i = this.basename.indexOf('-');
                  return this.basename.substring(0, i);
                }
              }
            ]
          }
        },
        dest: '<%= config.dist %>',
        src: "!*.*"
      }
    },



    copy: {
      bootstrap: {
        expand: true,
        cwd: 'bower_components/bootstrap/dist/',
        src: '**',
        dest: '<%= config.dist %>/assets/'
      },
      theme: {
        expand: true,
        cwd: 'src/assets/css',
        src: '**',
        dest: '<%= config.dist %>/assets/css/'
      },
      images: {
        expand: true,
        cwd: 'src/assets/img',
        src: '**',
        dest: '<%= config.dist %>/assets/img/'
      },
      js: {
        expand: true,
        cwd: 'src/assets/js',
        src: '**',
        dest: '<%= config.dist %>/assets/js/'
      },
      fonts: {
        expand: true,
        cwd: 'src/assets/fonts',
        src: '**',
        dest: '<%= config.dist %>/assets/fonts'
      },
      p5_featured: {
        expand: true,
        cwd: 'src/assets/p5_featured',
        src: '**',
        dest: '<%= config.dist %>/assets/p5_featured'
      },
      examples: {
        expand: true,
        cwd: 'src/templates/pages/examples/examples_src',
        src: '**',
        dest: '<%= config.dist %>/examples/examples_src'
      },
      example: {
        expand: true,
        cwd: 'src/templates/pages/examples/examples/',
        src: ['example.html', 'assets/'],
        dest: '<%= config.dist %>/examples/examples'
      },
      demos: {
        expand: true,
        cwd: 'src/templates/pages/examples/demos_src',
        src: '**',
        dest: '<%= config.dist %>/examples/demos_src'
      }
    },

    // Before generating any new files,
    // remove any previously-created files.
    clean: ['<%= config.dist %>/**/*.*']

  });

  grunt.loadNpmTasks('assemble');


  // multi-tasks: collections of other tasks
  grunt.registerTask('server', [
    'build',
    'connect:livereload',
    'watch'
  ]);

  // runs three tasks in order
  grunt.registerTask('build', [
    'clean',
    'copy',
    'assemble'
  ]);

  // runs with just grunt command
  grunt.registerTask('default', [
    'build'
  ]);

};
