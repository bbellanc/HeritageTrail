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

        if(activity.activity == 'walking') activity.user.walkCount+= activity.distanceTraveled
        if(activity.activity == 'running') activity.user.runCount+= activity.distanceTraveled
        if(activity.activity == 'cycling') activity.user.cyclingCount+= activity.distanceTraveled
        if(activity.activity == 'other') activity.user.otherCount+= activity.distanceTraveled



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
        def badgeList = []

        badgeList.add '1_activity.png'

        if(activity.user.morningCount >= 10)
            badgeList.add 'morning.png'

        if(activity.user.eveningCount >= 10)
            badgeList.add 'night.png'

        if(activity.user.groupCount >= 5)
            badgeList.add 'group.png'

        if(activity.user.petCount >= 5)
            badgeList.add 'pet.png'

        if(activity.user.waterCount >= 5)
            badgeList.add 'water.png'

//        if(activity.user.morningCount >= 10)
//            badgeList.add 'active.png'

        if(activity.user.walkCount >= 10)
            badgeList.add 'walk_10.png'

        if(activity.user.walkCount >= 50)
            badgeList.add 'walk_50.png'

        if(activity.user.walkCount >= 100)
            badgeList.add 'walk_100.png'


        if(activity.user.runCount >= 10)
            badgeList.add 'run_10.png'

        if(activity.user.runCount >= 50)
            badgeList.add 'run_50.png'

        if(activity.user.runCount >= 100)
            badgeList.add 'run_100.png'


        if(activity.user.cyclingCount >= 10)
            badgeList.add 'bike_10.png'

        if(activity.user.cyclingCount >= 50)
            badgeList.add 'bike_50.png'

        if(activity.user.cyclingCount >= 100)
            badgeList.add 'bike_100.png'


        if(activity.user.otherCount >= 10)
            badgeList.add 'other_10.png'

        if(activity.user.otherCount >= 50)
            badgeList.add 'other_50.png'

        if(activity.user.otherCount >= 100)
            badgeList.add 'other_100.png'

        if(activity.user.totalNumberOfActivities >= 100)
            badgeList.add '100_activities.png'


        badgeList.unique()

        def badgeSave = ""
        badgeList.each {badge -> badgeSave+= "${badge} " }

        activity.user.badges = badgeSave

        if (activity.save(flush:true)) {
            session.user = activity.user
            redirect(controller: 'entry', action:'index')
        } else
            flash.message = "error(s) creating user"
            render(view: 'index', model: [activity: activity])
        }
}

