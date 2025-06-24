# https://qiita.com/dalance/items/b07bee6cadfd4dd19756
class Ultraman < Formula
  version ''
  desc "Manage Procfile-based applications. (Rust Foreman)"
  homepage "https://github.com/yukihirop/ultraman"

  depends_on "rust" => :build
  
  if OS.mac?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.3.3/ultraman-v0.3.3-x86_64-mac.zip"
    sha256 '34d8a9e432af596359742cc903b43cf47a4ece172a3cffe02dd726efb179499a'
  end

  if OS.linux?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.3.3/ultraman-v0.3.3-x86_64-linux.zip"
    sha256 'fdb258fcaa15340e8d239ed62cb746abe0dc83ebe2f8919e3144902b63d4f456'
  end

  head 'https://github.com/yukihirop/ultraman.git'

  def install
    man1.install 'ultraman.1'
    bin.install 'ultraman'
  end
end
