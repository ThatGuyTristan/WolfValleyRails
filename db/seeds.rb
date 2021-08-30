PropertyComplex.create(name: "Wolf Valley", description: "A modest apartment complex in north-western Utah.")

ComplexAddress.create(street: "1600 Highover Ln", city: "Salt Lake City", state: "UT", zip: "84848")

20.times do |i|
    Resident.create(
        property_complex_id: PropertyComplex.count,
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name,
        middle_initial: Faker::Name.initials(number: 1),
        dob: Faker::Date.birthday(min_age: 18, max_age: 105),
        status: 2
    )
end