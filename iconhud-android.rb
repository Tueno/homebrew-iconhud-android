class IconhudAndroid < Formula
  desc ""
  homepage "https://github.com/Tueno/iconhud-android"
  url "https://github.com/Tueno/iconhud-android/archive/0.11.zip"
  sha256 "de13d81481aaf0deccff4a39bc3ad24ce03b18b8c612257b51764e8194dd1add"

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
