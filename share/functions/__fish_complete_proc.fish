function __fish_complete_proc --description 'Complete by list of running processes'
	# 'tail -n +2' deletes the first line, which contains the headers
	# sed removes the trailing whitespace and a leading dash (which means login shell)
	# Don't use ucomm, because it truncates names on OS X
	ps axc -o comm | tail -n +2 | sed -e 's/^-//g' -e 's/ *$//g' | sort -u
end
