var1=file1.txt
var2=${1}.txt
# Use at least 2 variables and 1 positional parameter (special variable) in script, 2 variables set to text files. Positional parameter is $1 (bash pre-defined special variable where user sets value when calling script).

if [[ -z ${1} ]]; then
    echo "I need 1 pos param"
    # Print message to terminal before exiting if special variable $1 is null.
    exit
fi
# Use an If statement to check if $1 (special variable passed as parameter when calling script) was passed into script, exit script if value for $1 does not exist.

echo "what is your name"
read username
# Print message to terminal prompt user for username.

echo "what is your password?"
read password
# Print message to terminal prompt user for password.

if [[ ${username} == "Zealan" ]] && [[ ${password} == "1234" ]]; then
    echo "Authentication accepted, thanks ${username} now lets get to that script."
    # Print message to terminal with “Authentication accepted, thanks ${username} now lets get to that script.”
else
    echo "nope, not you"
    exit
fi
# Use an If statement to validate ${username} and ${password}. Print message to terminal if either ${username} or ${password} is incorrect. Otherwise, use else statement to continue with script.

echo "script is starting"
# Print message to terminal that the “script is starting”.

mkdir newDir
# Create new directory from current directory (If ~/Desktop is the current directory then new directory would be in Desktop (e.g. ~/Desktop/newDir).

cd newDir
# Change directory to directory created in step #9.

echo "A message" > ${var1}
# Print(Write) message directly to file.

mv file1.txt ../file1.txt
# Move file (defined as variable 1 in script) to the directory you started your script (i.e. ~/Desktop).

pwd
# Print the working directory starting from the root.

cd ../
# Change directory to the parent directory.

mkdir TXT
# Create a new directory with the name TXT.

echo ${1} > ${var2}
# Print(Write) the value of positional parameter $1 to second variable defined in script.

mv ${var1} TXT
mv ${var2} TXT
# Move variable 1 and variable 2 to the directory TXT inside of the current directory (i.e. ~/Desktop/TXT). You will call the variable here not the value of the variable. (i.e. variables are called like this ${varname})

rmdir newDir
# Delete the new directory from Step 9. It is no longer needed.

cd TXT
# Change directory to TXT.

cat *.txt
# Print file names and contents of variables to the terminal.

pwd
# Print the working directory.

ls
# List the contents of the directory.

echo "Script finished. If variable 1 and variable 2 are in TXT folder you passed"
# Print message to terminal “Script finished. If variable 1 and variable 2 are in TXT folder you passed”.
# Change directory to script location and run script from terminal “sh script.sh ${1}” $1=value of special variable. It can be anything you want.
# Submit your script file to Canvas.