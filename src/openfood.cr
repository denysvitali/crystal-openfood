require "./openfood/*"

module OpenFood
  @@locale = "en"

  def initialize(locale = "en")
    @@locale = locale
  end

  def self.getProducts(count : Int32 = 20, page : Int32 = 1,  locale=@@locale, barcodes : Array(String) = [] of String)
    params =
    {
      "page[number]" => "#{page}",
      "page[size]" => "#{count}",
      "locale" => "#{locale}",
      "barcodes" => barcodes
    }
    result = OpenFood::Request.get("/products", params)
    if result
      Pagination.from_json(result)
    else
      Pagination.new
    end
  end
end
