# Black Ops Specialists Gallery

A Spring Boot web application and REST API for creating, reading, updating, deleting, searching, and filtering Call of Duty: Black Ops Specialists. It has FreeMarker web pages for people and a JSON API for programs, both using the same service layer and a PostgreSQL database on Neon.

**Character Type:** Call of Duty: Black Ops Specialists are the playable operators in Call of Duty: Black Ops 3 and 4. Each has a universe, one or more roles, and signature equipment, first appearance, backstory, and personality.

## Entity: BlackOpsSpecialist

| Attribute | Type | Rules |
|---|---|---|
| `characterId` | Long | Auto-generated primary key |
| `name` | String | Required, cannot be blank |
| `description` | String | Required, cannot be blank, maximum 255 characters |
| `universe` | String | Required, cannot be blank |
| `roles` | String | Required, cannot be blank |
| `equipment` | String | Required, cannot be blank |
| `imageUrl` | String | Optional, path to the image (for example `/images/Zero.jpg`). A placeholder image is shown when empty |
| `firstAppearance` | String | Required in the web form, for example `Black Ops 3 (November 2015)` |
| `backstory` | String | Required in the web form, maximum 2000 characters |
| `personality` | String | Required in the web form, maximum 2000 characters |

## Pages

| Route | Template | Description |
|---|---|---|
| `GET /` and `GET /characters` | `index.ftlh` | Gallery of all specialists with search by name and equipment and role filters |
| `GET /characters/{id}` | `details.ftlh` | Details page for one specialist, with Edit and Delete buttons |
| `GET /characters/new` | `new-character-form.ftlh` | Form to add a specialist |
| `POST /characters` | (redirect) | Receives the add form and shows the new specialist |
| `GET /characters/{id}/edit` | `new-character-form.ftlh` | The same form, pre-filled for editing |
| `POST /characters/{id}` | (redirect) | Receives the edit form and saves the changes |
| `POST /characters/{id}/delete` | (redirect) | Deletes a specialist after a confirmation prompt |
| `GET /about` | `about.ftlh` | About page describing the gallery and how the app is built |
| Any unknown ID | `error.ftlh` | Friendly error page with a 404 status |

## API Endpoints

| Method | Path | Description | Success status | Error statuses |
|---|---|---|---|---|
| GET | `/api/characters` | Get all characters | 200 | None |
| GET | `/api/characters/{id}` | Get one character by ID | 200 | 404 |
| POST | `/api/characters` | Add a character | 201 | 400 |
| PUT | `/api/characters/{id}` | Update a character | 200 | 400 |
| DELETE | `/api/characters/{id}` | Delete a character | 204 | 404 |
| GET | `/api/characters?universe=Black Ops` | Filter by universe | 200 | None |
| GET | `/api/characters?name=aj` | Search by name (partial, case-insensitive) | 200 | None |

**Error codes:**

| Status | Meaning |
|---|---|
| 400 Bad Request | The request body failed validation, for example a missing or blank `name` or `description` |
| 404 Not Found | No specialist exists with the requested ID |

**Example Request Body (POST and PUT):**

```json
{
  "name": "Zero",
  "description": "Self-taught digital security expert who disrupts enemies with a devastating arsenal of hacking tools.",
  "universe": "Black Ops",
  "roles": "Hacker, Support",
  "equipment": "Ice Pick, EMP Disruptor",
  "imageUrl": "/images/Zero.jpg",
  "firstAppearance": "Black Ops 4 (October 2018)",
  "backstory": "Very little is known about Leni Vogel's early life. What is known is that she is a self-taught digital security expert who built her skills on her own, with a particular talent for countermeasures. Known in the field as Zero, she has assembled an arsenal of technology-crippling hacks, and she uses it to disrupt and distract her enemies on the battlefield.",
  "personality": "Zero is self-reliant and methodical, someone who taught herself a demanding craft and prefers to work through technology. She favors countering and crippling her opponents' tools over meeting them head on, so she fights with preparation and precision, not brute force. She is also guarded. Her past is almost entirely unknown, and that silence fits someone who stays out of the spotlight."
}
```

## Live Site and API

Home page: https://character-rest-api.onrender.com/

API: https://character-rest-api.onrender.com/api/characters

**Cold start note:** This API and live site run on Render's free tier, which spins the service down when idle. The first request after a pause can take about a minute to respond.