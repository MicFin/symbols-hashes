#Lets check out some more advanced uses of hashes

# we can actually have a hash as a hash value!
require 'pry'
person = {
	name: {
		first: 'Bob',
		last: 'Smith'
	},
	pets: {
		dog: 'Charlie',
		cat: 'Pepper',
		goldfish: '2chainz'
	},
	age: 24,
	married: true,
}

# if we wanted to access this person's first name, how might we do so?


# we can even have arrays as hash values!

student = {
	name: {
		first: 'Amir',
		last: 'Jacobs'
	},
	grades: [92, 82, 91, 96, 85, 91],
	age: 19,
	family: {
		size: 3,
		members: ['Mike', 'Sarah', 'Siobhan']
	}
}

student2 = {
	name: {
		first: 'Jean',
		last: 'Jones'
	},
	grades: [91, 84, 96, 92, 87, 90],
	age: 29,
	family: {
		size: 3,
		members: ['Tim', 'Suzy', 'Joe']
	}
}

students = [student, student2]

# def schoolavg(students)
# 	allgrades= []
# 	students.each do |pupil|
# 		allgrades << pupil[:grades]
# end
# allgrades = allgrades.flatten
# number_of_tests = allgrades.count
# total_of_tests = allgrades.inject{|sum,x| sum + x }
# p allgrades.sort
# puts total_of_tests.to_f / number_of_tests

# end
# puts schoolavg(students)

def get_grades(students)
	allgrades= []
	students.each do |pupil|
		allgrades << pupil[:grades]
end
return allgrades.flatten.sort
end

def avg(numbers)
	sum = 0
	numbers.each do |number|
		sum+= number.to_f
	end
	return sum/numbers.count
end

total_grades = get_grades(students)
p total_grades
puts avg(total_grades)

# allgrades [#,#],
#how would we get the student's third grade?

#how would we get the second member of this person's family?
