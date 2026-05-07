return {
	cmd = { 'gopls' },

	settings = {
		gopls = {
			buildFlags =  {
				"-tags=test"
			},
			staticcheck =  true
		}
	}
}
