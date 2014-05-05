import heritagetrail.Admin
import heritagetrail.Event
import heritagetrail.User

class BootStrap {

    def init = { servletContext ->
		
		def defaultAdmin = new User(firstName:"Site", lastName:"Admin",login:"admin", password:"password",password2:"password",email:"blank@blank.com", age: 0, ageBracket:"0-100", role: "admin")
		defaultAdmin.save()
		
		def currentEvent = new Event(title:"Trek the Trail: Memorial Day Event",description:"Get fit on Wheeling's Heritage trail this summer!",currentEvent:true)
		currentEvent.save()
    }	
	
    def destroy = {
    }
}
