class RkeAT016Rc3 < Formula
  desc "Rancher Kubernetes Engine, K8s installation"
  homepage "https://github.com/rancher/rke"
  url "https://github.com/rancher/rke/releases/download/v0.1.6-rc3/rke_darwin-amd64"
  version "0.1.6-rc3"
  sha256 "7319dd8552f55d63477f9ccfff2fb79a1aac5e9baa789cbad628efc6034ca163"

  def install
    bin.install "rke_darwin-amd64" => "rke"
  end

  test do
    assert_match "rke version", shell_output("#{bin}/rke --version")
  end
end
