package heritagetrail

import org.springframework.web.servlet.ModelAndView

class EntryController {

    def beforeInterceptor = [action: this.&auth, except: ['about']]

    def auth() {
        if(session.user != null && session.user.role == 'admin')
            redirect(controller: "admin", action: "index")
        if (!session.user) {
            redirect(controller: "user", action: "login")
            return false
        }
    }

    def about() { render(view:'about')}

    def index() {

        ArrayList badgeList = []


        badgeList << [session.user.morningCount,10,'morning.png','morning activity points']

        badgeList << [session.user.eveningCount,10,'night.png', 'evening activity points']

        badgeList << [session.user.groupCount,5,'group.png', 'group activity points']

        badgeList << [session.user.petCount,5,'pet.png', 'pet activity points']

        badgeList << [session.user.waterCount,5,'water.png','water activity points']

//        activity.user.morningCount , 10)
//            badgeList.add 'active.png'

        badgeList << [session.user.walkCount , 10,'walk_10.png', 'walking points']

        badgeList << [session.user.walkCount , 50,'walk_50.png', 'walking points']

        badgeList << [session.user.walkCount , 100, 'walk_100.png', 'walking points']

        badgeList << [session.user.runCount , 10, 'run_10.png', 'running points']

        badgeList << [session.user.runCount , 50, 'run_50.png', 'running points']

        badgeList << [session.user.runCount , 100, 'run_100.png', 'running points']

        badgeList << [session.user.cyclingCount , 10, 'bike_10.png', 'cycling points']

        badgeList << [session.user.cyclingCount , 50, 'bike_50.png', 'cycling points']

        badgeList << [session.user.cyclingCount , 100,  'bike_100.png', 'cycling points']

        badgeList << [session.user.otherCount , 10, 'other_10.png', 'other points']

        badgeList << [session.user.otherCount , 50, 'other_50.png', 'other points']

        badgeList << [session.user.otherCount,100,'other_100.png', 'other points']

        badgeList << [session.user.totalNumberOfActivities,100,'100_activities.png', 'activities logged']

        badgeList << [0,0,'active.png', '"days in a row" points']


        def activities = Entry.findAllByUser(session.user, [max:5, sort:"id", order:"desc"]);
        activities.each {
            if(it.activity == "walking") it.activity = "walked";
            else if(it.activity == "running") it.activity = "ran";
            else if(it.activity == "cycling") it.activity = "cycled";
            else if(it.activity == "other") it.activity = "were active for";
        }
        return new ModelAndView("/entry/index", [activities: activities, allBadges: badgeList ])
    }

    def addActivity() {

        if (params.water != null) params.water = true
        else params.water = false

        if (params.groupActivity != null) params.groupActivity = true
        else params.groupActivity = false

        if (params.pet != null) params.pet = true
        else params.pet = false

        def currentLogin = params.login

        def activity = new Entry(params)

        activity.activityDate = new Date().format('MM/dd/yy');

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

        if(!activity.user.badges.contains('1_activity.png'))
        badgeList.add '1_activity.png'

        if(activity.user.morningCount >= 10 && !activity.user.badges.contains('morning.png'))
            badgeList.add 'morning.png'

        if(activity.user.eveningCount >= 10 && !activity.user.badges.contains('night.png'))
            badgeList.add 'night.png'

        if(activity.user.groupCount >= 5 && !activity.user.badges.contains('group.png'))
            badgeList.add 'group.png'

        if(activity.user.petCount >= 5 && !activity.user.badges.contains('pet.png'))
            badgeList.add 'pet.png'

        if(activity.user.waterCount >= 5 && !activity.user.badges.contains('water.png'))
            badgeList.add 'water.png'

//        if(activity.user.morningCount >= 10)
//            badgeList.add 'active.png'

        if(activity.user.walkCount >= 10 && !activity.user.badges.contains('walk_10.png'))
            badgeList.add 'walk_10.png'

        if(activity.user.walkCount >= 50 && !activity.user.badges.contains('walk_50.png'))
            badgeList.add 'walk_50.png'

        if(activity.user.walkCount >= 100 && !activity.user.badges.contains('walk_100.png'))
            badgeList.add 'walk_100.png'


        if(activity.user.runCount >= 10 && !activity.user.badges.contains('run_10.png'))
            badgeList.add 'run_10.png'

        if(activity.user.runCount >= 50 && !activity.user.badges.contains('run_50.png'))
            badgeList.add 'run_50.png'

        if(activity.user.runCount >= 100 && !activity.user.badges.contains('run_100.png'))
            badgeList.add 'run_100.png'


        if(activity.user.cyclingCount >= 10 && !activity.user.badges.contains('bike_10.png'))
            badgeList.add 'bike_10.png'

        if(activity.user.cyclingCount >= 50 && !activity.user.badges.contains('bike_50.png'))
            badgeList.add 'bike_50.png'

        if(activity.user.cyclingCount >= 100 && !activity.user.badges.contains('bike_100.png'))
            badgeList.add 'bike_100.png'


        if(activity.user.otherCount >= 10 && !activity.user.badges.contains('other_10.png'))
            badgeList.add 'other_10.png'

        if(activity.user.otherCount >= 50 && !activity.user.badges.contains('other_50.png'))
            badgeList.add 'other_50.png'

        if(activity.user.otherCount >= 100 && !activity.user.badges.contains('other_100.png'))
            badgeList.add 'other_100.png'

        if(activity.user.totalNumberOfActivities >= 100 && !activity.user.badges.contains('100_activities.png'))
            badgeList.add '100_activities.png'


        badgeList.unique()

        def badgeSave = ""
        badgeList.each {badge -> badgeSave+= "${badge} " }

        if ((activity.user.badges+badgeSave).size() > activity.user.badges.size()) {
            session.badges = badgeSave
        }
        else
            session.badges = null

        activity.user.badges += badgeSave

        if (activity.save(flush:true)) {
            session.user = activity.user
            redirect(controller: 'entry', action:'index')
        } else
            flash.message = "error(s) creating user"
            render(view: 'index', model: [activity: activity])
        }
}

