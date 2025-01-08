# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Monstarillo < Formula
  desc "A code generator"
  homepage "https://github.com/monstarillo/monstarillo"
  version "0.0.20"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.20/monstarillo_0.0.20_darwin_amd64.tar.gz"
      sha256 "826d952c5f97c2a50f34b0636ab38e105eeac00ad28c043c7b4cbc0f6bb2f1de"

      def install
        bin.install "monstarillo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.20/monstarillo_0.0.20_darwin_arm64.tar.gz"
      sha256 "779a798c5703d6d13343da92902649f6fc5c9906a60b6ee59f1c62a50c3d5ab6"

      def install
        bin.install "monstarillo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.20/monstarillo_0.0.20_linux_amd64.tar.gz"
        sha256 "70c65dfb98e8c54e1c7de2cfb07a30f613f86c7012b0109df6a11b3fa6d0fa19"

        def install
          bin.install "monstarillo"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.20/monstarillo_0.0.20_linux_arm64.tar.gz"
        sha256 "d199f63d438c114209abc9b36f2cbf0a89a43283a7cc282d8fc7f743e9cf80a2"

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
