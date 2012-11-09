require 'uri'
require 'json'
require 'httparty'

module SmartHTTPants
  class Client

    def initialize(resource, resource_name = nil)
      @resource = resource
      @resource_name = resource_name
    end

    [:get, :post, :put, :delete, :head, :options].each do |method|
      define_method method do |params = {}|
        response = HTTParty.send(method, resource, params)
        puts response.inspect
      end
    end

    def method_missing(method_name, *args, &block)
      SmartHTTPants::Client.new("#{resource}/#{method_name.to_s}", args.first)
    end

    def resource
      if @resource_name.nil?
        @resource
      else
        "#{@resource}/#{@resource_name}"
      end
    end
  end
end
