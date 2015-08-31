module.exports = function(grunt) {

    grunt.initConfig({

        less: {
            development: {
                options: {
                    compress: true,
                    yuicompress: true,
                    optimization: 2
                },
                files: {
                    "css/site-v3.css": "less/site.less"
                }
            }
        },
        shell: {
            options: {
                stderr: true
            },
            deployAssets: {
                command: [ 'gsutil -m cp -R -z css,svg -a public-read css font img gs://ai-custom-domains/washinfo/',
                           'gsutil cors set cors.json gs://ai-custom-domains'].join(";")
            },
            stageTheme: {
                command: 'gsutil cp domain.properties Scaffolding.ftl HomePageBody.html gs://ai-staging.appspot.com/domains/wash3-dot-qa-dot-ai-staging.appspot.com/'
            },
            deployTheme: {
                command: 'gsutil cp domain.properties Scaffolding.ftl HomePageBody.html gs://activityinfoeu.appspot.com/domains/www.washinfo.org/'
            }
        }
    });
    
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-shell');

    grunt.registerTask('default', ['less']);
    grunt.registerTask('stageTheme', [ 'shell:stageTheme']);
    grunt.registerTask('deployTheme', ['less', 'shell:deployTheme']);
    grunt.registerTask('deployAssets', ['less', 'shell:deployAssets']);
};