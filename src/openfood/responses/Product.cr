require "./ProductAttributes"
module OpenFood
  class Product
    JSON.mapping(
      id: String,
      type: String,
      attributes: ProductAttributes
    )
  end
end
