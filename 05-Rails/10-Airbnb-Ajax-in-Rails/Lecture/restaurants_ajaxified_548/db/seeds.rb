ap 'Creating restaurants...'
  Restaurant.create!({
    name: "Le Dindon en Laisse",
    address: "18 Rue Beautreillis, 75004 Paris, France"
  })
  Restaurant.create!({
    name: "Neuf et Voisins",
    address: "Van Arteveldestraat 1, 1000 Brussels, Belgium"
  })
ap 'Finished!'


100.times do |i|
   Restaurant.create!({
    name: "restaurant #{i}",
    address: "address #{i}"
  })
end
