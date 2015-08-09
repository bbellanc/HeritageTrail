package heritagetrail

class EventController {

    def index() { }
	
	def createEvent() {
		def event = new Event(params)
		
		if(event.save){
		}
	}
	
	def getEvents() {
		def event = Event.findAll()
		render(view:"admin", model:[event:event])
	}
	
	def setEvent() {
	  
	}
}
