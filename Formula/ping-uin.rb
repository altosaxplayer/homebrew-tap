class PingUin < Formula
  desc "btop-style TUI for monitoring IPs and hostnames"
  homepage "https://github.com/altosaxplayer/ping-uin"
  url "https://github.com/altosaxplayer/ping-uin/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "4744cabec62d07d7e6c2008af40db98a063746a65fd9ab81738d1e00ae182f4e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"ping-uin", :exist?
    assert_predicate bin/"ping-uin", :executable?
  end
end
