class Rke < Formula
  desc "Rancher Kubernetes Engine, K8s installation"
  homepage "https://github.com/rancher/rke"
  url "https://github.com/rancher/rke/releases/download/v0.1.4/rke_darwin-amd64"
  version "0.1.4"
  sha256 "f905d31133a41b5d378f753f79d35133e82128bc48061e19d2f7450f2dc852b0"
  head "https://github.com/rancher/rke.git"

  def install
    bin.install "rke_darwin-amd64" => "rke"
  end

  test do
    assert_match "rke version", shell_output("#{bin}/rke --version")
  end
end
