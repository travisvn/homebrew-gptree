class Gptree < Formula
  desc "A CLI tool to provide LLM context for coding projects by combining project files into a single text file with directory tree structure."
  homepage "https://github.com/travisvn/gptree"
  url "https://files.pythonhosted.org/packages/source/g/gptree-cli/gptree_cli-1.0.2.tar.gz"
  sha256 "9c0b679c0b15662687fe633e9574342242016af0ee925334d015205f03045f31"
  license "MIT"

  depends_on "python@3.9"

  def install
    # Use pip to install the package
    system "python3", "-m", "pip", "install", "gptree-cli==1.0.2", "--prefix=#{prefix}"
  end

  test do
    # Verify the installation by checking the output of --help
    assert_match "usage", shell_output("#{bin}/gptree --help")
  end
end
