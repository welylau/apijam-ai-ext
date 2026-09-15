# Part 1: Set Up
1. Navigate to the Shell icon or enter this from a new tab https://shell.cloud.google.com/

2. Run `git clone 
https://github.com/welylau/apijam-ai-ext.git`

3. Optionally, you can also toggle the Cloud Shell Editor
1. Run 

`cd apijam-ai-ext`

`chmod +x install.sh`

`./install.sh`

1. run 
`agy`
1. When asked "Do you trust the contents of this project?", choose "Yes, I trust this folder" and Enter.
2. Choose Google Cloud Pproject
3. contine with gcloud, login, and paste the Authorization Code
4. no license found, enter project manually, then choose global
5. choose 1. Agent Platform - Pay as you go provisioned for your Google Cloud project
6.  choose terminal or any theme, arrow down for NEXT, then Done
7.  I trust this folder

# Part 2:
Remarks prompting to agy, it would typically perform several tasks (on your behalf), it will ask you for permission.  Observe the instruction, if you agree choose either "1 or 2 or 3", example: see the screenshot.

Pro tip: agy --dangerously-skip-permissions 

1. Prompt to agy "do you have access to my apigee org?" 
2. Prompt to agy "Help me to deploy the an api proxy from the oauth directory to my apigee org, eval env"
3. Create me