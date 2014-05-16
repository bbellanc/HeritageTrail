package heritagetrail


class EntryController {

    def beforeInterceptor = [action: this.&auth, except: []]

    def auth() {
        if (!session.user) {
            redirect(controller: "user", action: "login")
            return false
        }
    }

    def index() {}

    def addActivity() {

        if (params.water != null) params.water = true
        else params.water = false

        if (params.groupActivity != null) params.groupActivity = true
        else params.groupActivity = false

        if (params.pet != null) params.pet = true
        else params.pet = false

        def currentLogin = params.login

        def activity = new Entry(params)

        activity.activityDate = new Date();

        activity.user = User.findById(session.user.id)

        def points_earned = (activity.user.age >= 50) ? (2 * activity.distanceTraveled) : (1 * activity.distanceTraveled)
        activity.user.points += points_earned


        if(activity.water) activity.user.waterCount = activity.user.waterCount++
        if(activity.groupActivity) activity.user.groupCount++
        if(activity.pet) activity.user.petCount++

        if(activity.time == 'morning') activity.user.morningCount++
        if(activity.time == 'afternoon') activity.user.afternoonCount++
        if(activity.time == 'evening') activity.user.eveningCount++

        switch(activity.user.points) {
            case{it < 10}:
                activity.user.activityLevel = 1
                break
            case {it >= 10 && it < 15}:
                activity.user.activityLevel = 2
                break
            case {it >= 15 && it < 25}:
                activity.user.activityLevel = 3
                break
            case {it >= 25 && it < 45}:
                activity.user.activityLevel = 4
                break
            case {it >= 45 && it < 75}:
                activity.user.activityLevel = 5
                break
            case {it >= 75 && it < 115}:
                activity.user.activityLevel = 6
                break
            case {it >= 115 && it < 200}:
                activity.user.activityLevel = 7
                break
            case {it >= 200 && it < 325}:
                activity.user.activityLevel = 8
                break
            case {it >= 325 && it < 500}:
                activity.user.activityLevel = 9
                break
            case {it >= 500}:
                activity.user.activityLevel = 10
                break
        }



        session.user = activity.user

        if (activity.save()) {
            redirect(controller: 'entry', action:'index')
        } else
            flash.message = "error(s) creating user"
            render(view: 'index', model: [activity: activity])
        }
}



//        activity.time = params.time
//        activity.activity = params.activity
//        activity.water = params.water
//        activity.groupActivity = params.groupActivity
//        activity.pet = params.pet
//        activity.distanceTraveled = params.distanceTraveled