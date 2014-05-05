package heritagetrail

class AdminController {

	def index = {
		render(view: "admin")
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
	
}
