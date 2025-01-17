class Glslviewer < Formula
  desc "Live-coding console tool that renders GLSL Shaders"
  homepage "http://patriciogonzalezvivo.com/2015/glslViewer/"
  url "https://github.com/patriciogonzalezvivo/glslViewer/archive/1.6.2.tar.gz"
  sha256 "12dc9d9ecdf4876c0b276555ea47376c87a1adaea2ab03f1eb3736701cbbc885"
  license "BSD-3-Clause"
  head "https://github.com/patriciogonzalezvivo/glslViewer.git"

  bottle do
    cellar :any
    sha256 "c48739749d9c710852d8db73f8f47e66d6d72c16c8f409d8930d1715f0bea9b9" => :catalina
    sha256 "efca8a10c8dad985ec921fa42053bb8732046fce273c19ce9366ce8fdc0df75a" => :mojave
    sha256 "c05d7b0c4c7c75c893df14a2323e7bf36a7cc77cfef15805f01aa5bdc17e5ab8" => :high_sierra
  end

  depends_on "pkg-config" => :build
  depends_on "glfw"

  def install
    system "make"
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/glslViewer", "--help"
  end
end
