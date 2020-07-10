#User Stories

As a user I can, 
##MVP
- user pick a beer and get description (first level)
- user can see food that goes with thier selection (second level)

## Stretch features 
- user can enter a beer to search the description
- add scroll feature (need to find gem)
- user can search for beers by hop
- Data to parse: 
"ingredients"=>
   {"malt"=>
     [{"name"=>"Maris Otter Extra Pale", "amount"=>{"value"=>3.3, "unit"=>"kilograms"}},
      {"name"=>"Caramalt", "amount"=>{"value"=>0.2, "unit"=>"kilograms"}},
      {"name"=>"Munich", "amount"=>{"value"=>0.4, "unit"=>"kilograms"}}],
    "hops"=>
     [{"name"=>"Fuggles", "amount"=>{"value"=>25, "unit"=>"grams"}, "add"=>"start", "attribute"=>"bitter"},
      {"name"=>"First Gold", "amount"=>{"value"=>25, "unit"=>"grams"}, "add"=>"start", "attribute"=>"bitter"},
      {"name"=>"Fuggles", "amount"=>{"value"=>37.5, "unit"=>"grams"}, "add"=>"middle", "attribute"=>"flavour"},
      {"name"=>"First Gold", "amount"=>{"value"=>37.5, "unit"=>"grams"}, "add"=>"middle", "attribute"=>"flavour"},
      {"name"=>"Cascade", "amount"=>{"value"=>37.5, "unit"=>"grams"}, "add"=>"end", "attribute"=>"flavour"}],

      "food_pairing"=>["Spicy chicken tikka masala", "Grilled chicken quesadilla", "Caramel toffee cake"]

#CLI Classes 
