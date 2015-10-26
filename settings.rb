def settings 
{  
  github_accounts: [
    {
      github_ssh_key_email: "nateboop@gmail.com",
      github_username: "codemang",
      ssh_key_postfix: "codemang"
    }
  ],
  binaries: [
    {name: "ruby"},
    {name: "python"},
    {name: "caskroom/cask/brew-cask"},
    {name: "wget"},
    {name: "macvim"},
    {name: "cmake"},
    {name: "mackup"}
  ],
  apps: [
    {name: "google-chrome"},
    {name: "iterm2"},
    {name: "github"},
    {name: "vagrant"},
    {name: "virtualbox"},
    {name: "sublime-text3"},
    {name: "torbrowser"},
    {name: "firefox"},
    {name: "one-password"},
    {name: "utorrent"},
    {name: "vlc"},
    {name: "dropbox", 
     commands: ["mkdir ~/Dropbox"]
    },
    {name: "alfred",
     commands: ["brew cask alfred link"]
    },
    {name: "flux"}
  ],
  gems: [],
  pips: []
}
end
