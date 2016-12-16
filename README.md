# Songs by Sinatra

Sinatra framework ruby application for cataloging songs by Frank Sinatra.

## Installation
You'll need the following tools to run the application:

- [Virtual Box](https://www.virtualbox.org/)
- [ChefDK](https://downloads.chef.io/chef-dk/mac/)
- [Vagrant](https://www.vagrantup.com/downloads.html)
    - [Vagrant Berkshelf Plugin](https://github.com/berkshelf/vagrant-berkshelf)
    - [Vagrant Omnibus Plugin](https://github.com/chef/vagrant-omnibus)

After installing the above dependencies:

1. Clone down the repo
2. Navigate to the project root directory in a terminal
3. Run command `vagrant up`

## Usage

With your browser visit http://localhost:8765 to access the home page.

## Development

The server can be turned off if you `vagrant ssh` into the Vagrant machine and execute `supervisorctl stop all`.
To start the server again from the project root directory in the Vagrant box execute `rackup` or execute `supervisorctl start all` from anywhere in the Vagrant machine to start the Supervisor process again.

## Contributors

- Mark Hess
- Jump Start: Sinatra (book)
