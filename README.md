# openfood

Crystal module for [openfood.ch](https://www.openfood.ch/)  

>OpenFood is an independent and open database of barcoded edible products sold in Switzerland. It is maintained by the Digital Epidemiology Laboratory of EPFL and gratefully acknowledges access to the shops of Coop and Migros (Switzerland).

This module is still in development, contribute if you can :+1:

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  openfood:
    github: denysvitali/openfood
```

## Usage

```crystal
require "openfood"
```

### getProducts
```crystal
result = OpenFood.getProducts(50) #Gets 50 products
# result is of type OpenFood::Pagination
result.data.each do |el|
  # el is of type OpenFood::Product (see src/openfood/responses/Product.cr)
  if el.attributes.name != nil
    puts el.attributes.name
  end
end
```


## Contributing

1. Fork it ( https://github.com/denysvitali/openfood/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [denysvitali](https://github.com/denysvitali) Denys Vitali - creator, maintainer
