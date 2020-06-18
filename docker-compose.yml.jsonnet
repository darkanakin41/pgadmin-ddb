local ddb = import 'ddb.docker.libjsonnet';

local domain = std.join('.', [std.extVar("core.domain.sub"), std.extVar("core.domain.ext")]);

ddb.Compose() {
	"services": {
        "pgadmin": ddb.Image('dpage/pgadmin4')
            + ddb.VirtualHost("80", domain, "app", certresolver=if ddb.env.is("prod") then "letsencrypt" else null)
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
