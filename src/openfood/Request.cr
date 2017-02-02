require "http/client"
require "uri"

module OpenFood
  class Request
    @@endpoint = "https://www.openfood.ch/api/v1"

    def self.get(path : String, params : (Hash(String, (String|Array(String))) | Nil))
      uri = URI.parse "#{@@endpoint}#{path}"
      i = 0
      queryString = String::Builder.new
      params.each do |key, value|
        i += 1
        if value.is_a? Array(String)
          k = 0
          value.each_with_index do |e , i|
            k += 1
            queryString << "#{key}[]=#{URI.escape(e)}"
            if k < value.size
              queryString << "&"
            end
          end
        else
          queryString << "#{key}=#{URI.escape(value)}"
          if i < params.size
            queryString << "&"
          end
        end
      end
      uri.query = queryString.to_s
      response = HTTP::Client.get uri

      if response.status_code == 200
        return response.body
      end
      nil
    end

    def self.post(path : String, data : (Hash(String, String) | Nil))
    end
  end
end
