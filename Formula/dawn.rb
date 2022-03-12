class Dawn < Formula
  desc "Dawn, a WebGPU implementation"
  homepage "https://dawn.googlesource.com/dawn/"
  url "https://github.com/stackotter/dawn-builds/releases/download/v0.1.1/build.zip"
  version "ed840583-0.1.1"
  sha256 "2aea5150b2f3235b0a6a584dfa8e63c76985c4ed3e6d49715c92551730ad963d"
  license "Apache-2.0"

  def install
    lib.install "lib/libdawn_native.dylib"
    lib.install "lib/libdawn_proc.dylib"
    lib.install "lib/libEGL.dylib"
    lib.install "lib/libGLESv2.dylib"
    lib.install "lib/libvk_swiftshader.dylib"
    lib.install "lib/libVkICD_mock_icd.dylib"
    lib.install "lib/libVkLayer_khronos_validation.dylib"

    include.install "include/dawn"
    include.install "include/webgpu"

    prefix.install_metafiles
  end

  test do
    system "true"
  end
end
