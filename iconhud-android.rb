class IconhudAndroid < Formula
  desc ""
  homepage "https://github.com/Tueno/iconhud-android"
  url "https://github.com/Tueno/iconhud-android/archive/0.1.zip"
  sha256 "5801684179ee6cfcf9abe36ae2d50496fdefa7a0c2a7a1a84af41d425de0b40b"

  depends_on :xcode => ["8.0", :build]
  depends_on "apktool"
  depends_on "ghostscript"
  depends_on "imagemagick"

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"iconhud-android", "-h"
  end
end
