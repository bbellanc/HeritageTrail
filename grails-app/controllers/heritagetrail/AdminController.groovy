package heritagetrail

import org.springframework.web.servlet.ModelAndView

class AdminController {

    def beforeInterceptor = {
        if(session.user != null && session.user.role != 'admin')
            redirect(controller: "entry", action: "index")
        if(session.user == null)
            redirect(controller: "user", action: "login")
    }

	def index = {
		def emailList = this.getAllEmailAddresses()
		return new ModelAndView("/admin/admin", [ emailList : emailList ])
	}

	def getProfile() {
		def startAge;
		def endAge;
		println(params.value);
		println('aaaaaaaaaaaaaaaaaaaa');
		def userResultsByUsername = User.findAllByLoginIlike("${params.value}%");
		def userResultsByLastName = User.findAllByLastNameIlike("${params.value}%");
		def userResultsByFirstName = User.findAllByFirstNameIlike("${params.value}%");
		def admins = User.findAllByRole("admin");
		
		userResultsByUsername.addAll(userResultsByLastName)
		userResultsByUsername.addAll(userResultsByFirstName)
		def user = userResultsByUsername.unique()- admins
		def emailList = this.getAllEmailAddresses()
		render(view:"admin", model:[user:user, emailList : emailList])
		
	}
	
	def createEvent(){
		
	}
	def getAllEmailAddresses(){
		def userArray = User.findAll()
		def emailList = (userArray*.email).join(',')
		return emailList
		
	}
	
	def removeUser(){
		def user = User.findByLogin(params.login)
		user.delete()
		redirect(action:'getProfile',params: [value:''])
		
	}

	
}
