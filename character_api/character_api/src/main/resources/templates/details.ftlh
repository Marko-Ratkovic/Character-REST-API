<#import "layout.ftlh" as l>
<@l.page title="Specialist Details" active="home">
    <div class="container py-5">
        <div class="mx-auto p-5 rounded" style="max-width: 1000px; background-color: #212529; box-shadow: 0 0 20px rgba(255,165,0,0.08);">
                
                <#-- Back Button -->
                <a href="index" class="btn mb-4 btn-orange-inactive">← Back to Gallery</a>
                <div class="row g-4">

                    <#-- Left column: image + quick info -->
                    <div class="col-md-4">
                        <#-- Character image -->
                        <img src="/images/Firebreak.jpg" class="img-fluid rounded" alt="Firebreak">
                        <div class="bg-danger text-white fw-bold px-3 py-2 mb-3">
                            Quick Info
                        </div>
                    <h2 style="color: orange !important;">${myChar.name}</h2>
                    <p class="text-secondary" style="color: orange !important;">${myChar.description}</p>
                    <p class="mb-1" style="color: orange !important;"><strong>Universe:</strong></p>
                    <p style="color: orange !important;">Black Ops</p>
                    <p class="mb-1" style="color: orange !important;"><strong>Role:</strong></p>
                    <span class="badge bg-danger mb-3">Pyrotechnic</span>
                    <p class="mb-1" style="color: orange !important;"><strong>Equipment:</strong></p>
                    <p style="color: orange !important;">Reactor Core, Heat Wave, Purifier</p>
                    <p class="mb-1" style="color: orange !important;"><strong>First Appearance:</strong></p>
                    <p style="color: orange !important;">Call of Duty: Black Ops 3 (November 2015)</p>
                </div>

                <#-- Right column: backstory + personality -->
                <div class="col-md-8">
                    <h3 class="text-info" style="color: orange !important;">Backstory</h3>
                    <p style="color: orange !important;">Krystof "Firebreak" Hejek grew up in a violent household in Prague, 
                        scarred by an abusive, alcoholic father and the trauma of watching his sister get hurt in the crossfire of that abuse.
                        As a teenager, his pent-up rage first boiled over into an act of arson that landed him in a correctional facility, but it
                        foreshadowed something far darker. Determined to finally put an end to the abuse for good, Firebreak later set his
                        father on fire, killing him in the same violent medium the man had driven him toward his entire life. He was recruited
                        into the military as a pyro unit at just seventeen, and fire quickly became more than a weapon: it became his calling.
                        Despite the respect he's quietly earned from his comrades, Firebreak rarely returns it,
                        weighed down by guilt over robbing his sister of a normal childhood, and a fractured, painful relationship
                        with her that lingers beneath the flames he wields so effortlessly.
                    </p>

                    <h4 class="text-info mt-4" style="color: orange !important;">Personality</h4>
                    <p style="color: orange !important;">Firebreak is calm, detached, and unsettlingly dispassionate, 
                        traits that make him all the more unnerving on the battlefield. He shows little regard for his allies,
                        treating combat less like a dangerous mission and more like a physical outlet he genuinely relishes, only truly
                        coming alive when his enemies are the ones on fire. His psychopathic tendencies are kept loosely in check by
                        heavy medication that seems to do little to soften his edge.
                    </p>
                </div>
            </div>

            <#-- Bottom button -->
            <div class="text-center mt-5">
            <a href="index" class="btn btn-danger px-4 py-2">View All Specialists</a>
            </div>
        </div>    
    </div>
</@l.page>
