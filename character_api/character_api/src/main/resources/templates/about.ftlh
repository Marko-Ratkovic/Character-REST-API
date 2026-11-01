<#import "layout.ftlh" as l>
<@l.page title="About" active="about">
    <div class="container py-5">
        <div class="mx-auto p-5 rounded" style="max-width: 1000px; background-color: #212529; box-shadow: 0 0 20px rgba(255,165,0,0.08);">
        
            <#-- Header -->
            <div class="text-center mb-4">
                <h1 class="fw-bold" style="color: orange !important;">About This Gallery</h1>
                <p class="text-secondary" style="color: orange !important;">Learn more about our Call of Duty specialist gallery.</p>
            </div>
            <hr class="border-secondary mb-5">
            
            <#-- Content -->
            <div class="row g-4 align-items-start">
                <div class="col-md-8">
                    <h3 class="fw-bold" style="color: orange !important;">Welcome to the Call of Duty Specialist Gallery</h3>
                    <p class="text-secondary" style="color: orange !important;">Our gallery showcases a curated collection of 
                        Call of Duty specialists from the Black Ops universe, highlighting their unique equipment, backgrounds, and 
                        roles within the game. Whether you're a fan of the franchise or a newcomer, our gallery provides an in-depth look
                        at each specialist's characteristics, personality, and history.
                    </p>
                    <p class="text-secondary" style="color: orange !important;">As a longtime fan of the Call of Duty series,
                        I wanted to build a gallery that celebrates the specialists from the Black Ops universe, characters whose
                        unique personalities, equipment, and backstories often get overshadowed by fast-paced multiplayer action.
                        I grew up playing this game, and it holds a lot of great memories from my younger years, which made this project
                        feel personal rather than just an assignment. Building this gallery gave me a chance to slow down and
                        highlight the deeper lore behind each specialist, even if one is only shown in this gallery fully.
                    </p>
                    <h3 class="fw-bold mt-4" style="color: orange !important;">Data &amp; Attribution</h3>
                    <p class="text-secondary" style="color: orange !important;">The characters featured in this gallery are from the
                        Call of Duty universe, specifically from the Black Ops universe. All character descriptions and equipment
                        are based on their appearances in these officially licensed Call of Duty productions.
                        Images are sourced from public stock photo services for demonstration purposes.
                    </p>
                </div>
                <div class="col-md-4">
                    <img src="/images/Gallery-image.jpg" class="img-fluid rounded" alt="Gallery Image">
                    <p class="text-secondary text-center small mt-2" style="color: orange !important;">Image showing most of the specialists from Call of Duty: Black Ops 4.
                        Image courtesy of public stock photo services.</p>
                </div>
            </div>

            <#-- How the app works -->
            <hr class="border-secondary my-5">

            <h3 class="fw-bold" style="color: orange !important;">How a page request flows</h3>
            <ol style="color: orange !important;">
                <li>The browser requests a URL, for example <code>/characters/3</code>.</li>
                <li>A <code>@Controller</code> method runs, asks the service for data, and puts it in the <code>Model</code>.</li>
                <li>The controller returns a view name, and Spring renders the matching FreeMarker template.</li>
                <li>The browser receives HTML.</li>
            </ol>

            <h3 class="fw-bold mt-4" style="color: orange !important;">Two front ends, one backend</h3>
            <p style="color: orange !important;">The same database and the same service layer power two front ends: a JSON API for programs, and the HTML pages you are looking at now for people.</p>
            <div class="table-responsive">
                <table class="table table-dark table-bordered align-middle">
                    <thead>
                        <tr><th></th><th>Web pages</th><th>JSON API</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>Controller</td><td><code>BlackOpsSpecialistUiController</code></td><td><code>BlackOpsSpecialistController</code></td></tr>
                        <tr><td>URLs</td><td><code>/</code>, <code>/characters/...</code>, <code>/about</code></td><td><code>/api/characters/...</code></td></tr>
                        <tr><td>Returns</td><td>HTML from templates</td><td>JSON</td></tr>
                        <tr><td>Calls</td><td colspan="2">the same <code>BlackOpsSpecialistService</code> and <code>BlackOpsSpecialistRepository</code></td></tr>
                    </tbody>
                </table>
            </div>

            <p style="color: orange !important;">Pictures are image files in the static images folder, and each specialist's image path is saved in the database.</p>

            <#-- Bottom button -->
            <div class="bg-secondary bg-opacity-10 text-center py-4 mt-5 rounded">
                <a href="/" class="btn btn-danger px-4 py-2">Back to Gallery</a>
            </div>
        </div>
    </div>
</@l.page>