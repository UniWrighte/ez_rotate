## Usage:

Run:

    ./ez_rotate.sh "path/to/logdir"

It will backup any file greater than a gig and remove their old backups. Shouldn't be used for standard linux services that already use `logrotate`. Only intended for use with applications that endlessly append to a single log file or set of named log files and do not rotate on their own.
