---
title: Dangerous Optimistic Actions
kind: article
created_at: 2013-09-09 23:00:00 -0400
summary: 
published: false
frontpage: false
custom_link: 
---

There's been a pretty cool UX trend lately, which has been coined as "performing actions optimistically" by such giants as [Luke Wroblewski](http://www.lukew.com/ff/entry.asp?1759).

While it's a great idea to improve the experience of our apps and sites, there are a couple pitfalls we have to consider before we go about implementing it.

Luke alludes to one of them in his article, mentioning how Polar will attempt to log the vote a few times before it comes back with an error. This is a good approach, and it's exactly what we need to be doing when implemeting this UX pattern.