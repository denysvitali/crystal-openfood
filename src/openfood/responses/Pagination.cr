module OpenFood
  class Pagination

    def initialize()
      @data = [] of OpenFood::Type
      @links = {} of String => String
    end

    JSON.mapping(
      "data": {type: Array(OpenFood::Type)},
      "links": {type: Hash(String, String)}
    )
  end
end
