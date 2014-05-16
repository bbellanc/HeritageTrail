package heritagetrail

class Entry {
    String time
    String activity
    boolean water
    boolean groupActivity
    boolean pet
    Integer distanceTraveled
    Date activityDate

    static belongsTo = [user:User]

    static constraints = {
        water(size: 1..10)
        groupActivity(size: 1..5)
        pet(size: 1..10)
    }
}
