if test ! -e mytestfile; then
		echo test file had not existed
		touch mytestfile
else
		echo test file existed
		rm mytestfile
fi

