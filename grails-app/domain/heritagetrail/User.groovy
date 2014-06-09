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
    Integer walkCount = 0
    Integer runCount = 0
    Integer cyclingCount = 0
    Integer otherCount = 0
    Integer totalNumberOfActivities = 0
	static List securityQuestion
	String securityAnswer
	String question
    String badges = ""


    static hasMany = [entries:Entry]
	
	static constraints = {

        activityLevel(nullable:false,blank:false, size: 1..10)
		firstName(blank:false)
		lastName(nullable:false, blank:false)
		login(nullable:false, blank:false, unique:true)
		email(nullable:false, blank:false, unique:true, email:true)
		password(nullable:false, blank:false, password:true)
		password2(nullable:false, blank:false, password:true, validator: {password, obj ->
         def password2 = obj.properties['password']
         password2 == password ? true : ['heritagetrail.User.invalid.validator']
     })

		age(nullable:false, blank:false, size: 1..100)
		role(inList:["admin", "user"])
		securityAnswer(nullable:false,blank:false)
		question(blank:false)
//        badges(inList:['100_activities.png','bike_50.png', 'other_100.png', 'walk_10.png',
//                       '1_activity.png', 'group.png', 'other_50.png', 'walk_100.png',
//                       'TailOntheTrail.png', 'pet.png', 'walk_50.png',
//                       'active.png', 'morning.png',	'run_10.png', 'water.png',
//                       'bike_10.png', 'night.png', 'run_100.png',
//                       'bike_100.png','other_10.png','run_50.png'])
	}
	static {
		securityQuestion=['What is your mother\'s maiden name?',
						   'What city were you born in?',
						   'What is your father\'s middle name?',
						   'What is the make and model of your first car?']
		
	}
	
	//static transients = ['password2']
}
