package heritagetrail

class AdminController {

	def index = {
		render(view: "admin")
	}
	
	def getStatData ={
		render(view: "userDataExample")
	}
	
}
 
