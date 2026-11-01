<#import "layout.ftlh" as l>
<@l.page title="Error" active="">
    <div class="text-center py-5">
        <h1 style="color: orange !important;">Error!</h1>
        <#if (status!0) == 404>
            <p style="color: orange !important;">We couldn't find that specialist. They may have been deleted, or the link may be wrong.</p>
        <#else>
            <p style="color: orange !important;">Something went wrong.</p>
        </#if>
        <a href="/" class="btn btn-orange-inactive">Back to Gallery</a>
    </div>
</@l.page>
