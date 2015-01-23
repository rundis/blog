<#include "header.ftl">
    <#include "menu.ftl">
        <div class="row">
            <h2>Tag list</h2>
            <p><#list alltags as tag>
                <a href="/blog/tags/${tag?trim?replace(' ','-')}.html">${tag}</a>
                </#list></p>
        </div>
        <div class="row marketing">
            <div class="span12">
                <h2>${tag}</h2>
                <#list tag_posts as post>
                    <#if (last_month)??>
                        <#if post.date?string("MMMM yyyy") != last_month>
                            <h3>${post.date?string("MMMM yyyy")}</h3>
                        </#if>
                        <#else>
                            <h3>${post.date?string("MMMM yyyy")}</h3>
                        </#if>
                        <h4>${post.date?string("dd MMMM")} - <a href="/blog/${post.uri}">${post.title}</a></h4>
                        <#assign last_month = post.date?string("MMMM yyyy")>
                        </#list>
                    </div>
                </div>
                <hr>
                <#include "footer.ftl">
