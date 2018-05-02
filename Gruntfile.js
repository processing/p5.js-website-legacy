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
      imagemin: {
        files: '<%= config.src %>/assets/img/*.{png,jpg,jpeg,gif,svg,ico}',
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
          '<%= config.dist %>/assets/img/*.{png,jpg,jpeg,gif,webp,svg,ico}',
          '<%= config.dist %>/assets/p5_featured/{,*/}*.*',
          '<%= config.dist %>/assets/learn/{,*/}*.*'
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
          data: ['<%= config.src %>/data/**/*.{json,yml}', '!<%= config.src %>/data/reference/*.json'],
          partials: '<%= config.src %>/templates/partials/*.hbs',
          plugins: [
            'assemble-contrib-permalinks',
            'assemble-contrib-i18n'
          ],
          i18n: {
            languages: [
              'en',
              'es',
              'zh-Hans'
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
                  return this.language.toLowerCase() === 'en' ? '' : this.language.toLowerCase();
                }
              },
              {
                pattern: ':base',
                replacement: function () {
                  var check = this.basename.lastIndexOf(this.language.toLowerCase());
                  if (check > -1){
                    return this.basename.substring(0, check-1);
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
          optimizationLevel: 2
        },
        files: [{
          expand: true,
          cwd: '<%= config.src %>/assets/img',
          src: ['**/*.{png,jpg,gif,svg,ico}'],
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
      learn: {
        expand: true,
        cwd: '<%= config.src %>/assets/learn',
        src: '**',
        dest: '<%= config.dist %>/assets/learn'
      },
      examples: {
        expand: true,
        cwd: '<%= config.src %>/data/examples',
        src: ['**', '!build_examples/**' ],
        dest: '<%= config.dist %>/assets/examples'
      },
      reference: {
        expand: true,
        cwd: '<%= config.src %>/data/reference',
        src: ['**'],
        dest: '<%= config.dist %>/assets/reference'
      },
      reference_es: {
        expand: true,
        cwd: '<%= config.dist %>/reference',
        src: ['**'],
        dest: '<%= config.dist %>/es/reference'
      },
      offlineReference: {
        files: [
          {
            expand: true,
            cwd: '<%= config.dist %>/reference',
            src: 'assets/**/*',
            dest: '<%= config.src %>/offline-reference/'
          },
          {
            expand: true,
            cwd: '<%= config.src %>/assets',
            src: 'js/**/*',
            dest: '<%= config.src %>/offline-reference/'
          },
          {
            expand: true,
            cwd: '<%= config.src %>/assets',
            src: 'css/**/*',
            dest: '<%= config.src %>/offline-reference/'
          },
          {
            expand: true,
            cwd: 'offline-reference/extra',
            src: '**',
            dest: '<%= config.src %>/offline-reference/'
          }
        ]
      }
    },

    // Before generating any new files,
    // remove any previously-created files.
    clean: {
      assets: [
        '<%= config.dist %>/**/*.*',
        '!<%= config.dist %>/git-pull.php',
        '!<%= config.dist %>/**/reference/**/*.*',
        '!<%= config.dist %>/**/helpers/**/*.*',
        '!<%= config.dist %>/assets/img/**/*.*',
        '!<%= config.dist %>/assets/p5_featured/**/*.*',
        '!<%= config.dist %>/download/version*.json',
        '!<%= config.dist %>/download/*.php',
        '!<%= config.dist %>/learn/books/**/*.*',
        '<%= config.src %>/offline-reference/**/*.*'
      ]
    },

    file_append: {
      default_options: {
        files: [
          {
            prepend: "referenceData = ",
            input: '<%= config.dist %>/reference/data.json',
            output: '<%= config.src %>/offline-reference/js/data.js'
          }
        ]
      }
    },

    compress: {
      main: {
        options: {
          archive: '<%= config.dist %>/offline-reference/p5-reference.zip',
        },
        expand: true,
        cwd: '<%= config.src %>/offline-reference',
        src: ['**/*'],
        dest: 'p5-reference/'
      }
    }
  });

  grunt.loadNpmTasks('grunt-exec');
  grunt.loadNpmTasks('assemble');
  grunt.loadNpmTasks('grunt-file-append');
  grunt.loadNpmTasks('grunt-contrib-compress');

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
    'postcss'
  ]);

  // i18n tracking task
  grunt.registerTask('i18n', function(){
    var done = this.async();
    require("./i18n.js")(done);
  });

  // runs three tasks in order
  grunt.registerTask('build', [
    'exec',
    'clean',
    'copy',
    'assemble',
    'optimize',
    'file_append',
    'compress',
    'i18n'
  ]);

  // runs with just grunt command
  grunt.registerTask('default', [
    'build'
  ]);

};