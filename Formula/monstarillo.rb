# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Monstarillo < Formula
  desc "A code generator"
  homepage "https://github.com/monstarillo/monstarillo"
  version "0.0.31"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.31/monstarillo_0.0.31_darwin_amd64.tar.gz"
      sha256 "8c4fb8d36a834d78012d2db0c573a9e72e5beddd268c3aad905f0ea53c1b112b"

      def install
        bin.install "monstarillo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.31/monstarillo_0.0.31_darwin_arm64.tar.gz"
      sha256 "d402d1861ce0a754873ba5248cf235c0d31021b0844014ad198c0d6098422b1f"

      def install
        bin.install "monstarillo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.31/monstarillo_0.0.31_linux_amd64.tar.gz"
        sha256 "c470a4ae1ed9fee460a98fc554e85fd89c6bbea8b94d20dc5ebdcdd819f7f90f"

        def install
          bin.install "monstarillo"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/monstarillo/monstarillo/releases/download/v0.0.31/monstarillo_0.0.31_linux_arm64.tar.gz"
        sha256 "da6ad1b0f51db2d094d27c63b2e6f49264209b9aaafb9b3d34c56e941463497f"

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
