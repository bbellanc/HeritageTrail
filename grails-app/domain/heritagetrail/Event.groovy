package heritagetrail

class Event {
	String title
	String description
	Boolean currentEvent = false
	
    static constraints = {
		title(blank:false)
		description(blank:false)
    }
}
