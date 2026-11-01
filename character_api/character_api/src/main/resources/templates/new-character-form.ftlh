<#import "layout.ftlh" as l>
<@l.page title=formTitle active=(characterId??)?then('', 'new')>
    <div class="mx-auto p-5 rounded my-4" style="max-width: 700px; background-color: #212529; box-shadow: 0 0 20px rgba(255,165,0,0.08);">
        <h1 class="fw-bold text-center mb-2" style="color: orange !important;">Add a New Specialist</h1>
        <p class="text-center mb-4" style="color: orange !important;">Fill out the form below to add a new specialist to the gallery from the official Black Ops universe.</p>

        <#if errors??>
            <div class="alert alert-danger">
                <ul class="mb-0">
                    <#list errors as e><li>${e}</li></#list>
                </ul>
            </div>
        </#if>

        <form class="mx-auto" style="max-width: 600px;" action="/characters" method="post">
            <div class="mb-3">
                <label for="name" class="form-label" style="color: orange !important;">Name*</label>
                <input type="text" class="form-control" id="name" name="name" value="${(myChar.name)!''}" placeholder="e.g. Firebreak" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label" style="color: orange !important;">Description*</label>
                <textarea class="form-control" id="description" name="description" rows="3" required placeholder="Give a brief description in 1-2 sentences...">${(myChar.description)!''}</textarea>
            </div>

            <div class="mb-3">
                <label for="universe" class="form-label" style="color: orange !important;">Universe*</label>
                <input type="text" class="form-control" id="universe" name="universe" value="${(myChar.universe)!''}" placeholder="e.g. Black Ops" required>
            </div>

            <div class="mb-3">
                <label for="roles" class="form-label" style="color: orange !important;">Role(s)*</label>
                <input type="text" class="form-control" id="roles" name="roles" value="${(myChar.roles)!''}" placeholder="e.g. Pyrotechnic, Room-Cleaning" required>
                <div class="form-text" style="color: #a06a00 !important;">Put the main role first. It becomes the badge on the gallery card.</div>
            </div>

            <div class="mb-3">
                <label for="equipment" class="form-label" style="color: orange !important;">Equipment*</label>
                <input type="text" class="form-control" id="equipment" name="equipment" value="${(myChar.equipment)!''}" placeholder="e.g. Reactor Core, Heat Wave, Purifier" required>
            </div>

            <div class="mb-3">
                <label for="imageUrl" class="form-label" style="color: orange !important;">Image URL</label>
                <input type="text" class="form-control" id="imageUrl" name="imageUrl" value="${(myChar.imageUrl)!''}" placeholder="e.g. /images/Zero.jpg">
                <div class="form-text" style="color: #a06a00 !important;">Optional. Leave blank to use the gallery placeholder.</div>
            </div>

            <div class="mb-3">
                <label for="firstAppearance" class="form-label" style="color: orange !important;">First Appearance*</label>
                <input type="text" class="form-control" id="firstAppearance" name="firstAppearance" value="${(myChar.firstAppearance)!''}" placeholder="e.g. Black Ops 3 (November 2015)" required>
            </div>

            <div class="mb-3">
                <label for="backstory" class="form-label" style="color: orange !important;">Backstory*</label>
                <textarea class="form-control" id="backstory" name="backstory" rows="4" required placeholder="Tell the specialist's story: where they came from, what shaped them into the specialist they are today...">${(myChar.backstory)!''}</textarea>
            </div>

            <div class="mb-3">
                <label for="personality" class="form-label" style="color: orange !important;">Personality*</label>
                <textarea class="form-control" id="personality" name="personality" rows="3" required placeholder="Describe how they act and come across: their temperament, how they treat allies, and how they behave in combat...">${(myChar.personality)!''}</textarea>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-orange-active">Add Specialist</button>
                <a href="/" class="btn btn-outline-light px-4 py-2 ms-2">Cancel</a>
            </div>
        </form>
    </div>
</@l.page>
