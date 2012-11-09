require 'smartHTTPants/client'

describe SmartHTTPants::Client do
  let(:client) { SmartHTTPants::Client.new("http://fake.dev") }

  [:get, :put, :post, :delete, :head, :options].each do |method|
    it "supports #{method}" do
      client.should respond_to(method)
    end
  end
end