# Grunt boilerplate
module.exports = ->

    # Set up individual tasks
    @initConfig
        latex:
            src: ['source.tex']
        watch:
            files: ['*.tex']
            tasks: ['latex', 'latex']

    # Specify tasks you want to use
    @loadNpmTasks 'grunt-latex'
    @loadNpmTasks 'grunt-contrib-watch'

    # Tell grunt what to do if no arguments are specified
    @registerTask 'default', ['latex', 'latex', 'watch']
