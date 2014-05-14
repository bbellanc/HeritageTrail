package heritagetrail

import org.springframework.web.servlet.ModelAndView

class AdminController {

	def index = {
		def allEvents = Event.findAll()
		println Event.findAll()
		return new ModelAndView("/admin/admin", [ allEvents : allEvents ])
//		render(view: "admin")
	}

	def getProfile() {
		def userResultsByUsername = User.findAllByLoginIlike("${params.value}%")
		def userResultsByLastName = User.findAllByLastNameIlike("${params.value}%")
		def userResultsByFirstName = User.findAllByFirstNameIlike("${params.value}%")
		
		userResultsByUsername.addAll(userResultsByLastName)
		userResultsByUsername.addAll(userResultsByFirstName)
		def user = userResultsByUsername.unique()
		render(view:"admin", model:[user:user])
		
	}
	
	def createEvent(){
		
	}
	
}
