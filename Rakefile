#!/usr/bin/env ruby

require_relative 'settings'

namespace :configure do
  def generate_ssh_key(email, key_name)
    ssh_path = File.join(File.expand_path("~/.ssh"), "id_rsa_#{key_name}")
    system "./ssh-gen.sh #{email} #{ssh_path}"
  end

  task :generate_github_ssh_keys do
    for account in settings["github_accounts"]
      generate_ssh_key(account["github_ssh_key_email"], account["ssh_key_postfix"])
    end
  end

  task :install_binaries do
    for bin in settings["binaries"] 
        system "brew install #{bin[:name]}"
        next if !bin[:commands]
        for post_command in bin[:commands]
          system "#{post_command}"
        end
    end
  end

  task :install_apps do
    for app in settings["apps"] 
        system "brew cask install #{app[:name]}"
        next if !app[:commands]
        for post_command in app[:commands]
          system "#{post_command}"
        end
    end
  end

  task :install_gems do
    for gem in settings["gems"]
      system "gem install #{gem}"
    end
  end

  task :install_pips do
    for pip in settings["pips"]
      system "pip install #{pip}"
    end
  end

  task :install_xcode_command_line do
    system "xcode-select --install"
  end

  task :what do
    puts settings
  end

  task :install_dotfiles do
    system "git clone https://github.com/codemang/Dotfiles.git ~/Dotfiles"
    Dir.chdir File.expand_path "~/Dotfiles"
    system "rake"
  end

end
