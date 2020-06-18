local ddb = import 'ddb.docker.libjsonnet';

ddb.Compose() {
	"services": {
        "pgadmin":
            ddb.Image('dpage/pgadmin4')
		    + {
                "environment": {
                    "PGADMIN_DEFAULT_EMAIL": "darkanakin41@gmail.com",
                    "PGADMIN_DEFAULT_PASSWORD": "azerty123",
                },
			    "volumes": [
				    "pgadmin:/root/.pgadmin",
				]
			}
	}
}
