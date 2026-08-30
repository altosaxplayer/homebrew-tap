class PingUin < Formula
  desc "btop-style TUI for monitoring IPs and hostnames"
  homepage "https://github.com/altosaxplayer/ping-uin"
  url "https://github.com/altosaxplayer/ping-uin/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "dc196ff71131912528572d0dd3c81bde45a89d8893a08f7479919143a52e8c86"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ping-uin", shell_output("#{bin}/ping-uin --help 2>&1 || true")
  end
end
