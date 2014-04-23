import heritagetrail.User

class BootStrap {

    def init = { servletContext ->
		
		def admin = new User(firstName:"Site", lastName:"Admin",login:"admin", password:"password",password2:"password",email:"blank@blank.com", age: 0, ageBracket:"0-100", role: "admin")
		admin.save()
    }
    def destroy = {
    }
}
