package heritagetrail


class EntryController {

    def beforeInterceptor = [action: this.&auth, except: ['about']]

    def auth() {
        if (!session.user) {
            redirect(controller: "user", action: "login")
            return false
        }
    }

    def about() { render(view:'about')}

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

        activity.user.totalNumberOfActivities++


        if(activity.water) activity.user.waterCount++
        if(activity.groupActivity) activity.user.groupCount++
        if(activity.pet) activity.user.petCount++

        if(activity.time == 'morning') activity.user.morningCount++
        if(activity.time == 'afternoon') activity.user.afternoonCount++
        if(activity.time == 'evening') activity.user.eveningCount++

        if(activity.activity == 'walking') activity.user.walkCount++
        if(activity.activity == 'running') activity.user.runCount++
        if(activity.activity == 'cycling') activity.user.cyclingCount++
        if(activity.activity == 'other') activity.user.otherCount++



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

        activity.user.badges.add '1_activity.png'

        if(activity.user.morningCount >= 10)
            activity.user.badges.add 'morning.png'

        if(activity.user.eveningCount >= 10)
            activity.user.badges.add 'night.png'

        if(activity.user.groupCount >= 5)
            activity.user.badges.add 'group.png'

        if(activity.user.petCount >= 5)
            activity.user.badges.add 'pet.png'

        if(activity.user.waterCount >= 5)
            activity.user.badges.add 'water.png'

//        if(activity.user.morningCount >= 10)
//            activity.user.badges.add 'active.png'

        if(activity.user.walkCount >= 10)
            activity.user.badges.add 'walk_10.png'

        if(activity.user.walkCount >= 50)
            activity.user.badges.add 'walk_50.png'

        if(activity.user.walkCount >= 100)
            activity.user.badges.add 'walk_100.png'


        if(activity.user.runCount >= 10)
            activity.user.badges.add 'run_10.png'

        if(activity.user.runCount >= 50)
            activity.user.badges.add 'run_50.png'

        if(activity.user.runCount >= 100)
            activity.user.badges.add 'run_100.png'


        if(activity.user.cyclingCount >= 10)
            activity.user.badges.add 'bike_10.png'

        if(activity.user.cyclingCount >= 50)
            activity.user.badges.add 'bike_50.png'

        if(activity.user.cyclingCount >= 100)
            activity.user.badges.add 'bike_100.png'


        if(activity.user.otherCount >= 10)
            activity.user.badges.add 'other_10.png'

        if(activity.user.otherCount >= 50)
            activity.user.badges.add 'other_50.png'

        if(activity.user.otherCount >= 100)
            activity.user.badges.add 'other_100.png'

        if(activity.user.totalNumberOfActivities >= 100)
            activity.user.badges.add '100_activities.png'


        def badgeFix = activity.user.badges.unique()
        activity.user.badges = badgeFix


        if (activity.save()) {
            session.user = activity.user
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