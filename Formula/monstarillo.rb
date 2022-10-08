# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Monstarillo < Formula
  desc "A code generator"
  homepage "https://github.com/monstarillo/monstarillo"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.3/monstarillo_0.0.3_Darwin_arm64.tar.gz"
      sha256 "a6fb4d46d6b6300e723bedcc04a696af5ed6e59e49cc99470d221bc77a53b297"

      def install
        bin.install "monstarillo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.3/monstarillo_0.0.3_Darwin_x86_64.tar.gz"
      sha256 "bb26c6c987035e0c5adb34dfc8efd43eb64fa98893d684fcee01aef1a0eb66d1"

      def install
        bin.install "monstarillo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.3/monstarillo_0.0.3_Linux_arm64.tar.gz"
      sha256 "861ce87826447369440a14cde5d170bea1771aa7d44c06acb601cfff5b62ef1c"

      def install
        bin.install "monstarillo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.3/monstarillo_0.0.3_Linux_x86_64.tar.gz"
      sha256 "f419a30d016e724265a228a4812888f75b48c432d06edefe629b0a113fe9e960"

      def install
        bin.install "monstarillo"
      end
    end
  end

  test do
    system "#{bin}monstarillo mysql --help"
  end
end
