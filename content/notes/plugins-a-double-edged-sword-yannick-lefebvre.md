---
title: "WordCamp Montr&eacute;al: Plugins: A Double-Edged Sword"
kind: article
created_at: 2013-07-06 21:00:00 -0400
summary: ""
published: true
frontpage: false
custom_link: Read my notes
---

{::options parse_block_html="true" /}

<p class="article-intro">
At WordCamp Montr&eacute;al 2013, [Yannick Lefebvre](https://twitter.com/ylefebvre) talked about WordPress plugins from a user/integrator perspective. [Slides](http://ylefebvre.ca/wcmtl13). Here are my notes:
</p>

## Things to check before using a plugin

* Compatability - does it work for your version?
* \# of Downloads - higher counts are generally a good indicator.
* Ratings - take with a grain of salt, because anyone can vote.
* \# of Resolved Threads - doesn't take into account support delivered outside of WordPress.org. Some developers use their own forums for support, and are very active there.

## Things to do before deploying a 3<sup>rd</sup>-party plugin

* Check render time before installing it, and then check after. Check both the front and back end. Are the load times acceptable? *Lucas' note: if your plugin provides a feature only used on select pages (e.g. a shortcode), make sure to check the performance of* those *pages especially.*
* Log out and view the site as a regular user. Does it still work?

## Troubleshooting a faulty plugin

* Deactivate the last plugin installed.
* Deactivate *all* plugins and activate each one again, one at a time. Refresh your site each time, see when it breaks.
* Read the plugin page, check for install instructions you may have missed.
* Contact the author if all else fails and you absolutely need the plugin to work.

## Style issues

* Conflicting styles between the plugin's styles and yours, or one plugin's styles and another.
* Use the inspector to find the "winning styles."
* Can modify the theme to fix these issues. `!important` can come in handy here.
* Can modify the plugin, but make sure to backup the files first and know that your changes will be overwritten if you automatically update.

## jQuery issues

* Often breaks all the jQuery-affected elements on a page.
* Check the console of the inspector for errors.
* Common issue is more than one jQuery verison being loaded. Check for multiple copies in the source, or in the inspector's scripts section.
* When using jQuery, use the longform version (jQuery()) instead of the shorthand ($()) to avoid conflicts.

## Upload issues

* Write permissions may be wrong on the upload folder. *Lucas' note: 755 should do the trick, according to the [WordPress Codex](http://codex.wordpress.org/Changing_File_Permissions)*.
* The server max upload size (set in php.ini) may be too small. By default it's 8MB, but some hosts turn it down. Contact yours to see how to change it.

## Troubleshooting bad upgrades

* Reactivate the plugin. (Especially when uploaded with FTP).
* Check for error messages, and *read* them.
* Revert to a previous version (you do have a backup, don't you?).
* Find previous version (if you don't have a backup), by browsing the Trac page for the plugin (when on WordPress.org) and checking for tags, or showing revisions. *Lucas' note: just make a backup regularly, it'll save you so much hassle in the long run.*

## Bad plugin breakups

* You may "break up" with a plugin when you find one that's a better solution for your needs, or if what you're using now provides unnecessary functionality.
* The plugin development may have ended, and it may not support new versions of WordPress.
* Make sure to analyse the effects of deactivation. Plugin authors rarely remember to include features which clean up after being uninstalled, so you may have to do this yourself.