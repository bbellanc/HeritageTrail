package heritagetrail

class Admin {
	static List ageBracket
	static hasMany = [users : User]
	
    static constraints = {
    }
	static {
		ageBracket=['All','2-5','6-10','11-16','17-30','31-51','51-65','66+']
	}
	
}
