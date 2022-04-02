# https://qiita.com/dalance/items/b07bee6cadfd4dd19756
class Ultraman < Formula
  version '0.3.0'
  desc "Manage Procfile-based applications. (Rust Foreman)"
  homepage "https://github.com/yukihirop/ultraman"

  depends_on "rust" => :build
  
  if OS.mac?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.3.0/ultraman-v0.3.0-x86_64-mac.zip"
    sha256 '5c63f1db0ae478b0283acfa94b4b56e0d37ff467303907f399b1fdc9717e940a'
  end

  if OS.linux?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.3.0/ultraman-v0.3.0-x86_64-linux.zip"
    sha256 '074d3486d2acc72259d7d8489d72c7d38a149aaabf8656f56c91140f1ccc09e5'
  end

  head 'https://github.com/yukihirop/ultraman.git'

  def install
    man1.install 'ultraman.1'
    bin.install 'ultraman'
  end
end
