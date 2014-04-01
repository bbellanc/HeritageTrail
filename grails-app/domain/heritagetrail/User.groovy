package heritagetrail

class User {
	String firstName
	String lastName
	String login
	String password
	Integer points = 0
	Integer age
	String ageBracket
	String role = "user"

	static hasMany = [entries:Entry]
	
	static constraints = {
		firstName(nullable:false, blank:false)
		lastName(nullable:false, blank:false)
		login(nullable:false, blank:false, unique:true)
		password(nullable:false, blank:false, password:true)
		age(nullable:false, blank:false)
		ageBracket(nullable:false, blank:false)
		role(inList:["admin", "user"])
	}
}
