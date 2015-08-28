#前端代码说明v1.0.0

##目录结构说明
```js
  assets/  //项目引用资源目录
  dev/     //静态资源开发目录
  dist/    //静态资源引用目录
  gulpfile.js   //gulpAPI文件
```


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
  
  监听文档实现实时编译
  
  ```console
    $ gulp watch
  ```
  
6.gulp的API请查看gulpfile.js文件


#scss文件规范以及说明
1.各个小模块以下划线开头全小写命名，多单词以 `-` 符号分隔，总模块正常以该模块文件夹命名，在其中导入需要的小模块(详细规则请查看font-awesome的scss源码)，例：

```js
  font-awesome
    _animated.scss
    _bordered-pulled.scss
    _core.scss
    _fixed-width.scss
    _icons.scss
    _larger.scss
    _list.scss
    _mixins.scss                  //预编译文件
    _path.scss                    //资源路径配置
    _rotated-flipped.scss
    _stacked.scss
    _variables.scss               //变量定义
    font-awesome.scss             //总模块文件

```

2.自定义变量放置在 `_variables.scss` 文件中

3.资源路径配置在 `_path.scss` 文件中
