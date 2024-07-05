
# https://kbroman.org/github_tutorial/pages/first_time.html

# READ THIS CAREFULLY!!!
# https://support.posit.co/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN

brew install git

# Set up git with your user name and email.
git config --global user.name "tingtingzhan"
git config --global user.email "tingtingzhan@gmail.com"
# git config --global color.ui true


# Set up ssh on your computer
ssh-keygen -t rsa -C "tingtingzhan@gmail.com"
pbcopy < ~/.ssh/id_rsa.pub # Copy your public key into your clipboard.

# Paste your ssh public key into your github account settings.

# Go to https://github.com/settings/ssh/new
# Add a label (e.g., 'apce074') and paste the public key into the big text box.

# In a terminal/shell, type the following to test it:
ssh -T git@github.com
# If it says something like the following, it worked:
#Hi username! You've successfully authenticated, but Github does not provide shell access.

# Tingting: doesn't work for me. but maybe this is not important