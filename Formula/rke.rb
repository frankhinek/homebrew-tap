class Rke < Formula
  desc "Rancher Kubernetes Engine, K8s installation"
  homepage "https://github.com/rancher/rke"
  url "https://github.com/rancher/rke/releases/download/v0.1.3/rke_darwin-amd64"
  version "0.1.3"
  sha256 "33b76fd413a1ed7114a268409fa75cc7d7934ad70b9b6cc2d18e869a1a093773"
  head "https://github.com/rancher/rke.git"

  def install
    bin.install "rke_darwin-amd64" => "rke"
  end

  test do
    assert_match "rke version", shell_output("#{bin}/rke --version")
  end
end
