class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(action: "fraseAleatoria",controller: 'timeline')
		"500"(view:'/error')
	}
}
