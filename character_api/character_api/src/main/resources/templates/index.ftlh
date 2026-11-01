<#import "layout.ftlh" as l>
<@l.page title="Gallery" active="home">
  <div class="bg-dark text-light py-4 px-3 rounded mb-4">
    <h1 class="fw-bold" style="color: orange;">Call of Duty Specialists Gallery</h1>
    <p class="mb-4" style="color: orange;">Explore the amazing collection of diverse specialists in the Call of Duty Black Ops universe.</p>

    <#-- Search form -->
    <form action="/characters" method="get" class="row g-2 mb-3">
      <div class="col-md-5">
        <input type="text" name="name" value="${name!''}" class="form-control bg-dark text-light border-secondary" placeholder="Search by name...">
      </div>
      <div class="col-md-4">
        <input type="text" name="equipment" value="${equipment!''}" class="form-control bg-dark text-light border-secondary" placeholder="Search by equipment...">
      </div>
      <div class="col-md-3">
        <button type="submit" class="btn btn-orange-active">Search</button>
        <a href="/characters" class="btn btn-orange-inactive">Clear</a>
      </div>
    </form>

    <#-- Filter pill buttons -->
    <div>
      <a href="/characters" class="btn btn-sm me-2 ${(roles!'')?has_content?then('btn-orange-inactive', 'btn-orange-active')}">All</a>
      <#list ["Pyrotechnic", "Assassin", "Exterminator", "Support", "Hacker", "Scout", "Assault"] as r>
        <a href="/characters?roles=${r}" class="btn btn-sm me-2 ${((roles!'') == r)?then('btn-orange-active', 'btn-orange-inactive')}">${r}</a>
      </#list>
    </div>
  </div>

  <p style="color: orange;">Showing <strong>${characters?size}</strong> specialist(s)</p>

  <div class="row g-4">
    <#list characters as c>
      <div class="col-md-4">
        <div class="card bg-dark text-light border-secondary h-100">
          <img src="${c.imageUrl?has_content?then(c.imageUrl, '/images/Gallery-image.jpg')}" class="card-img-top" style="height: 280px; object-fit: cover;" alt="${c.name}">
          <div class="card-body d-flex flex-column">
            <h5 class="card-title" style="color: orange !important;">${c.name}</h5>
            <p class="mb-1" style="color: orange !important;"><strong>Universe:</strong> ${c.universe}</p>
            <span class="badge bg-danger mb-2">${c.roles?split(",")[0]?trim}</span>
            <p class="card-text" style="color: orange !important;">${c.description}</p>
            <p class="card-text" style="color: orange !important;">Equipment: ${c.equipment}</p>
            <p class="card-text" style="color: orange !important;">Role(s): ${c.roles}</p>
            <a href="/characters/${c.characterId?c}" class="btn btn-danger w-100 mt-auto">View Details/Unredacted Information</a>
          </div>
        </div>
      </div>
    <#else>
      <p style="color: orange;">No specialists found.</p>
    </#list>
  </div>
</@l.page>
