# Homebrew Formula for VobSub2SRT
# Usage: brew install https://github.com/thomassrob/VobSub2SRT/raw/master/vobsub2srt.rb

require 'formula'

class Vobsub2srt < Formula
  head 'git://github.com/ruediger/VobSub2SRT.git', :using => :git
  homepage 'https://github.com/ruediger/VobSub2SRT'

  depends_on 'cmake'
  depends_on 'tesseract'
  depends_on 'ffmpeg'

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end
end
