# https://qiita.com/dalance/items/b07bee6cadfd4dd19756
class Ultraman < Formula
  version '0.1.3'
  desc "Manage Procfile-based applications. (Rust Foreman)"
  homepage "https://github.com/yukihirop/ultraman"

  depends_on "rust" => :build
  
  if OS.mac?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.2.0/ultraman-v0.2.0-x86_64-mac.zip"
    sha256 '7b14bb1d6606d9bfbdeae878d73f3d605eaea68bb31d595107066489101aadc3'
  end

  if OS.linux?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.2.0/ultraman-v0.2.0-x86_64-linux.zip"
    sha256 'ad207bab2f6d1e38cd17527b876f8417558d003fd5f57fb5856331072193bcae'
  end

  head 'https://github.com/yukihirop/ultraman.git'

  def install
    man1.install 'ultraman.1'
    bin.install 'ultraman'
  end
end
