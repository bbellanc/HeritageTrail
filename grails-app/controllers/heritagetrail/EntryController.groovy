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

        if(params.groupActivity != null) params.groupActivity = false
        else params.groupActivity = true

        if(params.pet != null) params.pet = false
        else params.pet = true

        def currentLogin = params.login

        def activity = new Entry()
        activity.time = params.time
        activity.activity = params.activity
        activity.water = params.water
        activity.groupActivity = params.groupActivity
        activity.pet = params.pet
        activity.distanceTraveled = params.distanceTraveled
        activity.user = session.user

        if(activity.save()) {


        }
        else
            println "FAILED!!!!"
    }
    }
