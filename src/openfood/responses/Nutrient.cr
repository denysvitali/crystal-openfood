module OpenFood
  class Nutrient
    JSON.mapping(
      name: String,
      name_loc: {type: Hash(String, String), key: "name-translations"},
      unit: String,
      order: Int32,
      per_hundred: {type: String, key: "per-hundred", nilable: true}, # Sent as String :(
      per_day: {type: String, key: "per-day", nilable: true},
      per_portion: {type: String, key: "per-portion", nilable: true},
    )
  end
end
