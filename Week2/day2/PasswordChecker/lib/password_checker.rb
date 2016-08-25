class PasswordChecker


	def check_password(email, password)

		name = email.split("@")[0]
		domain = email.split("@")[1].split(".")[0]

		return 	(password.length >= 7) && 
		(/[[:alpha:]]/.match(password) != nil) && 
		(/[[:digit:]]/.match(password) != nil) && 
		(/[[:punct:]]/.match(password) != nil) &&
		(/[[:upper:]]/.match(password) != nil) &&
		(/[[:lower:]]/.match(password) != nil) &&
		!password.include?(name) &&
		!password.include?(domain)
		
	end

end