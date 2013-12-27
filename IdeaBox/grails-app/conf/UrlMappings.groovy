class UrlMappings {

	static mappings = {
		"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")
		
		"/login/auth" {
			controller = 'auth'
			action = 'auth'
		}
		
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
