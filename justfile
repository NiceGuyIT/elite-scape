# All arguments will be passed as positional arguments.
set positional-arguments := true
# Use Nushell for all shells
set shell := ['nu', '--no-config-file', '--commands']
# The export setting causes all just variables to be exported as environment variables. Defaults to false.
set export := true


# JUST_DIR is the directory of this justfile.
export JUST_DIR := justfile_directory()
# JUST_CURRENT_DIR it the invocation direcotry where the just command was run.
export JUST_INVOCATION_DIR := invocation_directory_native()


# default recipe to display help information
# just list will fallback to the parent justfile and list recipes only in the parent justfile.
# just --list returns only recipes in this justfile.
default:
	@just --list


# list the just recipes
list:
	@just --list


# Require a command to be available.
[private]
require-command command:
	#!/usr/bin/env nu
	if ("{{ command }}" | str contains " ") {
		# Command to run
		do { {{ command }} } | complete
		if ($env.LAST_EXIT_CODE == 0) {
			exit 0
		} else {
			print $"'{{ command }}' did not exit cleanly. Please verify '{{ command }}' is available."
			exit 1
		}
	} else {
		if (which {{ command }}| is-empty) {
			print $"'{{ command }}' executable not found. Please install '{{ command }}' and try again."
			exit 1
		}
	}


# Run hugo to serve up the site for development.
dev: (require-command "hugo")
	#!/usr/bin/env nu
	hugo server --disableFastRender --buildDrafts --port 1313 --logLevel debug
