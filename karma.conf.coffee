# an example karma.conf.coffee
module.exports = (config) ->
    config.set
        basePath: '.'
        browsers: ['PhantomJS', 'Firefox']
        frameworks: ['jasmine']
        reporters: ['progress', 'coverage']
        preprocessors: {
            'app/dist/app.js': ['coverage']
        },
        coverageReporter: {
            type : 'lcov',
            dir : 'coverage/'
        }
