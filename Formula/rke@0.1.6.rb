class RkeAT016 < Formula
  desc "Rancher Kubernetes Engine, K8s installation"
  homepage "https://github.com/rancher/rke"
  url "https://github.com/rancher/rke/releases/download/v0.1.6/rke_darwin-amd64"
  version "0.1.6"
  sha256 "3bd0608663f58d64c09e9c230c80483de8f1977e1c9ac5e3165aafbceda28f6a"

  def install
    bin.install "rke_darwin-amd64" => "rke"
  end

  test do
    assert_match "rke version", shell_output("#{bin}/rke --version")
  end
end
