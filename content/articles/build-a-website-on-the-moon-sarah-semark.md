---
title: "WordCamp Montr&eacute;al: Build a Website on the Moon: WordPress Development from Anywhere"
kind: article
created_at: 2013-07-06 21:30:00 -0400
summary: ""
published: true
frontpage: false
custom_link: Read my notes
---

{::options parse_block_html="true" /}

<p class="article-intro">
At WordCamp Montr&eacute;al 2013, [Sarah Semark](https://twitter.com/sarahsemark) talked about how to develop WordPress sites from just about anywhere. [Slides](http://triggersandsparks.com/talks/moon). Here are my notes:
</p>

## Why local development rocks

* Faster development - no need to wait for uploads.
* Better testing - change all the file without affecting production.
* Version control - keep a revision history using git.
* A nicer production server - it's more stable, with less downtime and outages.
* Collaboration - can work better because you don't have two people editing the same files.
* Deployment - can automate deployment, getting rid of a lot of human error.

## Tools

* Use an XAMP stack (Operating system, Apache, MySQL, PHP) for your server.
* Git for version control.
* Automation scripts to sync your database changes.

### XAMP

* Set up your virtual hosts, allowing multiple sites, each with their own "domain" (can use something like wallybills.dev).

### Git

* A very fast system to track changes.
* Use your remote, or staging, location (like GitHub or BitBucket) to solve conflicts, not production.
* Setup your `.gitignore` file to ignore `wp-config.php`, all machine-specific files, and *anything with sensitive data*.
* On production, keep your `.git/` folder one level above your web root (`public_html/`, or `www/`, or similar).

### Database automation

* Keep all your site data in sync when you make file changes. (Sarah has some files [on GitHub Gist](https://gist.github.com/sarahsemark/5889465) to help you out here.)
* Pull data down from production to your local machine so you have real content created by clients to style.
* Don't use PHPMyAdmin to sync. Automate it.
* Keep the table prefix the same between local and production, for simplicity's sake.

## Security

* Keep the `.git` folder out of the web root.
* No sensitive files in the web root.
* You can move `wp-config.php` up one level from the WordPress install location, and WordPress will still find it.