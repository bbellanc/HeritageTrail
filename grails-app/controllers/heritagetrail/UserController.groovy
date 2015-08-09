package heritagetrail


class UserController {

	static String PASSWORD_AND_USERNAME_MISMATCH_MESSAGE = "Invalid Username or Password"
	
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
//				redirect(controller:"entry", view:"show",model:[user:user])
			}
		}else{
			flash.message = PASSWORD_AND_USERNAME_MISMATCH_MESSAGE
			redirect(action:"login")
		}
	}

	def logout = {
        session.user = null
		redirect(controller:"user", view:"login")
	}

    def settings = {
        if(session.user == null)
            redirect(controller:"user", view:"login")
        else
            render(view: "settings")
    }

	def create = {
		
		def user = new User(params)
		if(params.size() <= 3){
			render(view:'create',model:[user:user])
		}
		else{
			if(user.save()) {
                session.user = null
				redirect(action:'login')
			}
			else {
				    user.errors.each {
						println it
					}
				render(view:'create',model:[user:user])
			}
		}
			//login
	}
	

	def resetPassword= {
		flash.message = null
        render(view: 'resetPassword')
    }
	
	def checkUsernameAndEmail(){
		flash.message = null
		
		def user = User.findByEmail(params.email)
		if(user == null || !user.login.equalsIgnoreCase(params.username)){
			flash.message = PASSWORD_AND_USERNAME_MISMATCH_MESSAGE
			render(view:'resetPassword')
		}else{
		session['tempUser'] = user
		render(controller:'user', view:'resetPassword', model:[user:user]) }
		}
	
	def checkSecurityQuestion(){
		flash.message = null
            def user =session['tempUser']
            if(user.securityAnswer.equalsIgnoreCase(params.securityAnswer)){
            render(view:"setNewPassword",model:[user:user])}
            else {
                flash.message = "Invalid Selection"
                render(view: 'resetPassword',model:[user:user])
            }
	}
	
	def forgotPassword(){
		flash.message = null
		render(view:"login")
		setPassword()
		//session['tempUser'] = null
		
		}
	
	
	def deleteUser(){
        if (session.user == null)
            redirect(controller: "user", view: "login")
        else {
            def user = session['user']
            this.logout()
            user.delete()
        }
	}
	
	def setPassword() {
		def user
            if (params.password1 != params.password2) {
                flash.message = "Passwords do not match"
                render(view: "setNewPassword")
            }else if(params.password1==''||params.password2==''){
			    flash.message = "Invalid password"
                render(view: "setNewPassword")
			}
			 else {
				if(session['user']==null)
                	user = User.findByLogin(session['tempUser'].login)
				else
					user = User.findByLogin(session['user'].login)
                user.password = params.password1
                user.password2 = params.password2
                user.save()
                flash.message = "Password has been Reset"
            }
        }
    
	def setUserPassword(){

        if (session.user == null)
            redirect(controller: "user", view: "login")

        else {
            this.setPassword()
            render(view: 'settings')
        }
	}
	
	def setNewEmail() {
        if (session.user == null)
            redirect(controller: "user", view: "login")

        else {
            def user = User.findByLogin(session['user'].login)
            user.email = params.email
			if(user.save())
            	flash.message = "Email Saved"
			else{
				if(User.findByEmail(params.email)!= null)
					flash.message="Email address already exists"
				else
					flash.message= "Invalid Email Address"
				}			
				
			render(view: 'settings')
        }
    }
	
}
