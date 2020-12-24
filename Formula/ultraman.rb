# https://qiita.com/dalance/items/b07bee6cadfd4dd19756
class Ultraman < Formula
  version '0.1.0'
  desc "Manage Procfile-based applications. (Rust Foreman)"
  homepage "https://github.com/yukihirop/ultraman"

  depends_on "rust" => :build
  
  if OS.mac?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.1.0/ultraman-v0.1.0-x86_64-mac.zip"
    sha256 '806358564886618e29767a4fab1b1e1456ff1fe5bc496ae9908968b68c5fee64'
  end

  if OS.linux?
    url "https://github.com/yukihirop/ultraman/releases/download/v0.1.0/ultraman-v0.1.0-x86_64-linux.zip"
    sha256 '9123ae1fd343c1d7a1641e6c5fd8b513d901b50894a37d5977c9f11f794d2931'
  end

  head 'https://github.com/yukihirop/ultraman.git'

  def install
    if build.head?
      system 'make', 'install_man'
    end
    bin.install 'ultraman'
  end
end
