class RkeAT015 < Formula
  desc "Rancher Kubernetes Engine, K8s installation"
  homepage "https://github.com/rancher/rke"
  url "https://github.com/rancher/rke/releases/download/v0.1.5/rke_darwin-amd64"
  version "0.1.5"
  sha256 "d1d82c9c5537b48a622db52e7db94d6018fd4b58e005535ada1958f91449f73d"

  def install
    bin.install "rke_darwin-amd64" => "rke"
  end

  test do
    assert_match "rke version", shell_output("#{bin}/rke --version")
  end
end
