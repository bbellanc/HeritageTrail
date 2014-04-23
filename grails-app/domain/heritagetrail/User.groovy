package heritagetrail

class User {
	String firstName
	String lastName
	String login
	String password
	String password2
	String email
	Integer points = 0
	Integer age
	String ageBracket
	String role = "user"

	static hasMany = [entries:Entry]
	
	static constraints = {
		firstName(blank:false)
		lastName(nullable:false, blank:false)
		login(nullable:false, blank:false, unique:true)
		email(nullable:false, blank:false, unique:true, email:true)
		password(nullable:false, blank:false, password:true, validator: {password, obj ->
         def password2 = obj.properties['password2']
         if(password2 == null) return true // skip matching password validation (only important when setting/resetting pass)
         password2 == password ? true : ['invalid.matchingpasswords']
     })
		age(nullable:false, blank:false)
		ageBracket(nullable:false, blank:false)
		role(inList:["admin", "user"])
	}
	
	//static transients = ['password2']
}
