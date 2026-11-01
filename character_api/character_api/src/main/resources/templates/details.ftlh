<#import "layout.ftlh" as l>
<@l.page title="Specialist Details" active="home">
    <div class="mx-auto p-5 rounded my-4" style="max-width: 1000px; background-color: #212529; box-shadow: 0 0 20px rgba(255,165,0,0.08);">

        <#-- Back Button -->
        <a href="/characters" class="btn mb-4 btn-orange-inactive">← Back to Gallery</a>

        <div class="row g-4">

            <#-- Left column: image + quick info -->
            <div class="col-md-4">
                <img src="${myChar.imageUrl?has_content?then(myChar.imageUrl, '/images/Gallery-image.jpg')}" class="img-fluid rounded mb-3" alt="${myChar.name}">
                <div class="bg-danger text-white fw-bold px-3 py-2 mb-3">
                    Quick Info
                </div>
                <h2 style="color: orange !important;">${myChar.name}</h2>
                <p style="color: orange !important;">${myChar.description}</p>

                <p class="mb-1" style="color: orange !important;"><strong>Universe:</strong></p>
                <p style="color: orange !important;">${myChar.universe}</p>

                <p class="mb-1" style="color: orange !important;"><strong>Role(s):</strong></p>
                <div class="mb-3">
                    <#list myChar.roles?split(",") as r>
                        <span class="badge bg-danger me-1">${r?trim}</span>
                    </#list>
                </div>

                <p class="mb-1" style="color: orange !important;"><strong>Equipment:</strong></p>
                <p style="color: orange !important;">${myChar.equipment}</p>

                <p class="mb-1" style="color: orange !important;"><strong>First Appearance:</strong></p>
                <p style="color: orange !important;">${(myChar.firstAppearance)!'Unknown'}</p>
            </div>

            <#-- Right column: backstory + personality -->
            <div class="col-md-8">
                <h3 style="color: orange !important;">Backstory</h3>
                <p style="color: orange !important;">${(myChar.backstory)!'No backstory yet.'}</p>

                <h4 class="mt-4" style="color: orange !important;">Personality</h4>
                <p style="color: orange !important;">${(myChar.personality)!'No personality description yet.'}</p>
            </div>
        </div>

        <#-- Bottom button -->
        <div class="text-center mt-5">
            <a href="/characters" class="btn btn-danger px-4 py-2">View All Specialists</a>
        </div>
    </div>
</@l.page>