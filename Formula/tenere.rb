class Tenere < Formula
  desc "TUI interface for LLMs built in Rust"
  homepage "https://github.com/pythops/tenere"
  license "AGPLv3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pythops/tenere/releases/download/v0.1/tenere-aarch64-macos"
      sha256 "20162390115b05e2eb516ad4861d02150701bbeae3d6974f6753d7296198c3d4"
    elsif Hardware::CPU.intel?
      url "https://github.com/pythops/tenere/releases/download/v0.1/tenere-x86_64-macos"
      sha256 "fcb377c4901628599abf034409442bdeb2dcce8943133a809c013ab884464a39"
    end
  end

  def install
    bin.install "tenere-aarch64-macos" => "tenere" if Hardware::CPU.arm?
    bin.install "tenere-x86_64-macos" => "tenere" if Hardware::CPU.intel?
  end
end
