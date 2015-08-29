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
                    "css/site.css": "less/site.less"
                }
            }
        },
        shell: {
            options: {
                stderr: true
            },
            target: {
                command: 'gsutil cp -R css font img js gs://activityinfo-syrianrefugeeresponse'
            }
        }
    });
    
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-shell');

    grunt.registerTask('default', ['less']);
    grunt.registerTask('deploy', ['shell'])
};