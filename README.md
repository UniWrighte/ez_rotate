## Usage:

Run:

    ./ez_rotate.sh "path/to/logdir"

It will backup any file greater than a gig and remove their old backups. Shouldn't be used for standard linux services that already use `logrotate`. Only intended for use with applications that endlessly append to a single log file or set of named log files and do not rotate on their own.

To create a cronjob using crontab:

    crontab -e

and to add a nightly cleanup:

    0 0 * * * /usr/bin/ez_rotate.sh "/path/to/log"

You should probably put the script somewhere besides your home directory for this. I used `/usr/bin` in this example.
