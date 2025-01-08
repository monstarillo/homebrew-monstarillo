# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Monstarillo < Formula
  desc "A code generator"
  homepage "https://github.com/monstarillo/monstarillo"
  version "0.0.200"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.200/monstarillo_0.0.200_darwin_amd64.tar.gz"
      sha256 "fffe0bc5cbdcebd6e0053da0492e188b5640f55432d7744d29db92e8abca0872"

      def install
        bin.install "monstarillo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.200/monstarillo_0.0.200_darwin_arm64.tar.gz"
      sha256 "1f95c8428526ef24b8d91790774aaa04107a4913fffc0f2bfd53785931c56a74"

      def install
        bin.install "monstarillo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.200/monstarillo_0.0.200_linux_amd64.tar.gz"
        sha256 "2abd1b2cb3c473534d056ecc5613f976cbba79f2177638b59b490e285901a119"

        def install
          bin.install "monstarillo"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.200/monstarillo_0.0.200_linux_arm64.tar.gz"
        sha256 "cda3b64312e6b6d2a8f973d45ec940007f74f1ed36a1ae90a0d11c68e1209cec"

        def install
          bin.install "monstarillo"
        end
      end
    end
  end

  test do
    system "#{bin}monstarillo mysql --help"
  end
end
