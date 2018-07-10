class RkeAT016 < Formula
  desc "Rancher Kubernetes Engine, K8s installation"
  homepage "https://github.com/rancher/rke"
  url "https://github.com/rancher/rke/releases/download/v0.1.8/rke_darwin-amd64"
  version "0.1.8"
  sha256 "afb99466518a207ed329e002ede96094dd1fa65147a4e4022a10a92449821dfc"

  def install
    bin.install "rke_darwin-amd64" => "rke"
  end

  test do
    assert_match "rke version", shell_output("#{bin}/rke --version")
  end
end
