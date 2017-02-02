require "./spec_helper"

describe Openfood do

  describe "Request" do
    describe "get" do
      params = {"page[number]"=>"1", "page[size]"=>"1", "locale" => "en"} of String => String
      result = OpenFood::Request.get("/products", params)
      result.should be_a String
    end
  end

  describe "API Calls" do
    describe "getProducts" do
      maxElements = 50
      result = OpenFood.getProducts(maxElements)
      result.data.size.should be <= maxElements

      result.data.each do |el|
        if el.attributes.name != nil
          puts el.attributes.name
        end
      end
    end
  end
end
