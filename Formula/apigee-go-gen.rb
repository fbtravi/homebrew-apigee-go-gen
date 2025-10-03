class ApigeeGoGen < Formula
  desc "Tool to generate Apigee proxies, flows etc in Go"
  homepage "https://apigee.github.io/apigee-go-gen/"
  url "https://github.com/apigee/apigee-go-gen/releases/download/v1.1.0-beta.2/apigee-go-gen_Darwin_arm64.tar.gz"
  sha256 "0b6d6dd69340109336a81dae1784ea5f4ac6fc731ed08bf3628b1d0c3264b328"
  license "Apache-2.0"

  def install
    bin.install "apigee-go-gen"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/apigee-go-gen --help")
  end
end
