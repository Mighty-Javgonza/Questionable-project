QUESTION=$1
SCRIPT_IF_YES=$2
SCRIPT_IF_NO=$3

if [ "$QUESTION" == "" ]
then
	echo "You didn't provide a question"
	echo "Usage: generate_question <question> <script if yes> [<script if no>]"
elif [ "$SCRIPT_IF_YES" == "" ]
then
	echo "You didn't provide an script for positive answer"
	echo "Usage: generate_question <question> <script if yes> [<script if no>]"
else
	echo "read -p \"$1[y/n]:\" -n 1 -r"
	echo "echo"
	echo "if [ \$REPLY == 'Y' ] || [ \$REPLY == 'y' ]"
	echo "then"
	echo "$SCRIPT_IF_YES"
	if [ "$SCRIPT_IF_NO" != "" ]
	then
		echo "else"
		echo "$SCRIPT_IF_NO"
	fi
	echo "fi"
fi
