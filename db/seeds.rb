# Employees

employee1 = Employee.create!(
  fname: "John",
  lname: "Frankfurt",
  dob: Date.new(1977,5,2),
  empid: "789234"
)

employee2 = Employee.create!(
  fname: "Alice",
  lname: "Stapleton",
  dob: Date.new(1980,2,2),
  empid: "789912"
)

employee3 = Employee.create!(
  fname: "Jason",
  lname: "Deisel",
  dob: Date.new(1972,1,23),
  empid: "789208"
)

employee4 = Employee.create!(
  fname: "Jeff",
  lname: "Yukon",
  dob: Date.new(1960,8,17),
  empid: "713732"
)

employee5 = Employee.create!(
  fname: "Katie",
  lname: "DaVinci",
  dob: Date.new(1990,12,25),
  empid: "789235"
)

employee6 = Employee.create!(
  fname: "Tom",
  lname: "Ronson",
  dob: Date.new(1979,7,11),
  empid: "782738"
)

employee7 = Employee.create!(
  fname: "Kristin",
  lname: "Bamford",
  dob: Date.new(1980,11,24),
  empid: "783729"
)

employee8 = Employee.create!(
  fname: "Maria",
  lname: "Ripley",
  dob: Date.new(1993,5,5),
  empid: "789555"
)

employee9 = Employee.create!(
  fname: "Martin",
  lname: "Tall",
  dob: Date.new(1990,3,15),
  empid: "789123"
)

employee10 = Employee.create!(
  fname: "Jessie",
  lname: "Bocanegra",
  dob: Date.new(1994,9,19),
  empid: "789987"
)

# Projects

project1 = Project.create!(
  title: "Reconfigure Website Design",
  description: "Update the website design of seven-eleventy.com."
)

project2 = Project.create!(
  title: "AI Product Sorting Algorithm",
  description: "Scamazon needs a new sorting algorithm to make their warehouses more efficient."
)

project3 = Project.create!(
  title: "Macrosoft Phrase",
  description: "Macrosoft wants to break into the profitable world of 'word processing', and they've hired us to help them do it."
)
