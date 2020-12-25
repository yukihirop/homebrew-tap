# https://qiita.com/dalance/items/b07bee6cadfd4dd19756
class Ultraman < Formula
  version '0.1.2'
  desc "Manage Procfile-based applications. (Rust Foreman)"
  homepage "https://github.com/yukihirop/ultraman"

  depends_on "rust" => :build
  
  if OS.mac?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.1.2/ultraman-v0.1.2-x86_64-mac.zip"
    sha256 'e10b79fea9575bedc804895902231d85c0ecb0b8d2fb11c4951306cf0a4405f5'
  end

  if OS.linux?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.1.2/ultraman-v0.1.2-x86_64-linux.zip"
    sha256 '746894c846018893197da782184d061e91cddfe92571ed9342592ef47f374188'
  end

  head 'https://github.com/yukihirop/ultraman.git'

  def install
    man1.install 'ultraman.1'
    bin.install 'ultraman'
  end
end
