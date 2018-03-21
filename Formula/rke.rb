class Rke < Formula
  desc "Rancher Kubernetes Engine, K8s installation"
  homepage "https://github.com/rancher/rke"
  url "https://github.com/rancher/rke/releases/download/v0.1.3-rc1/rke_darwin-amd64"
  version "0.1.3-rc1"
  sha256 "9917f3f2836764b0d711b50902eb7d6a644f0178ced74efaf7501d880cf0620a"
  head "https://github.com/rancher/rke.git"

  def install
    bin.install "rke_darwin-amd64" => "rke"
  end

  test do
    assert_match "rke version", shell_output("#{bin}/rke --version")
  end
end
