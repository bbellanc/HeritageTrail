package heritagetrail


class EntryController {

	def beforeInterceptor = [action:this.&auth, except:[]]
	
	  def auth() {
		if(!session.user) {
		  redirect(controller:"user", action:"login")
		  return false
		}
	  }
    def index() {
		
    }
    }

