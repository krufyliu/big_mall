//加载插件
var gulp = require('gulp'),
    sass = require('gulp-ruby-sass'),
    autoprefixer = require('gulp-autoprefixer'),
    minifycss = require('gulp-minify-css'),
    jshint = require('gulp-jshint'),
    uglify = require('gulp-uglify'),
    imagemin = require('gulp-imagemin'),
    rename = require('gulp-rename'),
    concat = require('gulp-concat'),
    notify = require('gulp-notify'),
    cache = require('gulp-cache'),
    livereload = require('gulp-livereload'),
    del = require('del');

//编译压缩scss文件
gulp.task('styles', function() {
  return sass('dev/stylesheets', { style: 'expanded' })
  .pipe(autoprefixer('last 2 version', 'safari 5', 'ie 8', 'ie 9', 'opera 12.1', 'ios 6', 'android 4'))
  .pipe(gulp.dest('dist/css'))
  .pipe(rename({suffix: '.min'}))
  .pipe(minifycss())
  .pipe(gulp.dest('dist/css'))
});

//压缩js文件
gulp.task('scripts', function() {
  return gulp.src('assets/javascripts/**/*.js')
    .pipe(jshint.reporter('default'))
    //.pipe(concat('main.js'))
    .pipe(gulp.dest('dist/js'))
    .pipe(rename({suffix: '.min'}))
    .pipe(uglify())
    .pipe(gulp.dest('dist/js'))
});

//压缩图片资源
gulp.task('images', function() {
  return gulp.src('assets/images/**/*')
    .pipe(imagemin({ optimizationLevel: 3, progressive: true, interlaced: true }))
    .pipe(gulp.dest('dist/img'))
});

//清理编译文件夹
gulp.task('clean', function(cb) {
    del(['dist/css', 'dist/js', 'dist/img'], cb)
});

//gulp默认任务设置
gulp.task('default', ['clean'], function() {
    gulp.start('styles', 'scripts', 'images');
});

//监听任务设置
gulp.task('watch', function() {
  // Watch .scss files
  gulp.watch('dev/stylesheets/**/*.scss', ['styles']);
  // Watch .js files
  gulp.watch('assets/javascripts/**/*.js', ['scripts']);
  // Watch image files
  gulp.watch('assets/images/**/*', ['images']);
});
