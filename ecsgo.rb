# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecsgo < Formula
  desc "Interactive CLI tool which acts as a wrapper around the ECS ExecuteCommand API."
  homepage ""
  version "0.1.2"
  license "Apache2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.1.2/ecsgo_Darwin_x86_64.tar.gz"
    sha256 "96f011fe8592fd2629a253abb812b02f7667d1a7b09f48a238aff7337146ddfc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.1.2/ecsgo_Darwin_arm64.tar.gz"
    sha256 "b49dcbcf53d0c2b44905015f0c9a883884b791758092e6e2301f86dff63c9169"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.1.2/ecsgo_Linux_x86_64.tar.gz"
    sha256 "a38a30e3e9fcf0efdd856e4fc95f6d348b12bcc45f61bbf01f12df21cf9416cd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/tedsmitt/ecsgo/releases/download/0.1.2/ecsgo_Linux_arm64.tar.gz"
    sha256 "0329fce1dda6a873a7ba7a07d0a99b155207f9ec3421f60da1fa29e5b54890f0"
  end

  depends_on "go"

  def install
    bin.install "ecsgo"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
