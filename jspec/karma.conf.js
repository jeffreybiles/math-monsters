module.exports = function(config){
  config.set({
    basePath: '../',
    frameworks: ["mocha", "sinon-chai"],

    // list of files / patterns to load in the browser
    files: [
      // vendored code
      'jspec/bower_components/jquery/jquery.js',
      'jspec/bower_components/handlebars/handlebars.js',
      'jspec/bower_components/ember/ember.js',
      'jspec/bower_components/ember-data/ember-data.js',
      'jspec/bower_components/ember-mocha-adapter/adapter.js',
      'jspec/bower_components/chai-jquery/chai-jquery.js',
      'vendor/assets/javascripts/**/*.js',

      // Silence 404 Warnings for image assets
      {pattern: 'app/assets/**/*.jpg', watched: false, included: false, served: true},

      // application code
      "app/assets/javascripts/app.js",
      "app/assets/javascripts/models/**/*.coffee",
      "app/assets/javascripts/controllers/**/*.coffee",
      "app/assets/javascripts/components/**/*.coffee",
      "app/assets/javascripts/views/**/*.coffee",
      "app/assets/javascripts/helpers/**/*.coffee",
      "app/assets/javascripts/templates/**/*.hbs",
      "app/assets/javascripts/routes/**/*.coffee",
      "app/assets/javascripts/store.coffee",
      "app/assets/javascripts/router.coffee",

      // test code
      'jspec/spec_helper.coffee',
      'jspec/**/*_spec.coffee'
    ],
    proxies: {
      '/assets': 'http://localhost:9876/base/app/assets/images'
    },

    preprocessors:  {
      '**/*.{hbs,handlebars}': 'ember',
      '**/*.coffee': 'coffee'
    },
    coffeePreprocessor: {
      options: {
        sourceMap: true
      }
    },


    // list of files to exclude
    exclude:  [

    ],


    // test results reporter to use
    // possible values: 'dots', 'progress', 'junit'
    reporters:  ['dots'],

    // web server port
    port:  9876,

    // cli runner port
    runnerPort: 9100,

    // enable / disable colors in the output (reporters and logs)
    colors:  true,

    // level of logging
    // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel:  config.LOG_INFO,

    // enable / disable watching file and executing tests whenever any file changes
    autoWatch:  true,

    // Start these browsers, currently available:
    // - Chrome
    // - ChromeCanary
    // - Firefox
    // - Opera
    // - Safari (only Mac)
    // - PhantomJS
    // - IE (only Windows)
    // browsers:  ['PhantomJS'],
    browsers:  ['ChromeCanary'],

    // If browser does not capture in given timeout [ms], kill it
    captureTimeout:  60000,

    // Continuous Integration mode
    // if true, it capture browsers, run tests and exit
    singleRun:  false
  });

  if (process.env.BUILD_ID) {
    config.set({
      singleRun: true,
      browsers: ['PhantomJS']
    })
  }
};
