# AutoProvision

A rake task combined with a config file that provisions a new dev machine.

Tasks
-----

###Automated
1. Generate new SSH keys for various accounts, such as Github

1. Install dotfiles via the Dotfiles repo

1. Install any binaries via Homebrew

1. Instsall any apps via Homebrew Cask

1. Sync data from Cloud services, such as iCloud/Dropbox 

1. Clone personal Github repos in a SideProjects directory

1. Generate log of execution


####Non Automated Tasks

Once the rake task completes, there is still some work to be done to finish customizing the machine. Hopefully more of these tasks can be automated in the future.

1. Change the contents of the Dock


Important Details
-----------------
####Github Key Generation
There is a section in the `settings.rb` file pertaining to ssh key generation for Github. You must include your github username, email associated with the ssh key, and the extension of the ssh key. For instance if you want your key to be named `id_rsa_mykey`, then you must use `mykey` as the extension. This part of the process requires you to interact with the terminal to create a password for you ssh key. 


####Github Key Uploading
Once the key is generated, the rake task will attempt to send the new public key to Github. You will be prompted for your Github password for the associated email. If your Github account requires 2auth, this request will fail and the rake program will try again, this time asking for a 2auth token. You can also decide to skip this step and continue with the rake task.

####Dropbox Integration
I am considering using Dropbox as the engine behind `mackup`. As a result, the rake task will prompt you near the end of execution to login to Dropbox before continuing.

Wishful Thinking
----------------

A nice feature would be to export all the settings on a given computer and use those as the inputs to brew, brew cask, dotfiles, etc.
