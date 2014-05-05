package heritagetrail


class UserController {

	def index = {
		redirect(action: "login", params: params)
	}
	def login = {}

	def authenticate = {
		def user = User.findByLoginAndPassword(params.login, params.password)
		def event = Event.findWhere(currentEvent:true)
		if(user){
			session.user = user
			session.event = event
			flash.message = "Hello ${user.firstName}!"

			if(user.role == "admin"){
				redirect(controller:"admin", view:"admin")
				}
			else{
				redirect(controller:"entry", view:"show")
			}
		}else{
			flash.message = "Sorry, ${params.login}. Please try again."
			redirect(action:"login")
		}
	}

	def logout = {
		flash.message = "Goodbye ${session.user.firstName}"
		session.user = null
		redirect(controller:"user", view:"login")
	}


	def create(){
		if(params.size() <= 3){
			render(view:'create')
		}

		else{
			def user = new User(params)

			if(user.age < 20){
				user.ageBracket = "0-20"
			}
			else if(user.age < 40){
				user.ageBracket = "21-40"
			}
			else if(user.age < 60){
				user.ageBracket = "41-60"
			}
			else{
				user.ageBracket= "61+"
			}
			if(user.save()) {
				redirect(action:'login')
			}
			else {
				flash.message = "error(s) creating user"
				render(view:'create',model:[user:user])
			}
		}
		//login
	}

	def resetPassword={ render(view:'resetPassword') }
}
