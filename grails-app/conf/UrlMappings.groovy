class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"entry" ,action: "/about")
        "500"(view:'/error')
	}
}
