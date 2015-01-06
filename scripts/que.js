#!/usr/bin/env node

/**
 * Author Juho Heinisuo
 * http://github.com/juhohei
 * Version: 0.0.1
 **/

var fs = require('fs');

function que(config, template, output) {
	if (process.argv.length !== 5) {
		usage();
		return;
	}

	// Read config
	fs.readFile(config, 'utf-8', function(err, data) {
		if (err) {
			throw err;
		}

		var cfg = JSON.parse(data);

		// Read template
		fs.readFile(template, 'utf-8', function(err, data) {
			if (err) {
				throw err;
			}
			
			// Substitute variables with values
			var input = replaceVars(cfg, data);

			// Write file
			fs.writeFile(output, input, function(err) {
				if (err) {
					throw err;
				} else {
					console.log("File saved as " + output + ".");
				}
			});
		});
	});
}

function usage() {
	console.log("\nque.js\n" +
			"usage:\n" +
			"\tque.js <config> <template> <output>\n\n" +
			"- use a json config file with variable " +
			"names as keys and desired output as values\n" +
			"- use a file with a variable syntax of " +
			"?variable_name?\n" +
			"- substitute variable_name for anything in " +
			"[a-zA-Z0-9_-]\n" +
			"- define a output file, e.g. style.css\n"+
			"- the program then writes an output file " +
			"with the variables in template substituted " +
			"with actual values defined in config file\n");
}

function replaceVars(config, file) {
	var re, value;
	var keys = Object.keys(config);
	for (var i = 0; i < keys.length; i++) {
		re = new RegExp("\\?" + keys[i] + "\\?", "g");
		value = config[keys[i]];
		file = file.replace(re, value);
	}
	return file;
}

var a1 = process.argv[2],
    a2 = process.argv[3],
    a3 = process.argv[4];

que(a1, a2, a3);
