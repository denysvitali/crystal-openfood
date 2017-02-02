module OpenFood
  class ProductAttributes
    JSON.mapping(
      name: {type: String, nilable: true},
      name_loc: {type: Hash(String,String), key: "name-translations", nilable: true},
      barcode: {type: String, nilable: true},
      status: String, # draft, complete
      unit: {type: String, nilable: true},
      portion_unit: {type: String, key: "portion-unit", nilable: true},
      quantity: {type: String, nilable: true}, #Is sent as string!
      portion_quantity: {type: String, key: "portion-quantity", nilable: true},
      images: Array(ProductImage),
      nutrients: Array(Nutrient),
      # origins ?
      ingredients: {type: String, nilable: true},
      ingredients_loc: {type: Hash(String, String), key: "ingredients-translations", nilable: true}
    )
  end
end
