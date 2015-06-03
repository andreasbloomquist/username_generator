# Problem 1
def generate_username1(name)
	return name[0].downcase
end

# Problem 2
def generate_username2(first_name, last_name)
	if first_name == "" || last_name == "" 
		return nil 
	else
		return first_name.gsub(/[^A-Za-z]/, '').downcase[0] + last_name.gsub(/[^A-Za-z]/, '').downcase
	end
end

# Problem 3
def generate_username3(fn, ln, birth)
	if birth.to_s.length === 4
		generate_username2(fn, ln) + birth.to_s[2..3]
	end
end

# Problem 4
def check_privilege(id=0)
	temp = ["user", "seller", "manager", "admin"]
	privilege = Hash.new
	temp.each { |item| privilege[temp.rindex(item)] = item }
	return privilege[id]
end

# Problem 5
$users = {}

def generate_username5(fn, ln, birth)
	user = generate_username3(fn, ln, birth)
		if !($users[user])
			$users[user] = 0
			return user
		else 
			$users[user] += 1
			return user + "_" + $users[user].to_s
	end
end

puts "Enter your first name: "
first_name = gets.chomp
puts "Enter your last name: "
last_name = gets.chomp
puts "What year were you born? (ex:  1989)"
birth = gets.chomp
puts "Your user name is " + generate_username5(first_name, last_name, birth)