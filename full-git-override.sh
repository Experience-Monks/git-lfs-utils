function __git {
	if [[ -t 1 ]]; then
		echo "this command is overridden in your shell setup file"
	fi

	if [ "$1" == "clone" ]; then
		shift
		quick-lfs-clone "$@"
	elif [ "$1" == "pull" ]; then
		shift
		quick-lfs-pull "$@"
	elif [ "$1" == "checkout" ]; then
		shift
		quick-lfs-checkout "$@"
	else
		\git "$@"
	fi
}

alias git="__git"
