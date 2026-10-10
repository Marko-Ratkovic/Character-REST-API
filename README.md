# Character-REST-API

# Black Ops Specialists REST API

A Spring Boot REST API for creating, reading, updating, deleting, searching, and filtering Call of Duty: Black Ops Specialists, stored in a PostgreSQL database on Neon.

**Character Type:** Call of Duty: Black Ops Specialists are the playable operators in Call of Duty: Black Ops 3 and 4. Each has a universe, one or more roles, and signature equipment.

## Entity: BlackOpsSpecialist

| Attribute | Type | Rules |
|---|---|---|
| `characterId` | Long | Auto-generated primary key |
| `name` | String | Required, cannot be blank |
| `description` | String | Required, cannot be blank, maximum 255 characters |
| `universe` | String | Required, cannot be blank |
| `roles` | String | Required, cannot be blank |
| `equipment` | String | Required, cannot be blank |

## Endpoints

| Method | Path | Description | Success status |
|---|---|---|---|
| GET | `/api/characters` | Get all characters | 200 |
| GET | `/api/characters/{id}` | Get one character by ID | 200 |
| POST | `/api/characters` | Add a character | 201 |
| PUT | `/api/characters/{id}` | Update a character | 200 |
| DELETE | `/api/characters/{id}` | Delete a character | 204 |
| GET | `/api/characters?universe=Black Ops` | Filter by universe | 200 |
| GET | `/api/characters?name=aj` | Search by name (partial, case-insensitive) | 200 |

**Example Request Body (POST and PUT):**

```json
{
  "name": "Zero",
  "description": "Self-taught digital security expert who disrupts enemies with a devastating arsenal of hacking tools.",
  "universe": "Black Ops",
  "roles": "Hacker, Support",
  "equipment": "Ice Pick, EMP Disruptor"
}
```

## Deployed API

https://character-rest-api.onrender.com/api/characters

**Cold start note:** This API runs on Render's free tier, which spins the service down when idle. The first request after a pause can take about a minute to respond.