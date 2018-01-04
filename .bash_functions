################################################################################
# $HOME/.bash_functions
################################################################################
# Functions to be used in bash
# Pretty prints a given file and sends to local printer
function prettyPrint () {
	a2ps -2 -Ecxx -C -o- $* | lpr -
}
