---
title: The Making of ecustom.ca
kind: article
created_at: 2012-11-02 18:00:00 -0400
summary: A more in-depth look at the new version of this website, covering the publishing engine powering my humble home on the internet.
published: true
custom_link: 
---

This article is a mini-essay explaining the history of ecustom.ca as well as a more in-depth look at how I built the new version.

First, a little background.

## History

This humble website has gone through a few major iterations since I registered the domain in March of 2010.

First, the website was a static HTML/CSS mess of code. It was ugly, had silly little experiments all over it, and generally did not reflect well on me or my skillset. I made minor changes to this version for the next few months, before one day deciding it was time for a change.

By this point in my life I was looking to write articles and tutorials on my site, so I wanted to move to a platform that would allow me to easily create and publish my works.
I decided WordPress was a good candidate. I had experience with it before when I took it for a test run on my local development server. I also had plans to use it for client sites due to its increasing ubiquity and ease of use.

So I deployed the latest version of WordPress on to ecustom.ca. I'm not sure the exact version number, but it was definitely pre-3.0. I jumped around with various themes, never having the time to create my own.

Eventually 3.0 came around and I decided to use Thematic as a theme framework and create a child theme from there. My "child theme" didn't amount to much, just some colour modifications in the end.

I made a note to myself to one day change it, to make it more my own, but I never got around to doing so... until now.

A few weeks ago, a coding fever descended upon me. I simply had to create something, to tackle some project. That project ended up being the new version of ecustom.ca

## A Simple Static Basis

The first thing I knew I wanted out of my new site was a focus on text. I've been reading a lot lately on text and typographical conventions and I wanted to put some of my knowledge to work.

I started my process with a design that I sketched out on some of my trusty graph paper. From there, I hopped into Sublime Text 2 and began laying out a basic framework from which to work off.

This framework evolved into my article view, likely how you're reading this now. It places a focus on the comfortable reading and consumption of text content, one of my focuses.

I made sure the body text was big (20px, although I use ems) in an elegant font (Georgia) to put the text at the forefront of the website experience.

I experimented with different colours and blocking schemes before deciding on this one, which is simple and clean. Once I had this layout created I proceeded to work on the other layouts I would need, namely the main page, non-article page, and article listing page.

Once the pieces were all in place as a static placeholder framework, it was time to bring some dynamic-ness to the site.

## A Dynamic Publishing System

When the time came to make the site dynamic, I had several options available to me.

The first, most obvious, option was to call back to the previous version of the site and use WordPress. I did consider this option for a while, as I figured it would be a logical step. However, after much deliberation I made the choice to not use WordPress but rather a static-site generator. The reasons for this are numerous, but I will leave that for another article to discuss.

If you don't know what a static-site generator is, it's essentially a program that runs on your local computer and compiles a website for you, which you then publish via ftp to your server. The output files are all static HTML/CSS, but the input files can be in many formats. Essentially you get the benefits of WordPress and similar database-based publishing systems, but without the associated server lag and security issues.

Now that I had decided a static-site generator was the way I would go, I had to pick one that suited my needs and that I wanted to use. At the time, I was using Python a lot, so I naturally wanted to find a generator that was built in Python.

I evaluated [hyde](http://hyde.github.com/ "hyde") as an option to suit my needs. However I couldn't get it installed so I never actually got to see how well it worked. From there, I wanted to look at hyde's Ruby counterpart, [jekyll](http://jekyllrb.com/ "jekyll"), as my generator.

However, with jekyll I came upon an issue which I had also with hyde, and many of the other generators I looked at. Looking over the code for the generators, I found that they hadn't received any updates in quite a while. While I understand that isn't necessarily the most important thing to look at, it was important to me that whatever project I go with has a developer that is still actively working on it. This gives me the opportunity to suggest improvements and possibly see them integrated with the project, something I wouldn't be able to do with a dead project.

So after I had looked at several generators, I came upon one which I had seen a while ago, on the previous version of [Dan Harper](http://danharper.me/ "Dan Harper")'s website. This generator was [nanoc](http://nanoc.stoneship.org/ "nanoc"), a Ruby-based static-site generator.

## Enter [nanoc](http://nanoc.stoneship.org/ "nanoc")

How did I use nanoc to build this website?

I first took all the layouts and using the basic framework I had created at the start, created a "default" layout which the content of each page is loaded into. Depending on the page, other layouts would be rendered into this default layout, and the content would then be placed within this sub-layout.

I then created my directory/permalink structure. All the articles would be located under "/articles/", and other pages would reside at the top level ("/"). This keeps my permalinks short and my directory structure clean.

With this in mind, I started porting over the content I had written, and started to write the Ruby scripts that would allow nanoc to create the pages of my site that were more "dynamic."

The most obvious "dynamic" page would be the [Articles listing page](/articles/ "Articles"), which lists out all the articles in chronological order and shows a title, an optional excerpt (displays the whole article if excerpt not found), as well as a link to the full article. I can replace the text of the link if I so choose, to customize it to suit the piece of writing. nanoc has built-in methods to list out the articles in order, and this allows me to just write articles and know that they will be included in my article list.

The single article view is also nicely done with nanoc, most notably the date listing at the bottom. With nanoc, I simply specify in my article file that it was written on some date (let's say November 2<sup>nd</sup> as this one was) and, along with some help from a date formatter, I can print out the number in correct ordinal format. For example, November 2, 2012, becomes the 2<sup>nd</sup> of November, 2012. Because nanoc allows me to use Ruby code to help generate the output, I can use any Ruby code to help me with the output.

Now, I could have done this all in WordPress, or even creating all the static files myself (although that may have been signs of depression on my part), but I have decided that nanoc has fit my needs wonderfully. It has been a joy to work with, and as I write this article I know that my site will generate perfectly, without issue.

## Other Benefits of nanoc

Using nanoc also provides me some additional benefits. Namely, I get to open-source my whole website! That's right, the [code for this site](https://github.com/asdfgh746/ecustom.ca "GitHub - asdfgh746/ecustom.ca") is available on GitHub. You'll need nanoc to generate it, but you can look through it and hopefully learn about the operation of nanoc.

With the code being open-source and available on GitHub, it also means the entire site is managed by git. This means that I can version control all my articles and versions of my site. No more WordPress revisions which kinda-sorta make sense, just commits which I manage and control.

nanoc also gives me the benefit of being able to use a variety of formatting technologies. From HTML to Markdown, I've got the full spectrum of choice available to me. Even better, any publishing system which has a Ruby gem works with nanoc. This means technology like SASS can also be integrated, with little trouble.

Another fun benefit is that I got to work with a cool technology which I haven't before, and I now know of a program I can use to create simple static sites for clients depending on their needs.

## Conclusion

ecustom.ca is powered by [nanoc](http://nanoc.stoneship.org/ "nanoc"), a super-cool static-site generator which allows me to focus on my writing, which is a priority now as I try to write and publish more. If you have any questions about nanoc, feel free to [get in touch with me](/contact/ "Contact Me") and I'll do my best to sort you out.

This website has been through a couple of major iterations now, with the current version being v3.0. I however, prefer to think of this as a completely new version. To assign it a version number greater than 1.0 would be to imply that it is in some way related to the previous versions. In reality, it is different in all ways, even the name, and as such deserves to have its version counter reset. This is v1.0 of ecustom.ca. Welcome to the party, I look forward to enjoying it with you.