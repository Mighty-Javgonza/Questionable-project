FOLDER_ROOT=$(dirname $0)

./$FOLDER_ROOT/../../source/generate_question.sh "QUESTION?" "$FOLDER_ROOT/script_yes" > "$FOLDER_ROOT/.question"

chmod a+x "$FOLDER_ROOT/.question"

ANSWER=$(echo y | "$FOLDER_ROOT/.question" | grep -v ^$)
echo Test result: "$ANSWER"


#This ugly thing is kind of a bug. A solution would involve deviating the echo of question so that we only get the line containing the answer
if [ "$ANSWER" == "affirmative" ]
then
	echo TEST_OK
else
	echo TEST_NO_OK
fi
