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
    banner: '/* p5js.org */',
    config: {
      src: 'src',
      dist: 'dist'
    },
    exec: {
      build_examples: 'node <%= config.src %>/data/examples/build_examples/build.js <%= config.src %>/templates/pages/examples/'
    },
    watch: {
      assemble: {
        files: '<%= config.src %>/{content,data,templates}/{,*/}*.{md,hbs,yml,json}',
        tasks: ['assemble']
      },
      css: {
        files: '<%= config.src %>/assets/css/*.css',
        tasks: [
          'concat:dist',
          // 'uncss',
          'postcss'
        ]
      },
      js: {
        files: '<%= config.src %>/assets/js/*.js',
        tasks: ['uglify']
      },
      imagemin: {
        files: '<%= config.dist %>/assets/img/*.{png,jpg,jpeg,gif,svg}',
        tasks: ['newer:imagemin']
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

    // Local server:
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

    // HTML:
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
              "<%= config.src %>/templates/pages/**/*.hbs",
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
                  var check = this.basename.substring(this.basename.length-3);
                  if (check === '-'+this.language) {
                    return this.basename.substring(0, this.basename.length-3);
                  } else return this.basename;
                }
              }
            ]
          }
        },
        dest: '<%= config.dist %>',
        src: "!*.*"
      }
    },

    // Images:
    imagemin: {
      images: {
        options: {
          optimizationLevel: 7
        },
        files: [{
          expand: true,
          cwd: '<%= config.src %>/assets/img',
          src: ['**/*.{png,jpg,gif,svg}'],
          dest: '<%= config.dist %>/assets/img/'
        }]
      }
    },

    // CSS:
    concat: {
      options: {
        separator: ';',
      },
      dist: {
        src: [
          '<%= config.src %>/assets/css/normalize.css',
          '<%= config.src %>/assets/css/main.css',
          '<%= config.src %>/assets/css/prism.css'
        ],
        dest: '<%= config.dist %>/assets/css/all.css'
      }
    },
    // uncss: {
    //   dist: {
    //     options: {
    //       report: 'gzip',
    //       timeout: 5000
    //     },
    //     files: [{
    //       nonull: false,
    //       src: [
    //         'http://localhost:9000/get-started/index.html',
    //         'http://localhost:9000/examples/structure-coordinates.html',
    //         '<%= config.dist %>/**/*.html',
    //         '!<%= config.dist %>/es/**',
    //         '!<%= config.dist %>/assets/**'
    //       ],
    //       dest: '<%= config.dist %>/assets/css/all.css'
    //     }]
    //   },
    // },
    postcss: {
      options: {
        map: true,
        map: {
          inline: false,
          annotation: '<%= config.dist %>/assets/css/maps/'
        },
        processors: [
          require('autoprefixer')({browsers: [
            "Android 2.3",
            "Android >= 4",
            "Chrome >= 20",
            "Firefox >= 24",
            "Explorer >= 8",
            "iOS >= 6",
            "Opera >= 12",
            "Safari >= 6"
          ]}),
          require('cssnano')()
        ]
      },
      dist: {
        src: '<%= config.dist %>/assets/css/all.css'
      }
    },

    // JavaScript:
    uglify: {
      p5js: {
        options: {
          banner: '/* p5js.org */',
          mangle: {
            except: ['p5']
          },
          sourceMap: true,
          sourceMapName: '<%= config.dist %>/assets/js/maps/p5.all.js.map',
          compress: {
            drop_console: true
          },
          concat: {
            options: {
              separator: ';'
            }
          }
        },
        files: {
          '<%= config.dist %>/assets/js/p5.all.js': [
            '<%= config.src %>/assets/js/p5.min.js',
            '<%= config.src %>/assets/js/p5.dom.js',
            '<%= config.src %>/assets/js/p5.sound.js'
          ]
        }
      },
      all: {
        options: {
          banner: '/* p5js.org */',
          mangle: {
            except: ['jQuery', '$', 'examples', 'renderCode', 'Prism']
          },
          sourceMap: true,
          sourceMapName: '<%= config.dist %>/assets/js/maps/all.js.map',
          compress: {
            drop_console: true
          }
        },
        files: {
          '<%= config.dist %>/assets/js/all.js': [
            '<%= config.src %>/assets/js/vendor/jquery-1.9.1.min.js',
            '<%= config.src %>/assets/js/vendor/ace-nc/ace.js',
            '<%= config.src %>/assets/js/vendor/ace-nc/mode-javascript.js',
            '<%= config.src %>/assets/js/vendor/prism.js',
            // '<%= config.src %>/assets/js/vendor/galleria.js',
            '<%= config.src %>/assets/js/main.js',
            '<%= config.src %>/assets/js/logo.js',
            '<%= config.src %>/assets/js/scroll.js',
            '<%= config.src %>/assets/js/examples.js',
            '<%= config.src %>/assets/js/render.js'
          ]
        }
      },
      init: {
        options: {
          banner: '/* p5js.org */',
          sourceMap: true,
          sourceMapName: '<%= config.dist %>/assets/js/maps/init.js.map',
          compress: {
            drop_console: true
          }
        },
        files: {
          '<%= config.dist %>/assets/js/init.js': [
            '<%= config.src %>/assets/js/init.js'
          ]
        }
      }
    },

    // Data handling:
    copy: {
      js: {
        expand: true,
        cwd: '<%= config.src %>/assets/js',
        src: '**',
        dest: '<%= config.dist %>/assets/js/'
      },
      fonts: {
        expand: true,
        cwd: '<%= config.src %>/assets/css/fonts',
        src: '**',
        dest: '<%= config.dist %>/assets/css/fonts'
      },
      p5_featured: {
        expand: true,
        cwd: '<%= config.src %>/assets/p5_featured',
        src: '**',
        dest: '<%= config.dist %>/assets/p5_featured'
      },
      examples: {
        expand: true,
        cwd: '<%= config.src %>/data/examples/',
        src: ['**', '!build_examples/**' ],
        dest: '<%= config.dist %>/assets/examples'
      }
    },

    // Before generating any new files,
    // remove any previously-created files.
    clean: {
      assets: [
        '<%= config.dist %>/**/*.*',
        '!<%= config.dist %>/assets/img/**.*',
        '!<%= config.dist %>/assets/img/**/*.*'
      ]
    }

  });

  grunt.loadNpmTasks('grunt-exec');
  grunt.loadNpmTasks('assemble');

  // multi-tasks: collections of other tasks
  grunt.registerTask('server', [
    'build',
    'connect:livereload',
    'watch'
  ]);

  grunt.registerTask('run', [
    'connect:livereload',
    'watch'
  ]);

  // optimize assets
  grunt.registerTask('optimize', [
    'newer:imagemin',
    'concat:dist',
    // 'uncss',
    'postcss',
    'uglify'
  ]);

  // runs three tasks in order
  grunt.registerTask('build', [
    'exec',
    'clean',
    'copy',
    'assemble',
    'optimize'
  ]);

  // runs with just grunt command
  grunt.registerTask('default', [
    'build'
  ]);

};
