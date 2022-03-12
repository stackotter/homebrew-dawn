# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dawn < Formula
  desc "Dawn, a WebGPU implementation"
  homepage "https://dawn.googlesource.com/dawn/"
  url "https://github.com/stackotter/dawn-builds/releases/download/v0.1.0/build.zip"
  version "ed840583"
  sha256 "645bfeef7e6ad1d0401337ff9b25debb0fe5411281edf48542e5ec4b0763fa91"
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
