
#!/bin/bash
# run-parts - concept taken from Debian

# keep going when something fails
set +e

if [ $# -lt 1 ]; then
	echo "Usage: run-parts <dir>"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "Not a directory: $1"
	exit 1
fi

# Ignore *~ and *, scripts
for i in $(LC_ALL=C; echo $1/*[^~,]) ; do
	[ -d $i ] && continue
	# Don't run *.{rpmsave,rpmorig,rpmnew,swp,cfsaved} scripts
	[ "${i%.cfsaved}" != "${i}" ] && continue
	[ "${i%.rpmsave}" != "${i}" ] && continue
        [ "${i%.rpmorig}" != "${i}" ] && continue
        [ "${i%.rpmnew}" != "${i}" ] && continue
        [ "${i%.swp}" != "${i}" ] && continue
	[ "${i%,v}" != "${i}" ] && continue

	# jobs.deny prevents specific files from being executed
	# jobs.allow prohibits all non-named jobs from being run.
	# can be used in conjunction but there's no reason to do so. 
	if [ -r $1/jobs.deny ]; then
		grep -q "^$(basename $i)$" $1/jobs.deny && continue
	fi
	if [ -r $1/jobs.allow ]; then
		grep -q "^$(basename $i)$" $1/jobs.allow || continue
	fi

	if [ -x $i ]; then
		if [ -r $1/whitelist ]; then
			grep -q "^$(basename $i)$" $1/whitelist && continue
		fi
		logger -p cron.notice -t "run-parts($1)[$$]" "starting $(basename $i)"
		$i 2>&1 | awk -v "progname=$i" \
			      'progname {
				   print progname ":\n"
				   progname="";
			       }
			       { print; }'
		logger -i -p cron.notice -t "run-parts($1)" "finished $(basename $i)"
	fi
done

exit 0

