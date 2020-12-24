# https://qiita.com/dalance/items/b07bee6cadfd4dd19756
class Ultraman < Formula
  version '0.1.1'
  desc "Manage Procfile-based applications. (Rust Foreman)"
  homepage "https://github.com/yukihirop/ultraman"

  depends_on "rust" => :build
  
  if OS.mac?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.1.1/ultraman-v0.1.1-x86_64-mac.zip"
    sha256 'f352b307c3c16ddf4685964495642b94be8caf01fe21ca1a40b80eae26d6f238'
  end

  if OS.linux?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.1.1/ultraman-v0.1.1-x86_64-linux.zip"
    sha256 'be19d95b1dc4e2f099aecb9cd2deb96cd1ed2112ba4ebde4fc72af2c1645b2b8'
  end

  head 'https://github.com/yukihirop/ultraman.git'

  def install
    man1.install 'ultraman.1'
    bin.install 'ultraman'
  end
end
