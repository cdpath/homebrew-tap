cask "qd" do
  version "0.2.0"
  sha256 "98c41c6067346500d3465cee148bc762edaf630a1fee60e47ae0e8ba68d69dea"

  url "https://github.com/cdpath/homebrew-tap/releases/download/qd-v#{version}/qd-#{version}-arm64.zip"
  name "qd"
  desc "Keyboard-first dictionary for your own MDict dictionaries"
  homepage "https://github.com/cdpath/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "qd.app"

  zap trash: [
    "~/Library/Application Support/qd",
    "~/Library/Logs/qd",
  ]

  caveats <<~EOS
    qd 测试版没有经过 Apple 签名和公证，第一次打开会被 macOS 拦下。
    在「系统设置 › 隐私与安全性」底部点「仍要打开」，之后就能正常打开。

    qd 不带词典，打开后按 ⌘O 导入你自己的 MDict 词典（.mdx）。
    遇到问题请用菜单「帮助 › 反馈…」告诉我。
  EOS
end
