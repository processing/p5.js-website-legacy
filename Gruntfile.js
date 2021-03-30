'use strict';

// # Globbing
// for performance reasons we're only matching one level down:
// '<%= config.src %>/templates/pages/{,*/}*.hbs'
// use this if you want to match all subfolders:
// '<%= config.src %>/templates/pages/**/*.hbs'

const yaml = require('js-yaml');
const fs = require('fs').promises;
const fse = require('fs-extra');
const git = require('simple-git');
const pkg = require('./package.json');
const update_i18n = require('./updatei18nFiles.js');
const mozjpeg = require('imagemin-mozjpeg');
const pngquant = require('imagemin-pngquant');

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
      build_examples: 'node <%= config.src %>/data/examples/build_examples/build.js <%= config.src %>/templates/pages/examples/',
      build_libraries: 'node <%= config.src %>/data/libraries/build.js <%= config.src %>/templates/pages/libraries/',
      build_learn: 'node <%= config.src %>/data/learn/build.js <%= config.src %>/templates/pages/learn/'
    },
    watch: {
      assemble: {
        files: '<%= config.src %>/{content,data,templates}/**/*.{md,hbs,yml,json}',
        tasks: ['assemble']
      },
      css: {
        files: '<%= config.src %>/assets/css/*.css',
        tasks: [
          'concat:dist',
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
          '<%= config.dist %>/assets/learn/{,*/}*.*',
          '<%= config.dist %>/assets/contributor-docs/*.*'
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
          assets: '<%= config.dist %>/assets',
          helpers: ['helpers/translation.js', 'helpers/cache-busting.js'],
          layout: '<%= config.src %>/templates/layouts/default.hbs',
          data: [
            '<%= config.src %>/data/**/*.{json,yml}',
            '!<%= config.src %>/data/reference/*.json'
          ],
          partials: '<%= config.src %>/templates/partials/*.hbs',
          plugins: [
            'assemble-contrib-permalinks',
            'assemble-contrib-i18n'
          ],
          i18n: {
            languages: pkg.languages,
            templates: [
              '<%= config.src %>/templates/pages/**/*.hbs',
            ]
          },
          permalinks: {
            structure: ':lang/:slug/:base:ext',
            patterns: [
              {
                pattern: ':lang',
                replacement: function() {
                  return this.language.toLowerCase() === 'en' ? '' : this.language;
                }
              },
              {
                pattern: ':base',
                replacement: function () {
                  var check = this.basename.lastIndexOf(this.language.toLowerCase());
                  if (check > -1) {
                    return this.basename.substring(0, check - 1);
                  } else return this.basename;
                }
              }
            ]
          }
        },
        dest: '<%= config.dist %>',
        src: '!*.*'
      }
    },

    requirejs: {
      yuidoc_theme: {
        options: {
          baseUrl: '<%= config.src %>/yuidoc-p5-theme-src/scripts/',
          mainConfigFile: '<%= config.src %>/yuidoc-p5-theme-src/scripts/config.js',
          name: 'main',
          out: '<%= config.src %>/assets/js/reference.js',
          optimize: 'none',
          generateSourceMaps: false,
          findNestedDependencies: true,
          wrap: true,
          paths: {
            jquery: 'empty:'
          }
        }
      }
    },

    // Images:
    imagemin: {
      images: {
        options: {
          optimizationLevel: 2,
          use: [mozjpeg({quality: 70}), pngquant()] //plugins for jpeg & png image compression
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
        separator: ';'
      },
      dist: {
        src: [
          '<%= config.src %>/assets/css/normalize.css',
          '<%= config.src %>/assets/css/prism.css',
          '<%= config.src %>/assets/css/main.css'
        ],
        dest: '<%= config.dist %>/assets/css/all.css'
      }
    },
    postcss: {
      options: {
        map: {
          inline: false,
          annotation: '<%= config.dist %>/assets/css/maps/'
        },
        processors: [
          require('autoprefixer')({browsers: [
            'Android 2.3',
            'Android >= 4',
            'Chrome >= 20',
            'Firefox >= 24',
            'Explorer >= 8',
            'iOS >= 6',
            'Opera >= 12',
            'Safari >= 6'
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
      p5_featured: {
        expand: true,
        cwd: '<%= config.src %>/assets/p5_featured',
        src: '**',
        dest: '<%= config.dist %>/assets/p5_featured'
      },
      examples: {
        expand: true,
        cwd: '<%= config.src %>/data/examples',
        src: ['**', '!build_examples/**'],
        dest: '<%= config.dist %>/assets/examples'
      },
      contributor_docs: {
        expand: true,
        cwd: '<%= config.src %>/assets/contributor-docs',
        src: '**',
        dest: '<%= config.dist %>/contributor-docs'
      },
      reference: {
        expand: true,
        cwd: '<%= config.src %>/data/reference',
        src: ['**'],
        dest: '<%= config.dist %>/assets/reference'
      },
      reference_assets: {
        files: (function() {
          const cp = [];
          pkg.languages.forEach(language => {
            if (language === 'en') {
              cp.push({
                expand: true,
                cwd: '<%= config.src %>/templates/pages/reference/',
                src: ['**/!(*.hbs)'],
                dest: '<%= config.dist %>/reference/'
              });
            } else {
              cp.push({
                expand: true,
                cwd: '<%= config.src %>/templates/pages/reference/',
                src: ['**/!(*.hbs)'],
                dest: `<%= config.dist %>/${language}/reference/`
              });
            }
          });

          return cp;
        })()
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
            cwd: '<%= config.dist %>/assets',
            src: 'css/all.css',
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
        '!<%= config.dist %>/download/release.php',
        '!<%= config.dist %>/git-pull.php',
        '!<%= config.dist %>/books/media.zip',
        '!<%= config.dist %>/learn/books/media.zip',
        '<%= config.src %>/offline-reference/**/*.*'
      ]
    },

    file_append: {
      default_options: {
        files: [
          {
            prepend: 'referenceData = ',
            input: '<%= config.src %>/templates/pages/reference/data.json',
            output: '<%= config.src %>/offline-reference/js/data.js'
          }
        ]
      }
    },

    compress: {
      main: {
        options: {
          archive: '<%= config.dist %>/offline-reference/p5-reference.zip'
        },
        expand: true,
        cwd: '<%= config.src %>/offline-reference',
        src: ['**/*'],
        dest: 'p5-reference/'
      }
    },
    htmllint: {
      all: {
        src: [
          '<%= config.dist %>/**/*.html',
          '!<%= config.dist %>/**/CHANGES.html',
          '!<%= config.dist %>/**/README.html',
          '!<%= config.dist %>/**/p5_featured/**/*.html',
          '!<%= config.dist %>/**/learn/*.html',
          '!<%= config.dist %>/**/examples/*.html',
          '!<%= config.dist %>/**/reference/assets/index.html'
        ],
        options: {
          ignore: [
            /^This document appears to be written in English/,
            /^Bad value “https:/,
            /^Consider adding a “lang” attribute to the “html”/,
            /^Attribute “paypalexpress” not allowed on element “script” at this point./
          ]
        }
      }
    },
    shell: {
      generate_dataJSON: {
        command: 'npm ci && npm run grunt yui',
        options: {
          execOptions: {
            cwd: 'tmp/p5.js'
          }
        }
      }
    }
  });

  grunt.registerTask('update-version', function() {
    const done = this.async();

    const version = require('./src/templates/pages/reference/data.json').project.version;

    fs.readFile('./src/data/data.yml').then((str) => {
      const data = yaml.safeLoad(str);
      data.version = version;

      const dump = yaml.safeDump(data);

      return fs.writeFile('./src/data/data.yml', dump);
    }).then(() => {
      done();
    });
  });

  // runs the updateJSON() function from update18nFiles.js
  // is run by the update-translation-files workflow every time one of them is modified
  grunt.registerTask('update-json-i18n-files', function() {
    const JSONfiles_URL = 'src/data/reference/';
    const lang = pkg.languages.filter(v => v !== 'en');
    lang.forEach(langCode => {
      update_i18n.updateJSON(
        JSONfiles_URL + 'en.json',
        JSONfiles_URL + langCode + '.json'
      );
    });
  });

  // runs the updateYAML() function from update18nFiles.js
  // is run by the update-translation-files workflow every time one of them is modified
  grunt.registerTask('update-yaml-i18n-files', function() {
    const YAMLfiles_URL = 'src/data/';
    const lang = pkg.languages.filter(v => v !== 'en');
    lang.forEach(langCode => {
      update_i18n.updateYAML(
        YAMLfiles_URL + 'en.yml',
        YAMLfiles_URL + langCode + '.yml'
      );
    });
  });

  grunt.loadNpmTasks('grunt-exec');
  grunt.loadNpmTasks('grunt-assemble');
  grunt.loadNpmTasks('grunt-file-append');
  grunt.loadNpmTasks('grunt-contrib-compress');
  grunt.loadNpmTasks('grunt-contrib-requirejs');
  grunt.loadNpmTasks('grunt-html');

  grunt.registerTask('make_tmp_dir', function() {
    const tmp_path = 'tmp/p5.js';
    fse.mkdirpSync(tmp_path);
  });

  grunt.registerTask('clone_p5js_repo', async function() {
    const done = this.async();
    try {
      await git().clone('https://github.com/processing/p5.js', 'tmp/p5.js');
      done();
    } catch (err) {
      console.log('Failed to clone p5.js repository.');
      throw new Error(err);
    }
  });

  grunt.registerTask('generate_dataJSON', ['shell:generate_dataJSON']);

  grunt.registerTask('move_dataJSON', function() {
    const dataJSON_p5js = 'tmp/p5.js/docs/reference/data.json';
    const dataJSON_p5jswebsite = 'src/templates/pages/reference/data.json';
    // move the data.json from the cloned p5.js repository to the p5.js-website repository
    fse.moveSync(dataJSON_p5js, dataJSON_p5jswebsite, { overwrite: true });
    // delete the tmp folder that contained the p5.js repository
    fse.removeSync('tmp/');
  });

  grunt.registerTask('generate_enJSON', function() {
    const getenJSON = require('./getenJSON.js');
    // generate and save the en.json
    getenJSON();
  });

  grunt.registerTask('update-enJSON', [
    'make_tmp_dir',
    'clone_p5js_repo',
    'generate_dataJSON',
    'move_dataJSON',
    'generate_enJSON'
  ]);

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
    'postcss'
  ]);

  // i18n tracking task
  grunt.registerTask('i18n', function() {
    var done = this.async();
    require('./i18n.js')(done);
  });

  // runs tasks in order
  grunt.registerTask('build', [
    'update-version',
    'exec',
    'clean',
    'requirejs:yuidoc_theme',
    'requirejs',
    'copy',
    'optimize',
    'assemble',
    'file_append',
    'compress',
    'i18n',
    'htmllint'
  ]);

  // runs with just grunt command
  grunt.registerTask('default', ['build']);
};
