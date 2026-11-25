# cdpath/tap

cdpath 的 Homebrew tap。

## qd

qd 是一个全键盘的 macOS 词典，读取你自己的 MDict 词典。现在是测试版，只支持 Apple 芯片的 Mac，需要 macOS 14 或更新版本。

### 安装

```sh
brew install --cask cdpath/tap/qd
```

这个测试版没有经过 Apple 签名和公证，第一次打开会被 macOS 拦下：

1. 打开 qd，看到「无法验证开发者」的提示后点「完成」。
2. 打开「系统设置 › 隐私与安全性」，在页面底部找到 qd，点「仍要打开」。

之后就能正常打开。

### 开始使用

qd 不带词典。打开后按 ⌘O，选择 `.mdx` 文件或放词典的文件夹。和 `.mdx` 同名的 `.mdd`、`.css` 和图标会一起导入。

- 打字就是查词，`↑` `↓` 换词，`⌘↑` `⌘↓` 在词典之间跳。
- `⇧⌘F` 切到全文搜索，第一次会让你选在哪些词典里开启。
- `⌘,` 打开词典库，可以排序、停用、开关阅读样式和全文搜索。

### 更新

```sh
brew update
brew upgrade --cask qd
```

先跑 `brew update`：它会拉取这个 tap 的最新内容。只跑 `brew upgrade` 时，Homebrew 可能只刷新官方仓库，看不到 qd 的新版本，会提示已经是最新版。

### 反馈

用 qd 菜单「帮助 › 反馈…」，或者直接[新建 issue](https://github.com/cdpath/homebrew-tap/issues/new?template=qd-feedback.yml)。菜单「帮助 › 打开日志文件夹」里的 `qd.log` 能帮我定位问题。
