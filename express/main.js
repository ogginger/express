//node_main.js: Main logic for Node application.
/* This file depends on nodejs and the nodejs module requirejs. */

var requirejs = require("requirejs");
var config = require("./require_config");

requirejs.config(config);

requirejs([
	"express"
], function(
	express
) {
	console.log("Main initialized successfully!");
	var app = express();

	app.get("/", function( request, response ) {
		response.send("Success!");
	});

	app.listen( 80, function() {
		console.log("Expresss started. Listening on port 80.");
	});
});
