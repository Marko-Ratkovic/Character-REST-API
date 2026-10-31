<#-- Shared page layout. Every page calls this macro, so the head and the navigation exist in ONE place. Usage in a
  page: <#import "layout.ftlh" as l>
  <@l.page title="Home" active="home"> ...page content... </@l.page> -->
  <#macro page title active="">
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>${title} | Black Ops Specialists</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">
      <link rel="stylesheet" href="/css/styles.css">
    </head>

    <body>
        <nav class="navbar navbar-expand navbar-dark border-bottom border-warning">
            <div class="container">
                <a class="navbar-brand" style="color: orange;" href="/">Call of Duty Specialists Gallery</a>
                <div class="navbar-nav">
                    <a href="/" class="nav-link ${(active == 'home')?then('btn-orange-active', 'btn-orange-inactive')}">Home</a>
                    <a href="/characters/about" class="nav-link ${(active == 'about')?then('btn-orange-active', 'btn-orange-inactive')}">About</a>
                    <a href="/new-character-form" class="nav-link ${(active == 'new')?then('btn-orange-active', 'btn-orange-inactive')}">Add Specialist</a>
                </div>
            </div>
        </nav>
        
        <main class="container py-4">
            <#-- A flash message survives exactly one redirect (see RedirectAttributes in the controller). -->
            <#if message??>
            <div class="alert alert-warning">${message}</div>
            </#if>
            <#nested>
        </main>
        
    <footer class="container py-3 text-secondary">Black Ops Specialists &middot; Spring Boot MVC + FreeMarker</footer>
</body>

</html>
</#macro>