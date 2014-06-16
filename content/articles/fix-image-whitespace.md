---
title: ''
kind: article
created_at: 2013-10-01 21:00:00 -0400
summary: ''
published: false
frontpage: false
custom_link: 
---

Recently I was working on a project where I was creating a grid of images. Here's the markup I was using:

	<div class="image-grid">
	
		<div class="element">
			<img src="http://placehold.it/250x250">
		</div>
		<!-- This element repeated for the number of items in the grid. -->

	</div>

The only issue with this setup was that some extra whitespace was appearing at the bottom of the grid elements. At first, I assumed there'd been some padding or margins applied. However, Chrome's Inspector told me otherwise when it showed that there was no padding or margins being applied to the element.