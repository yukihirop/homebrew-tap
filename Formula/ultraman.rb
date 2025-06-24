# https://qiita.com/dalance/items/b07bee6cadfd4dd19756
class Ultraman < Formula
  version ''
  desc "Manage Procfile-based applications. (Rust Foreman)"
  homepage "https://github.com/yukihirop/ultraman"

  depends_on "rust" => :build
  
  if OS.mac?
    url "https://github.com/yukihirop/ultraman/releases/download/v/ultraman-v-x86_64-mac.zip"
    sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
  end

  if OS.linux?
    url "https://github.com/yukihirop/ultraman/releases/download/v/ultraman-v-x86_64-linux.zip"
    sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
  end

  head 'https://github.com/yukihirop/ultraman.git'

  def install
    man1.install 'ultraman.1'
    bin.install 'ultraman'
  end
end
