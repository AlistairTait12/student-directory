# Example array of students
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]

def input_students
  puts "Please enter the names of the students\n To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while name is not empty, repeat this code
  while !name.empty? do
    # add the student to the array of hashes
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} #{students.count < 2 ? "student" : "students" }"
    # get another name from the user
    name = gets.chomp
  end
  # return array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------------------------"
end

def print_names(names)
  names.each {|name| puts "#{name[:name]} (#{name[:cohort]} cohort)"}
end

def print_footer(names)
  # Finally, we print the total number of students
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print_names(students)
print_footer(students)