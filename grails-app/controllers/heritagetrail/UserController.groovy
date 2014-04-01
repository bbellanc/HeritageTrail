package heritagetrail


class UserController {
	
	def index = {
	redirect(action: "login", params: params)
	}
	def login = {}
	
	def authenticate = {
	  def user = User.findByLoginAndPassword(params.login, params.password)
	  if(user){
		session.user = user
		flash.message = "Hello ${user.firstName}!"
		redirect(controller:"entry", view:"show")
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
		} else {
			render(view:'create')
		}
		//login
	}
	
	/*

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userInstance.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userInstance.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    */
}
