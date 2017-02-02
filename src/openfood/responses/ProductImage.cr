module OpenFood
  class ProductImage
    JSON.mapping(
      categories: Array(String),
      thumb: String,
      medium: String,
      large: String,
      xlarge: String
    )
  end
end
