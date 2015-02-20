<#include "header.ftl">

	<#include "menu.ftl">

	<div class="page-header">
		<h1>Blog</h1>
	</div>
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="/blog/${post.uri}"><h1>${post.title}</h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
        <p><em>Tags: </em><#list post.tags as tag>
		      <a href="/blog/tags/${tag?trim?replace(' ','-')}.html">${tag}</a>
	      </#list></p>
        <a href="https://twitter.com/share"
           class="twitter-share-button"
           data-text="${post.title}"
           data-url="http://rundis.github.io/blog/${post.uri}"
           data-via="mrundberget" data-lang="en">Tweet</a>
        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

  			<p>${post.body}</p>
  		</#if>
  	</#list>

	<hr />

	<p>Older posts are available in the <a href="/blog/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
