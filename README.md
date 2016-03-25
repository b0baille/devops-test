# Aircall.io - DevOps technical test

This test is a part of our hiring process at Aircall for [DevOps positions](https://aircall.io/jobs#SystemAdministrator). It should take you between 3 and 6 hours depending on your experience.

__Feel free to apply! Drop us a line with your Linkedin/Github/Twitter/AnySocialProfileWhereYouAreActive at jobs@aircall.io__


## Summary

The purpose of the test is to reproduce one of our typical use case on the DevOps part of Aircall: __deployment__!

The story is the following:

Our backend team just developed a new service in order to make custom integrations for special customers. We need to deploy this service on one different virtual context for each customer, with a reproducible process.

It's 9AM in the office and first calls are coming in!


## Instructions

In this repository, you'll find a simple Rails project with one model. Your goal is to set up the web server using requirements below. The web server should be reachable from a public IP address.

### Technical stack

Find below the technical requirements for your virtual context.

Ruby version:
- 2.3

Rails version:
- 4.2.1

System dependencies:
- ruby (with bundler)
- nodejs
- mysql
- nginx
- libxslt-dev libxml2-dev zlib1g-dev libmysqlclient-dev

### Configuration

Find below the files you might need to modify/use in order to configure the launch of the application.

- config/environment.yml
- config/database.yml
- config/puma/*.rb
- config/nginx/server.conf

### Deployment
_Update 'production' to 'development' if you want to test locally_

Find below the commands you need to launch in order to deploy this application.

App dependencies:
- bundle install
- RACK_ENV=production RAILS_ENV=production rake assets:precompile

Database creation:
- RACK_ENV=production RAILS_ENV=production rake db:create

Database initialization:
- RACK_ENV=production RAILS_ENV=production rake db:migrate

Web server initialization:
- RACK_ENV=production RAILS_ENV=production bundle exec puma
