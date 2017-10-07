# ruby-formula
A salt formula for installing Ruby packages and gems.  Currently does not support rvm.

## Usage

### Defaults
by default, the formula is toggles off, but will only install the 'ruby' package when enabled.

```
ruby:
  enabled: False
  required_pkgs:
    - ruby
```
toggled on for basic usage:
```
ruby:
  enabled: True
```

### Installing extra packages
You can tack on other standard packages to the 'required_pkgs' list:
```
ruby:
  enabled: True
  required_pkgs:
    - ruby-sinatra
    - ruby-passenger
    - ruby-fog
    - ruby-httparty
    - ruby-omniauth-google-oauth2
```

### Installing gems
You can install gems by defining a list:
```
ruby:
  enabled: True
  required_pkgs:
    - ruby-dev
  gems:
    - test-kitchen
    - kitchen-linode
```

### Adding additional gem sources
You can add sources to the system:
```
ruby:
  enabled: True
  sources:
    - https://gem.fury.io/
```

## How to use test-kitchen on MacOSX

Install and setup brew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install vagrant with brew:
```
brew install cask
brew cask install vagrant
```

Install test-kitchen:
```
sudo gem install test-kitchen
sudo gem install kitchen-vagrant
sudo gem install kitchen-salt
```

Run a converge on the default configuration:
```
kitchen converge default
```
