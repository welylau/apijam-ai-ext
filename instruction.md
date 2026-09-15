# Part 1: Set Up
1. Navigate to the Shell icon or enter this from a new tab https://shell.cloud.google.com/

2. Run `git clone https://github.com/welylau/apijam-ai-ext.git`

3. Run 

    `cd apijam-ai-ext`

    `chmod +x install.sh`

    `./install.sh`

4. run 
`agy`

    When asked the login method, choose "2. Use Google Cloud project", then "1. Continue with Google Cloud. Copy and paste the authorization link into another browser tab (the same session as your current login), proceed with login and then copy the Authorization Code, back to the Cloud Shell Terminal.

5. If it prompts "No licenses found. Please enter project ID manually.", copy the GCP Project ID and paste it there and press enter.
6. When asked about "Select Google Cloud Location:", choose "global".
7. Regarding the license, choose "1. Agent Platform - Pay as you go provisioned for your Google Cloud project" and press Enter.
8. For the terminal scheme, choose any of your preferred scheme, then [Next], and Eenter.

9. When asked "Do you trust the contents of this project?", choose "Yes, I trust this folder" and Enter.
10. You could try with a "hi" prompt. If all goes well, you shoud be able to see this.
![hi-agy](images/agy-hello.png)

11. Choose Google Cloud Pproject
12. contine with gcloud, login, and paste the Authorization Code
13. no license found, enter project manually, then choose global
14. choose 1. Agent Platform - Pay as you go provisioned for your Google Cloud project
15. choose terminal or any theme, arrow down for NEXT, then Done
16. I trust this folder

# Part 2:
Remarks prompting to agy, it would typically perform several tasks (on your behalf), it will ask you for permission.  Observe the instruction, if you agree choose either "1 or 2 or 3", example: see the screenshot.

Pro tip: agy --dangerously-skip-permissions 

1. Prompt to agy "do you have access to my apigee org?" 
2. Prompt to agy "Help me to deploy the an api proxy from the oauth directory to my apigee org, eval env"
3. Create me