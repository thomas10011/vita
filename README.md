# Vita 一个简洁的hexo简历主题
此仓库是在原作的基础之上汉化而成，并修改了部分样式。

[在线预览](http://cv.arg.pub)

## 环境:
 * [NodeJS](https://nodejs.org/) >= 1.x
 * [Hexo](https://hexo.io/) >= 1.x

## 安装

1. 安装Hexo

    ```shell
    yarn global add hexo-cli
    ```

2. 初始化一个Hexo目录

    ```shell
    hexo new your-resume
    ```

3. 使用主题

    ```
    # Clone the repo in a different folder
    # e.g. /path/to/resume
    git clone https://github.com/thomas10011/vita.git

    # Copy theme files
    cp -r /path/to/vita /path/to/your-resume/themes/vita

    # Then, change theme in `_config.yml`
    ```
    
    另外，请确认已经安装了`hexo-renderer-swig`，否则可能会导致无法渲染layout/index.swig。
    若未安装，可以运行以下命令：
    ```
    npm install hexo-renderer-swig --save
    ```

4. 在配置文件中选择vita

    并按照如下设置:

    ```yaml
    theme: vita
    ```

    如果你将此页面设置为你的网站的一部分，请在`_config.yml`中设置`baseurl`的值。在配置文件中的`resume`标签下设置你的 __EDUCATION__, __SKILLS__, __EXPERIENCE__, 和 __PROJECTS__ 等信息。

5. 关于头像的使用

    请准备1: 1的头像，命名为avatar.jpg，存放在hexo的source/images目录下。

6. Run and Debug

    ```shell
    hexo server
    ```


## 许可

MIT
