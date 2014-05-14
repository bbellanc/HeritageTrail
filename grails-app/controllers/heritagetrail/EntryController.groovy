package heritagetrail


class EntryController {

	def beforeInterceptor = [action:this.&auth, except:[]]
	
	  def auth() {
		if(!session.user) {
		  redirect(controller:"user", action:"login")
		  return false
		}
	  }
    def index() {}

    def addActivity() {

        if(params.water != null) params.water = false
        else params.water = true

        if(params.stroller != null) params.stroller = false
        else params.stroller = true

        if(params.groupActivity != null) params.groupActivity = false
        else params.groupActivity = true

        if(params.pet != null) params.pet = false
        else params.pet = true

        def activity = new Entry(params)
        activity.save()
        print activity

    }
    }

