class RkeAT016Rc2 < Formula
  desc "Rancher Kubernetes Engine, K8s installation"
  homepage "https://github.com/rancher/rke"
  url "https://github.com/rancher/rke/releases/download/v0.1.6-rc2/rke_darwin-amd64"
  version "0.1.6-rc2"
  sha256 "03b70bbf160ae7e9659c06b70ec4f9c1ef37801df2094c611a9bbbc97e414a70"

  def install
    bin.install "rke_darwin-amd64" => "rke"
  end

  test do
    assert_match "rke version", shell_output("#{bin}/rke --version")
  end
end
