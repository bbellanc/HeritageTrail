package heritagetrail


class UserController {

	def index = {
		redirect(action: "login", params: params)
	}
	def login = {if(session.user != null) redirect(controller:"entry", view: "index") }

	def authenticate = {
		def user = User.findByLoginAndPassword(params.login, params.password)
		def event = Event.findWhere(currentEvent:true)
		if(user){
			session.user = user
			session.event = event
			flash.message = "Hello ${user.firstName}!"

			if(user.role == "admin"){
				redirect(controller:"admin", view:"index")
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

    def settings = {
        render(view: "settings")
    }

		def create(){

		def user = new User(params)

			if(user.save()) {
				redirect(action:'login')
			}
	
			else{
				
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
	
	def checkUsernameAndEmail(){
		flash.message = null
		
		def user = User.findByEmail(params.email)
//		println(user)
//		println(params)
		if(user == null || !user.login.equalsIgnoreCase(params.username)){
			flash.message = PASSWORD_AND_USERNAME_MISMATCH_MESSAGE
			render(view:'resetPassword')
		}else{
		session['user'] = user
		render(controller:'user', view:'resetPassword', model:[user:user]) }
		}
	
	def checkSecurityQuestion(){
		println(params)
		def user = session['user']
		if(user.securityAnswer == params.securityAnswer){
		render(view:"setNewPassword")}
		else{
			flash.message = "Invalid Selection"
			render(view:'resetPassword')
		}
	}
	
	def setNewPassword(){
		flash.message = null
		setPassword()
		if(flash.message == null){
		session['user'] = null
		flash.message = "Password has been Reset"
		render(view:"login")}
		}
	
	
	def deleteUser(){		
		def user = session['user']
		this.logout()
		user.delete()		
	}
	
	def setPassword(){
		println(params)
		if(params.password1 != params.password2){
			flash.message = "Passwords do not match"
			render(view:"setNewPassword")
		}else{
			def user = User.findByLogin(session['user'].login)
			user.password = params.password1
			user.password2 = params.password2
			user.save()}
		}
}
