# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/Development/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.8"
#github "boxen", "3.3.4", :repo => "billyvg/puppet-boxen"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.1.0"
github "gcc",         "2.0.1"
github "git",         "1.3.7"
github "go",          "1.1.0"
github "homebrew",    "1.6.0"
github "hub",         "1.3.0"
github "inifile",     "1.0.1", :repo => "puppetlabs/puppetlabs-inifile"
github "module-data", "0.0.1", :repo => "ripienaar/puppet-module-data"
github "nginx",       "1.4.3"
github "nodejs",      "3.5.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.1.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "7.1.6"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

github "java", 	     "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "python", "1.2.1"

github "dropbox", "1.1.2"
github "chrome", "1.1.2"
github "firefox", "1.1.5"
github "hipchat", "1.0.8"
github "iterm2", "1.0.4"
github "alfred", "1.1.7"
github "macvim", "1.0.0"

github "fish", "1.0.0"
github "vim", "1.0.5"
github "ctags", "1.0.0"
github "osx", "2.0.1", :repo => "billyvg/puppet-osx"
#dev "osx"
github "janus", "1.0.0", :repo => "billyvg/puppet-janus"

github "droplr", "1.0.1"
github "spotify", "1.0.1"
github "onepassword", "1.0.3", :repo => "billyvg/puppet-onepassword"
github "vlc", "1.0.5"
