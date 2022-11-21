# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecsgo < Formula
  desc "Interactive CLI tool which acts as a wrapper around the ECS ExecuteCommand API."
  homepage ""
  version "0.4.4"
  license "Apache2"

  depends_on "go"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tedsmitt/ecsgo/releases/download/0.4.4/ecsgo_Darwin_x86_64.tar.gz"
      sha256 "c7a88d7004b068a6268d047d57c1e47ba3598c785e86d2ae2ebd2bd061011999"

      def install
        bin.install "ecsgo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tedsmitt/ecsgo/releases/download/0.4.4/ecsgo_Darwin_arm64.tar.gz"
      sha256 "6ef83c1d9c2ec2b4d51ccfc390c22efb157c4a468590a42e836a4742f879ca50"

      def install
        bin.install "ecsgo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tedsmitt/ecsgo/releases/download/0.4.4/ecsgo_Linux_x86_64.tar.gz"
      sha256 "46eeb01ce51bece3c6a8e62dcb633802c1299be530cde4e4d0b868264fc1679a"

      def install
        bin.install "ecsgo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tedsmitt/ecsgo/releases/download/0.4.4/ecsgo_Linux_arm64.tar.gz"
      sha256 "963dfd1022ede417a4803c52a923f65ea9b0785091bc3eabf6630f996a6f017c"

      def install
        bin.install "ecsgo"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
