class RkeAT015Rc2, < Formula
  desc "Rancher Kubernetes Engine, K8s installation"
  homepage "https://github.com/rancher/rke"
  url "https://github.com/rancher/rke/releases/download/v0.1.5-rc2/rke_darwin-amd64"
  version "0.1.5-rc2"
  sha256 "20ed09e3261fa94be90834f3a608d5281cbd5ce1f2c384ed32089b6ea7935c9e"

  def install
    bin.install "rke_darwin-amd64" => "rke"
  end

  test do
    assert_match "rke version", shell_output("#{bin}/rke --version")
  end
end
