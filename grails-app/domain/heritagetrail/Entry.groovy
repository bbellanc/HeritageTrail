package heritagetrail

class Entry {
    String time
    String activity
    boolean water
    boolean groupActivity
    boolean pet
    Integer distanceTraveled

    static belongsTo = [user:User]

    static constraints = {
    }
}
