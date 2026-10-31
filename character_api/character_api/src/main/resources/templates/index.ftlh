<#import "layout.ftlh" as l>
<@l.page title="Gallery" active="home">
  <div class="bg-dark text-light py-4">
    <div class="container">
      <h1 class="fw-bold" style="color: orange;">Call of Duty Specialists Gallery</h1>
      <p class="mb-4" style="color: orange;">Explore the amazing collection of diverse specialists in the Call of Duty Black Ops universe.</p>

      <#-- Search bar + clear button -->
      <div class="row g-2 mb-3">
        <div class="col">
          <input type="text" class="form-control bg-dark text-light border-secondary" placeholder="Search by character name or role...">
        </div>
        <div class="col-auto">
          <button class="btn btn-secondary btn-orange-inactive">Clear</button>
        </div>
      </div>

      <#-- Filter pill buttons -->
      <div class="mb-3">
        <button class="btn btn-outline-secondary btn-sm me-2 btn-orange-active">All</button>
        <button class="btn btn-outline-secondary btn-sm me-2 btn-orange-inactive">Pyrotechnic</button>
        <button class="btn btn-outline-secondary btn-sm me-2 btn-orange-inactive">Assassin</button>
        <button class="btn btn-outline-secondary btn-sm me-2 btn-orange-inactive">Exterminator</button>
        <button class="btn btn-outline-secondary btn-sm me-2 btn-orange-inactive">Support</button>
        <button class="btn btn-outline-secondary btn-sm me-2 btn-orange-inactive">Hacker</button>
        <button class="btn btn-outline-secondary btn-sm me-2 btn-orange-inactive">Scout</button>
      </div>
    </div>
  </div>

  <div class="container">
    <p class="text-secondary" style="color: orange !important;">Showing <strong>6</strong> specialist(s)</p>

    <div class="row g-4">
    <#-- Card 1 -->
    <div class="col-md-4">
        <div class="card bg-dark text-light border-secondary h-100">
            <img src="/images/Firebreak.jpg" class="card-img-top" alt="Firebreak">
            <div class="card-body d-flex flex-column">
                <h5 class="card-title" style="color: orange !important;">Firebreak</h5>
                <p class="mb-1" style="color: orange !important;"><strong>Universe:</strong> Black Ops</p>
                <span class="badge bg-danger mb-2">Pyrotechnic</span>
                <p class="card-text" style="color: orange !important;">Battle-scarred pyro specialist who wields fire as both weapon and refuge from his violent past.</p>
                <p class="card-text" style="color: orange !important;">Equipment: Reactor Core, Heat Wave, Purifier</p>
                <p class="card-text" style="color: orange !important;">Role(s): Pyrotechnic, Room-Cleaning</p>
                <a href="details" class="btn btn-danger w-100 mt-auto">View Details/Unredacted Information</a>
            </div>
        </div>
    </div>

    <#-- Card 2 -->
    <div class="col-md-4">
        <div class="card bg-dark text-light border-secondary h-100">
        <img src="/images/Spectre.jpg" class="card-img-top" alt="Spectre">
        <div class="card-body d-flex flex-column">
            <h5 class="card-title" style="color: orange !important;">Spectre</h5>
            <p class="mb-1" style="color: orange !important;"><strong>Universe:</strong> Black Ops</p>
            <span class="badge bg-danger mb-2">Assassin</span>
            <p class="card-text" style="color: orange !important;">Mysterious free-agent assassin whose identity remains unknown even as their kills leave a chilling, precise signature.</p>
            <p class="card-text" style="color: orange !important;">Equipment: Ripper, Shadow Blade, Smoke Grenade, Active Camo</p>
            <p class="card-text" style="color: orange !important;">Role(s): Stealth, Assassin</p>
            <a href="details" class="btn btn-danger w-100 mt-auto">View Details/Unredacted Information</a>
        </div>
        </div>
    </div>
  
    <#-- Card 3 -->
    <div class="col-md-4">
        <div class="card bg-dark text-light border-secondary h-100">
        <img src="/images/Reaper.jpg" class="card-img-top" alt="Reaper">
        <div class="card-body d-flex flex-column">
            <h5 class="card-title" style="color: orange !important;">Reaper</h5>
            <p class="mb-1" style="color: orange !important;"><strong>Universe:</strong> Black Ops</p>
            <span class="badge bg-danger mb-2">Exterminator</span>
            <p class="card-text" style="color: orange !important;">Stolen military prototype robot showing signs of sentience, now fighting battles for reasons no one truly understands.</p>
            <p class="card-text" style="color: orange !important;">Equipment: Scythe, Psychosis, Radar Shroud</p>
            <p class="card-text" style="color: orange !important;">Role(s): Heavy Assault</p>
            <a href="details" class="btn btn-danger w-100 mt-auto">View Details/Unredacted Information</a>
        </div>
        </div>
    </div>

    <#-- Card 4 -->
    <div class="col-md-4">
        <div class="card bg-dark text-light border-secondary h-100">
        <img src="/images/Crash.jpg" class="card-img-top" alt="Crash">
        <div class="card-body d-flex flex-column">
            <h5 class="card-title" style="color: orange !important;">Crash</h5>
            <p class="mb-1" style="color: orange !important;"><strong>Universe:</strong> Black Ops</p>
            <span class="badge bg-danger mb-2">Support</span>
            <p class="card-text" style="color: orange !important;">Former veterinary student turned battlefield medic, hardened by gambling debts and years surviving on the run.</p>
            <p class="card-text" style="color: orange !important;">Equipment: TAK-5, Assault Pack </p>
            <p class="card-text" style="color: orange !important;">Role(s): Support, Field Medic</p>
            <a href="details" class="btn btn-danger w-100 mt-auto">View Details/Unredacted Information</a>
        </div>
        </div>
    </div>

    <#-- Card 5 -->
    <div class="col-md-4">
        <div class="card bg-dark text-light border-secondary h-100">
        <img src="/images/Zero.jpg" class="card-img-top" alt="Zero">
        <div class="card-body d-flex flex-column">
            <h5 class="card-title" style="color: orange !important;">Zero</h5>
            <p class="mb-1" style="color: orange !important;"><strong>Universe:</strong> Black Ops</p>
            <span class="badge bg-danger mb-2">Hacker</span>
            <p class="card-text" style="color: orange !important;">Self-taught digital security expert who disrupts enemies with a devastating arsenal of hacking tools.</p>
            <p class="card-text" style="color: orange !important;">Equipment: Icepick, EMP Disruptor</p>
            <p class="card-text" style="color: orange !important;">Role(s): Hacker</p>
            <a href="details" class="btn btn-danger w-100 mt-auto">View Details/Unredacted Information</a>
        </div>
        </div>
    </div>

    <#-- Card 6 -->
    <div class="col-md-4">
        <div class="card bg-dark text-light border-secondary h-100">
        <img src="/images/Recon.jpg" class="card-img-top" alt="Recon">
        <div class="card-body d-flex flex-column">
            <h5 class="card-title" style="color: orange !important;">Recon</h5>
            <p class="mb-1" style="color: orange !important;"><strong>Universe:</strong> Black Ops</p>
            <span class="badge bg-danger mb-2">Scout</span>
            <p class="card-text" style="color: orange !important;">Disciplined recon scout who channels a generations-old family temper through calm precision and duty.</p>
            <p class="card-text" style="color: orange !important;">Equipment: Vision Pulse, Sensor Dart</p>
            <p class="card-text" style="color: orange !important;">Role(s): Reconnaissance, Intel-gathering</p>
            <a href="details" class="btn btn-danger w-100 mt-auto">View Details/Unredacted Information</a>
        </div>
        </div>
    </div>
    </div>
  <footer class="bg-dark text-center py-3 mt-5">
    <p class="text-light mb-0" style="color: orange !important;">© 2026 Call of Duty Specialists Gallery. Created as an educational project.</p>
  </footer>
</@l.page>
