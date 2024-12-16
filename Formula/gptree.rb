class Gptree < Formula
  desc "A CLI tool to provide LLM context for coding projects by combining project files into a single text file (or clipboard text) with directory tree structure."
  homepage "https://github.com/travisvn/gptree"
  url "https://files.pythonhosted.org/packages/source/g/gptree-cli/gptree_cli-1.0.4.tar.gz"
  sha256 "a1819a15280f3cd49dfdce6561f4763769b225fde41b4314cee24b0935100bd3"
  license "MIT"

  depends_on "python@3.9"

  def install
    # Use pip to install the package
    system "python3", "-m", "pip", "install", "gptree-cli==1.0.4", "--prefix=#{prefix}"
  end

  test do
    # Verify the installation by checking the output of --help
    assert_match "usage", shell_output("#{bin}/gptree --help")
  end
end
