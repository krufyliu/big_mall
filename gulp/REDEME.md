#前端代码说明v1.0.0

##gulp的使用

1. 安装node环境

2. 全局安装gulp
  ```console
    $ npm install gulp -g
  ```
3. 进入到需要gulp管理的项目路径(如/big_mall/gulp),再安装一遍
  ```console
    $ npm install gulp --save-dev
  ```
  
4. 安装gulp插件
  
  ```console
    $ npm install gulp-ruby-sass gulp-autoprefixer gulp-minify-css gulp-jshint gulp-concat gulp-uglify gulp-imagemin gulp-notify gulp-rename gulp-livereload gulp-cache del --save-dev

  ``` 

  * sass的编译 (`gulp-ruby-sass`)
  * 自动添加css前缀（`gulp-autoprefixer`）
  * 压缩css（`gulp-minify-css`）
  * js代码校验（`gulp-jshint`）
  * 合并js文件（`gulp-concat`）
  * 压缩js代码（`gulp-uglify`）
  * 压缩图片（`gulp-imagemin`）
  * 自动刷新页面（`gulp-livereload`）
  * 图片缓存，只有图片替换了才压缩（`gulp-cache`）
  * 更改提醒（`gulp-notify`）
  * 清除文件（`del`）
  
  
5.运行task任务

 ```console
    $ gulp
  ```
  
6.gulp的API请查看gulpfile.js文件
