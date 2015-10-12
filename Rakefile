require 'json'

namespace :configure do
  @settings = JSON.parse(File.read("settings.json"))

  def generate_ssh_key(email, key_name)
    ssh_path = File.join(File.expand_path("~/.ssh"), "id_rsa_#{key_name}")
    system "./ssh-gen.sh #{email} #{ssh_path}"
  end

  task :generate_github_ssh_keys do
    for account in @settings["github_accounts"]
      generate_ssh_key(account["github_ssh_key_email"], account["ssh_key_postfix"])
    end
  end

  task :install_binaries do
    for bin in @settings["binaries"] 
      system "brew install #{bin}"
    end
  end

  task :install_apps do
    for app in @settings["apps"] 
      system "brew cask install #{app}"
    end
  end

end
