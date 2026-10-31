<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add a New Specialist</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" style="color: orange;" href="index">Call of Duty Specialists Gallery</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link btn-orange-inactive" href="index">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-orange-inactive" href="details">Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-orange-inactive" href="about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active btn-orange-active" href="new-character-form">Add Specialist</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container py-5">
        <div class="mx-auto p-5 rounded" style="max-width: 700px; background-color: #212529; box-shadow: 0 0 20px rgba(255,165,0,0.08);">
            <h1 class="fw-bold text-center mb-2" style="color: orange !important;">Add a New Specialist</h1>
            <p class="text-center mb-5" style="color: orange !important;">Fill out the form below to add a new specialist to the gallery from the official Black Ops universe.</p>
            <form class="mx-auto" style="max-width: 600px;">
                <div class="mb-3">
                    <label for="charName" class="form-label" style="color: orange !important;">Name<span style="color: orange !important;">*</span></label>
                    <input type="text" class="form-control" id="charName" placeholder="e.g. Firebreak" required>
                    <div class="form-text" style="color: #a06a00 !important;">The name of the specialist</div>
                </div>

                <div class="mb-3">
                    <label for="backStory" class="form-label" style="color: orange !important;">Description<span style="color: orange !important;">*</span></label>
                    <textarea class="form-control" id="backStory" rows="3" required placeholder="Give a brief description of the specialist in 1-2 sentences..."></textarea>
                    <div class="form-text" style="color: #a06a00 !important;">A brief summary of the specialist. </div>
                </div>

                <div class="mb-3">
                    <label for="universe" class="form-label" style="color: orange !important;">Universe<span style="color: orange !important;">*</span></label>
                    <input type="text" class="form-control" id="universe" placeholder="e.g. Black Ops" required>
                    <div class="form-text" style="color: #a06a00 !important;">Only universe name allowed is Black Ops</div>
                </div>

                <div class="mb-3">
                    <label for="role" class="form-label" style="color: orange !important;">Role(s)<span style="color: orange !important;">*</span></label>
                    <input type="text" class="form-control" id="role" placeholder="e.g. Pyrotechnic" required>
                    <div class="form-text" style="color: #a06a00 !important;">What role(s) does the specialist do in their day-to-day operations?</div>
                </div>

                <div class="mb-3">
                    <label for="equipment" class="form-label" style="color: orange !important;">Equipment<span style="color: orange !important;">*</span></label>
                    <input type="text" class="form-control" id="equipment" placeholder="e.g. Purifier, Reactor Core, Heat Wave" required>
                    <div class="form-text" style="color: #a06a00 !important;">What equipment does the specialist use in their day-to-day operations?</div>
                </div>

                <div class="mb-3">
                    <label for="firstAppearance" class="form-label" style="color: orange !important;">First Appearance<span style="color: orange !important;">*</span></label>
                    <input type="text" class="form-control" id="firstAppearance" placeholder="e.g. Black Ops 3 (November 2015)" required>
                    <div class="form-text" style="color: #a06a00 !important;">What game, month, and year did the specialist first appear? Write it like the example.</div>
                </div>

                <div class="mb-3">
                    <label for="backstory" class="form-label" style="color: orange !important;">Backstory<span style="color: orange !important;">*</span></label>
                    <textarea class="form-control" id="backstory" rows="3" required placeholder="Give the back story of the specialist..."></textarea>
                    <div class="form-text" style="color: #a06a00 !important;">A brief or long back story of the specialist</div>
                </div>

                <div class="mb-3">
                    <label for="personality" class="form-label" style="color: orange !important;">Personality<span style="color: orange !important;">*</span></label>
                    <textarea class="form-control" id="personality" rows="3" required placeholder="Describe the specialist's personality..."></textarea>
                    <div class="form-text" style="color: #a06a00 !important;">A brief or long description of the specialist's personality</div>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-orange-inactive">Add Specialist</button>
                    <a href="index" class="btn btn-outline-light px-4 py-2 me-2">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
