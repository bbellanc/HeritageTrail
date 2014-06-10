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
		if(params.ages=='0-18'){
			startAge = 0;
			endAge = 18;
		}else if(params.ages == '19-50'){
			startAge = 19
			endAge = 50
		}else if(params.ages=='50+'){
			startAge = 51
			endAge = 110
		}else if(params.ages =='All'){
			startAge = 0
			endAge = 110
		}
		def userResultsByUsername = User.findAllByLoginIlikeAndAgeBetween("${params.value}%",startAge,endAge,[sort:'age'])
		def userResultsByLastName = User.findAllByLastNameIlikeAndAgeBetween("${params.value}%",startAge,endAge,[sort:'age'])
		def userResultsByFirstName = User.findAllByFirstNameIlikeAndAgeBetween("${params.value}%",startAge,endAge,[sort:'age'])
		
		userResultsByUsername.addAll(userResultsByLastName)
		userResultsByUsername.addAll(userResultsByFirstName)
		def user = userResultsByUsername.unique()
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

	
}
