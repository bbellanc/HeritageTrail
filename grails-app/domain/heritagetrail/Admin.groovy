package heritagetrail

class Admin {
	static List ageBracket
	static hasMany = [users : User]
	
    static constraints = {
    }
	static {
		ageBracket=['All',
					'0-18',
				    '19-50',
				    '50+']
		
	}
	
}
