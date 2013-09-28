---
title: My writing workflow
kind: article
created_at: 2013-07-14 24:00:00 -0400
summary: A look at the process I go through for a piece of writing, from conception, to publishing on my site, to promotion on other sites.
published: true
frontpage: false
custom_link: 
---

<p class="article-intro">
My writing workflow has evolved considerably over the past few years, going from zero in 2010, to where I am today. This evolution is largely due to the changing tools I use to publish and promote my writing, in addition to the type of writing I try to put out.
</p>

Let's take a look at the writing workflow I use, before diving into some of the issues with it and then considering what features of the process I enjoy.

## The workflow

This workflow is what brings me from initial idea conception to publishing. All pieces of writing I publish go through this process, or the majority of it.

1. An idea comes to me. This could be in the shower, on the bus, or late at night as I toss and turn.

2. I write my idea down. The idea gets stored in whatever medium is convenient at the time, whether it's my Moleskine that I carry around, or in Google Keep, or on the back of my hand.

3. If I have time, I start fleshing out further thoughts around the idea. This usually manifests itself in random sentences which represent the core thoughts I wish to share.

4. Later, I'll return to my ideas and start writing in a large notebook or typing my thoughts on my trusty [Thinkpad T42](https://en.wikipedia.org/wiki/ThinkPad_T_Series) (I use it almost exclusively for writing, because the keyboard is so damn good). This step is the one that often causes trouble for me, because the thoughts and inspiration surrounding me when I originally had the idea are no longer present, so I have much difficulty in writing my idea out in a way that befits my original passion.

5. I'll then edit my writing, usually by passing it off to a friend and then reading it over myself.

6. Next, I'll publish the piece. Almost all my writing is published on this website, while I also decide to cross-publish some of the pieces on [Medium](https://medium.com). This publishing step has a deceptive number of substeps if I'm publishing to my site, due to the way my publishing system is set up. More on that later.

7. Finally, I'll start promoting the piece on [Twitter](https://twitter.com/lchski), Facebook, and by word of mouth (yep, that's still a useful method in our online world).

This process works okay (it's resulting in this article, isn't it?); but it doesn't allow for some things which I consider very useful from writing workflows.

## Issues

Let's look at some of the issues with this workflow:

* This system isn't very good at *sharing ideas*. There's no incentive for people to share, and there's no built in large audience who will read my work.

* This system doesn't allow for actually writing and publishing the entire article from anywhere. I'm still tied down to using a computer with specialized software to publish my pieces.

* The idea can go cold. This ties into the previous point. Because I can't write my entire article and then share it from anywhere, I'm limited in my "window of passion." I have to make the most of very limited tools to write down my thoughts once I come upon an idea, and that often isn't enough to craft a good piece of art before the idea disappears from my mind.

* The actual publishing process (step 6) is a major pain.

	When I publish something, I have to first format the file in Markdown using a special header to provide the article metadata. Then, I have to commit it to git, and push it to my [GitHub repo for this website](https://github.com/lchski/ecustom.ca). Then, I have to rebuild the site using nanoc, commit the results of that to git repo and push that repo to [Github](https://github.com/lchski/ecustom.ca-output). Finally, I have to SSH into my web server and `git pull` the repo back down from GitHub.

	Now, this is largely self-inflicted due to my insistence on using [nanoc](http://nanoc.ws) to publish instead of a dynamic system like [WordPress](http://wordpress.org); but it helps to illustrate the point that a good writing process, and thus a good writing system, should be easy to publish from.

These pains are all either self-inflicted, or pains that exist with most publishing systems or writing workflows. They're largely unavoidable, thanks to the nature of the tools available and what we expect to receive from them.

## Nice bits

My process does allow for a few niceties, though, which other systems do not:

* I have control over the location of all my content, and can access it at any time. Because my content resides entirely in either: (a) sheets of paper in my notebooks, or (b) plaintext files on my computers, I control where it is. I don't have to worry about exporting it from a company who may or may not allow that in the future... I already have it with me.

* I have control over the presentation. Good ideas require good presentation to accompany them, in order to best *communicate* them to their audience. Great ideas can be communicated via unstyled HTML just fine, but we've come to expect a higher quality from the information we read today.

Both of these points illustrate what I think is an important trait to value in writing systems --- control. Important to me, my system allows the control of my writing to reside in my hands, and mine alone. Although I store my files on GitHub or on my web server, I still have complete copies of the git repositories on all my local machines, ready for the day I have to abandon those services.

## In short

My writing system is a bit janky, but it allows for me to, in a reasonable manner, come up with an idea, store it for later, revisit it and write it up, then publish it, without too much pain. Would it be easier if I moved parts of it to use a more dynamic publishing system, like WordPress? Perhaps.

What's important to take away from this piece, though, is that what works for writing is what works for you. My system is far from perfect, or even ideal, and I will always be tweaking it to be better. However, it works for me in its current state.

And after all, isn't it true that all we want to do is share our ideas with the rest of the world? If your system can do that, I think it's the right one for you.