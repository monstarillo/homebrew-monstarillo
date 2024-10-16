# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Monstarillo < Formula
  desc "A code generator"
  homepage "https://github.com/monstarillo/monstarillo"
  version "0.0.171"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.171/monstarillo_0.0.171_Darwin_arm64.tar.gz"
      sha256 "10bfc525b4db81c52637cedf474f36f90ac6ff043f2ac608a4c43fcf498d5821"

      def install
        bin.install "monstarillo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.171/monstarillo_0.0.171_Darwin_x86_64.tar.gz"
      sha256 "2a37c0079bdcd7493147935acc77022b14ce9a645441256264b56bf45d748088"

      def install
        bin.install "monstarillo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.171/monstarillo_0.0.171_Linux_arm64.tar.gz"
      sha256 "a6898c115d9f2fb23307cbc1dc987431cb19bf9f4e7c62e409932569db1ad061"

      def install
        bin.install "monstarillo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.171/monstarillo_0.0.171_Linux_x86_64.tar.gz"
      sha256 "e71a636b30edb79dfa21d24d8fb0a941e8369b76030cdc67fcea0c0c2e7bc842"

      def install
        bin.install "monstarillo"
      end
    end
  end

  test do
    system "#{bin}monstarillo mysql --help"
  end
end
