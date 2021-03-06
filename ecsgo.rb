# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecsgo < Formula
  desc "Interactive CLI tool which acts as a wrapper around the ECS ExecuteCommand API."
  homepage ""
  version "0.2.0"
  license "Apache2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.2.0/ecsgo_Darwin_x86_64.tar.gz"
    sha256 "a7dd798605b8ecc6534d746f9c879136a46a37a838fe0cf4d1d1f3e8ac82d56c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.2.0/ecsgo_Darwin_arm64.tar.gz"
    sha256 "213369f25b19cb0d90fdd0a697815c352d5bd2c277a3259a1bdc98d960375ea5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.2.0/ecsgo_Linux_x86_64.tar.gz"
    sha256 "9e60f391a5e4fd7c05a08d74c2426b665c8815a26029bd5a16d3d4e11509b5c9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.2.0/ecsgo_Linux_arm64.tar.gz"
    sha256 "4660b1d6fbe7232d7a3fba4fdefbda0f6496ae8fb4ab5b1ebafc98f9609de3a8"
  end

  depends_on "go"

  def install
    bin.install "ecsgo"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
