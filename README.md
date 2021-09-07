

Initializing elastic Beanstalk
Since we’re all set up with AWS and Beanstalk CLI, let’s get started!
eb init
This will prompt you to get set up with Beanstalk and configure the default application options.
Default Region: The default AWS region for beanstalk
Credentials: Your AWS IAM user creds. Follow this guide to create one if you don’t have them already
App name: What your application will be named
Python version: At the time of this writing, you can choose from Python 3.6 and Python 3.7. They are fundamentally different and this tutorial covers 3.7 with Gunicorn.
CodeCommit: Out of the scope of this tutorial — select no.
SSH: Select create_new_keypair. Follow the prompts to create it and remember the name (default is aws-eb). In my opinion, tailing the server logs is the easiest way to figure out deployment problems.
Keypair: You’ll probably want to generate a new keypair, this will be passed as part of your SSH command to log in to the server.
Once you’re done setting this up, you’ll notice a new hidden directory in your project called .elasticbeanstalk.
There is a config.yml file in there and it’s everything you set up saved to your local directory for future use.
Pro tip: If you need to start over with Beanstalk on this project for whatever reason, delete this directory and run eb init again to change any defaults.
Creating the Beanstalk environment
Now that we have an application created on Beanstalk, let’s create our environment:
eb create
Again, you’ll be prompted with questions about what you would like to create.
Env Name: What your environment will be named.
DNS CNAME prefix: Leave as the default.
Load Balancer Type: Choose Application.
Spot Fleet Requests: Out of scope, select no.
After you finish with the setup, it will begin to create the environment for you and try to deploy it to Beanstalk. This takes a few minutes, but feel free to watch events and see what’s happening under the hood.
