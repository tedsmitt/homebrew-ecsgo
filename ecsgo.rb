# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecsgo < Formula
  desc "Interactive CLI tool which acts as a wrapper around the ECS ExecuteCommand API."
  homepage ""
  version "0.1.1"
  license "Apache2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.1.1/ecsgo_Darwin_x86_64.tar.gz"
    sha256 "5bf8618e8b5df4a4041ac9ada47cef05839be3f990cf1bbc9dd80393b53d0774"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.1.1/ecsgo_Linux_x86_64.tar.gz"
    sha256 "0b518d9e5804805240a50d90f1cc56cd3611fb40f7cae7d6b254507bfe1f2027"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.1.1/ecsgo_Linux_armv6.tar.gz"
    sha256 "5b9fb482041879729df83167df81cee1616280b667bccfe67368989ff2a6785e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.1.1/ecsgo_Linux_arm64.tar.gz"
    sha256 "6aa6ba76c782e7615783074e8f3bc6447ad4048275a8001d3c41eb87c275ded3"
  end

  depends_on "go"

  def install
    bin.install "ecsgo"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
