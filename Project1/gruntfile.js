module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')
  });

  grunt.registerTask('test_task', 'Test Task', function(target) {
    grunt.fail.fatal('Something is wrong.', 1);
  });
  grunt.registerTask('default', ['test_task']);
};
