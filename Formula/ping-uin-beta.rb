class PingUinBeta < Formula
  desc "Btop-style TUI for monitoring IPs and hostnames (beta branch)"
  homepage "https://github.com/altosaxplayer/ping-uin"
  url "https://github.com/altosaxplayer/ping-uin/archive/refs/heads/beta.tar.gz"
  version "0.1.10-beta"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"ping-uin"
    assert_predicate bin/"ping-uin", :executable?
  end
end
