package heritagetrail

class Admin {
	String currentEvent
	
    static constraints = {
		currentEvent(blank:false)
    }
}
