---
title: "WordCamp Montr&eacute;al: Professional WordPress Deployment"
kind: article
created_at: 2013-07-06 22:00:00 -0400
summary: ""
published: true
frontpage: false
custom_link: Read my notes
---

{::options parse_block_html="true" /}

<p class="article-intro">
At WordCamp Montr&eacute;al 2013, [Rami Sayar](https://twitter.com/ramisayar) talked about moving from a developed product to a deployed one. [Slides](http://slid.es/sayar/prowp). Here are my notes:
</p>

## Professional software

* High-availability, very reliable, being maintained and kept up-to-date continuously.
* Managed releases - they're tested, and it's clear what changes are being sent out.
* Only a select few can access production and deploy there.
* Uses a consistent, versioned, automated software stack so that software is guaranteed to work across environments.
* Uses automated deployment to go quickly, without downtime.
* Software is auditable, with quality logs dating far back.

## "World-class frontends need world-class backends"

* Developer operations (devops) has to be everywhere throughout development.
* Check out [ProWP.org](http://prowp.org/) for devops resources.

## Git

* Use submodules to track and manage histories separately.
* Don't clone WordPress, fork it then use it as the upstream repo. This allows you to get new changes from WordPress as they come.

## Vagrant/Packer.io for machine images

* Vagrant is a tool to *describe* a virtual machine.
* Vagrantpress is an Ubuntu Vagrant machine which is already setup with WordPress included.
* Packer.io allows building identical cross-platform images.

## Chef/Puppet

* Chef and Puppet are two similar tools to allow for configuration file deployment.
* Chef is better for multi-server deployments (as it requires a lead server which others get config instructions from), whilst Puppet is better for single-server or a very limited number of servers.

## Miscellany

* WP-CLI allows for the creation and control of WordPress installations using the command line.
* For open-source projects, use a tool such as Travis CI or Jenkins for testing.
* New Relic is a good tool for server monitoring, while Nagios is a good open source alternative.
* When performing host migrations, employ a code freeze as well as a content freeze (at least, do so for staging).
* memcached + batcache are a powerful combination for caching.
* The Automattic Developer plugin provides tons of great plugins for development purposes.