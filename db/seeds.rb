Floor.delete_all
Outlet.delete_all
Bathroom.delete_all


floors = [
  {
    "level" => 'Lower Level',
    "totalnumoutlets" => 8,
    "totalavailslots" => 16,
    "totalnumbath" => 2,
    "totalavailbath" => 2
  },
  {
    "level" => 'First Floor',
    "totalnumoutlets" => 6,
    "totalavailslots" => 12,
    "totalnumbath" => 2,
    "totalavailbath" => 2
  },
  {
    "level" => 'Second Floor',
    "totalnumoutlets" => 26,
    "totalavailslots" => 52,
    "totalnumbath" => 4,
    "totalavailbath" => 4
  }
]


for floor_data in floors
  f = Floor.new
  f.level = floor_data["level"]
  f.totalnumoutlets = floor_data["totalnumoutlets"]
  f.totalavailslots = floor_data["totalavailslots"]
  f.totalnumbath = floor_data["totalnumbath"]
  f.totalavailbath = floor_data["totalavailbath"]
  f.save
end


outlets = [
  {
    "floor_id" => 1,
    "location" => 'Bottom of lower Spanish Steps',
    "numoutlets" => 2,
    "availslots" => 4
  },
  {
    "floor_id" => 1,
    "location" => 'Innovation Lab',
    "numoutlets" => 6,
    "availslots" => 12
  },
  {
    "floor_id" => 2,
    "location" => 'White tables near marketplace',
    "numoutlets" => 6,
    "availslots" => 12
  },
  {
    "floor_id" => 3,
    "location" => 'White tables near White Auditorium',
    "numoutlets" => 6,
    "availslots" => 12
  },
  {
    "floor_id" => 3,
    "location" => 'Quiet study room',
    "numoutlets" => 20,
    "availslots" => 40
  },
]

for outlet_data in outlets
  o = Outlet.new
  o.floor_id = outlet_data["floor_id"]
  o.location = outlet_data["location"]
  o.numoutlets = outlet_data["numoutlets"]
  o.availslots = outlet_data["availslots"]
  o.save
end

bathrooms = [
  {
    "floor_id" => 1,
    "location" => 'Near L100 hallway',
    "gender" => 'Men',
    "numstalls" => 6,
    "availstalls" => 6,
    "numurinals" => 4,
    "availurinals" => 4
  },
  {
    "floor_id" => 1,
    "location" => 'Near L100 hallway',
    "gender" => 'Women',
    "numstalls" => 8,
    "availstalls" => 8,
    "numurinals" => 0,
    "availurinals" => 0 
  },
  {
    "floor_id" => 2,
    "location" => 'Behind Spanish Steps',
    "gender" => 'Men',
    "numstalls" => 4,
    "availstalls" => 4,
    "numurinals" => 4,
    "availurinals" => 4
  },  {
    "floor_id" => 2,
    "location" => 'Behind Spanish Steps',
    "gender" => 'Women',
    "numstalls" => 8,
    "availstalls" => 8,
    "numurinals" => 0,
    "availurinals" => 0
  },
  {
    "floor_id" => 3,
    "location" => 'Next to White Auditorium',
    "gender" => 'Men',
    "numstalls" => 6,
    "availstalls" => 6,
    "numurinals" => 4,
    "availurinals" => 4
  },
  {
    "floor_id" => 3,
    "location" => 'Next to White Auditorium',
    "gender" => 'Women',
    "numstalls" => 10,
    "availstalls" => 10,
    "numurinals" => 0,
    "availurinals" => 0
  },
  {
    "floor_id" => 3,
    "location" => 'In 2400 hallway',
    "gender" => 'Men',
    "numstalls" => 1,
    "availstalls" => 1,
    "numurinals" => 2,
    "availurinals" => 2
  },
  {
    "floor_id" => 3,
    "location" => 'In 2400 hallway',
    "gender" => 'Women',
    "numstalls" => 2,
    "availstalls" => 2,
    "numurinals" => 0,
    "availurinals" => 0
  }
]

for bath_data in bathrooms
  b = Bathroom.new
  b.floor_id = bath_data["floor_id"]
  b.location = bath_data["location"]
  b.gender = bath_data["gender"]
  b.numstalls = bath_data["numstalls"]
  b.availstalls = bath_data["availstalls"]
  b.numurinals = bath_data["numurinals"]
  b.availurinals = bath_data["availurinals"]
  b.save
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
