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
    Integer activityLevel = 1
	String role = "user"
    Integer waterCount = 0
    Integer groupCount = 0
    Integer petCount = 0
    Integer morningCount = 0
    Integer afternoonCount = 0
    Integer eveningCount = 0
	static List securityQuestion
	String securityAnswer
	String question

	static hasMany = [entries:Entry]
	
	static constraints = {

        activityLevel(nullable:false,blank:false, size: 1..10)
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
		role(inList:["admin", "user"])
		securityAnswer(nullable:false,blank:false)
		question(blank:false)
	}
	static {
		securityQuestion=['What is your mother\'s maiden name',
						   'What city were you born in',
						   'What is your father\'s middle name',
						   'What is the make and model of your first car']
		
	}
	
	//static transients = ['password2']
}
