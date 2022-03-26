# https://qiita.com/dalance/items/b07bee6cadfd4dd19756
class Ultraman < Formula
  version '0.1.3'
  desc "Manage Procfile-based applications. (Rust Foreman)"
  homepage "https://github.com/yukihirop/ultraman"

  depends_on "rust" => :build
  
  if OS.mac?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.1.3/ultraman-v0.1.3-x86_64-mac.zip"
    sha256 '0ee6d6f8c72de6449dae5b0602ff1b8ae7e9cb6023382e1307cdec0fc16e828b'
  end

  if OS.linux?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.1.3/ultraman-v0.1.3-x86_64-linux.zip"
    sha256 '933d5fa22a5b3d90632d2c674005c1555e759e8e0fd7f587220c3f9e8c749c25'
  end

  head 'https://github.com/yukihirop/ultraman.git'

  def install
    man1.install 'ultraman.1'
    bin.install 'ultraman'
  end
end
