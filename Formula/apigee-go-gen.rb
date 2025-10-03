class ApigeeGoGen < Formula
  desc "Tool to generate Apigee proxies, flows etc in Go"
  homepage "https://apigee.github.io/apigee-go-gen/"
  url "https://github.com/apigee/apigee-go-gen/archive/refs/tags/v0.1.13.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/apigee-go-gen"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/apigee-go-gen --help")
  end
end
