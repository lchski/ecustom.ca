---
title: An Idea for a CSS Markup Mover
kind: article
created_at: 2013-02-04 21:20:00 -0400
summary: Wouldn't it be useful to be able to specify where a block of markup might be moved in the document using a CSS property?
published: true
frontpage: false
custom_link: 
---

Lately I've been working with responsively designed websites, and I've encountered an interesting problem. Currently in CSS, if we wish to "move" the location of a section of HTML content, we need to do so using sometimes ungainly CSS tricks. These include messing with `position: absolute` or `position: fixed`, which is hardly a bulletproof solution (just think what happens when your moved content suddenly grows to a size you didn't expect, and suddenly it's obscuring important content... yikes!)

For the sake of discussion, let's imagine we have a menu which is at the bottom of the document in the HTML, thus putting it out of the way for mobile users. Here is the basic HTML to illustrate this structure:

<script src="https://gist.github.com/4710862.js"></script>

When the website is viewed on tablets, the menu is moved from the bottom of the page to beneath the site title and tagline, in a horizontal bar. When the website is viewed on a larger monitor, the menu is moved to being beside the title. (The CSS for this is rather simple, so I'll leave it out).

What could be done to fix this problem of dynamically-sized markup resizing and breaking your layout? There are a few options, with the last one being the main topic of this article.

* Leave the styles be and hope your layout won't break.
* Restrict the markup in question from being over a certain size (through limitations put on the user via the CMS).
* Specify in the CSS where the markup should logically move to in the document.

## Option 1: Leave it and Hope It Won't Break

This option is both the easiest and least ideal (isn't it always this way?).

With this option, you just style the menu to always work a certain way, with certain expected parameters. You ignore all other possible use cases. This option is obviously the easiest, because it requires the least work, but it is not best due to the very static nature of it.

What happens when a user adds another menu item and suddenly when the menu is viewed on a tablet, the extra menu item is obscuring your main content? This creates an issue, because the users can only have so many items in the menu using this method.

## Option 2: Restrict Markup

Here, a user can only add a limited number of menu items which will only take up a certain width. This guarantees that your menu won't break, because it's restricted from going over the size at which content is obscured, but it also severely handicaps the user. Not a good choice.

## Option 3: Move the Element

This option is the most interesting and most effective of the three. Unfortunately, it also does not work at all, currently, but I'll come back to that later.

In this situation, the markup for the menu is actually moved through the logical structure of the document. What do I mean by this? Well, assuming we have a document like described earlier, the menu markup is located after the content section.

Using this option, when the website is viewed on a tablet screen size a media query is triggered. When this media query is triggered, the menu markup moves from after the content section to before it, and is restyled to appear as a bar. The exact same idea works when moving to a larger screen size.

To be clear here, we're not styling the element to appear to have moved elsewhere else in the document structure, but rather we are *actually moving the interpreted place of the markup* in the logical document structure. It has the same effect as if we had cut-n-pasted the markup in a different location in our HTML file.

Now, how does the CSS know where to "move" the markup when it is supposed to be moved? For that, I propose a "target" or "placeholder" element, if you will, which represents a space in the document structure that is occupied by a block of markup under certain conditions. Here, I will use a `<placeholder>` element.

### Proposed HTML & CSS

So, how could we modify our basic webpage to implement this? Here is my proposed methodology:

<script src="https://gist.github.com/4710939.js"></script>

If you look at the source there, I have added two `<placeholder>` elements, each with a unique ID. These IDs will be used when targeting the placeholders as targets for the movement of the markup.

Now, how would the CSS move the markup? For this, too, I have a proposal:

<script src="https://gist.github.com/4710989.js"></script>

As can be seen here, the CSS moves the markup by setting the `target` property of an element to the ID of a placeholder within the document. When this happens, the browser interprets the markup as being not in its original location in the document structure, but rather as being moved to wherever the placeholder is located. 

Now that you have a taste of what I'm proposing, here are some advantages and disadvantages associated with this method.

### Advantages

This markup movement can be extremely useful! No longer will our layouts be broken by unknowing users, and no longer do we have to employ nasty CSS "hacks" which put our layout at risk. This is a very good thing for those doing responsive layouts where UI elements have to move when the website is viewed on a different screen size.

### Disadvantages

Now that you've seen how this can be used for good, it's time for me to play devil's advocate to myself and explain why this may not be the perfect solution.

This methodology is questionable in its semantics. What do I mean by that? Well, CSS is generally regarded as being the controller of style and presentation within a website, while HTML is the controller of layout and document structure. Here, CSS is moving around elements of the document structure not just visually, but also logically.

This logical movement can be seen as being outside of the realm of CSS. Is it going to far by actually moving where the content is interpreted? Perhaps.

Additionally, this method relies on a new element, `<placeholder>`. Should an element which is used solely for the purpose of styling exist? While some may disagree, Mike Robinson points out on *HTML5 Doctor* that the role of the `<div>` element, may be (at least partially) that:

<figure class="block-quote">
	<blockquote>You should use <code>&lt;div&gt;</code> when there is no other more semantically appropriate element that suits your purpose. Its most common use will likely be for stylistic purposes --- i.e., wrapping some semantically marked-up content in a CSS-styled container.</blockquote>
	<figcaption>
		<p><cite><a href="http://html5doctor.com/you-can-still-use-div/" title="You can still use div">You can still use div</a></cite> by Mike Robinson (via HTML5 Doctor).</p>
	</figcaption>
</figure>

So it seems to be at least somewhat acceptable for an element to exist which is used solely for styling. But the `<div>` element is different in that it can be used for other things, such as creating semi-semantic containers when necessary, or other such jobs. The `<placeholder>` element which I suggest does no such thing.

A possible solution to this is to, instead of using a new element, use the proposed `target` CSS property to say where the markup should move *relative to an existing element*. What do I mean by this? Perhaps this code would help to demonstrate:

<script src="https://gist.github.com/asdfgh746/4711456.js"></script>

Here, we say that the markup should be moved in the document structure relative to already existing elements. For tablet devices, this means positioning it after the `<header>` element, and for desktop devices it means positioning it after the `<small>` element contained within the `<header>`. We use regular CSS selectors to select the element we wish to position it after. If we wanted to position it before, we would substitute `after` in the code with `before`.

This would allow for us to avoid any extra markup, but it does make the position of the moved markup less concrete (for example, what happens if there are more than one `<small>` elements in the `<header>`?)

Another disadvantage of this method is that there currently exists no implementation for it! If someone is willing to work with me to develop one, as a JavaScript solution or similar, [get in touch](/contact/) and we'll talk.

## Conclusion and Next Steps

I've outlined a problem here and my proposed solution to it.

The problem is that when we have a responsive layout and we try to move a UI element around, that moved UI element could break our layout if the user unknowingly makes it too large or something of the sort.

My proposed solution is the creation of a new HTML element, `<placeholder>`, and a CSS property, `target`, which dictate where the markup in question should be moved to in the logical document structure. This allows us to create responsive websites which are more receptive to the very dynamic nature of web publishing today, and still preserve our carefully crafted layouts.

I would love to see this implemented in some way, but it is of course important to take into account the semantics of the new elements being created. That said, I still believe it is a good solution to our problem, and would love to work with someone to make it happen!

Thanks for taking the time to read this lengthy, long-winded proposal. Perhaps I'll release a much more succinct version in the near future.