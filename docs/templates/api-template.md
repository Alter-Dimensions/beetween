# API Documentation Template

**API:** [API Name]
**Version:** [v1.0]
**Base URL:** `https://api.example.com/v1`
**Last Updated:** [Date]

## Overview

**Purpose:** What this API enables and why it exists

**Authentication:** Brief description of auth method (JWT, API Key, OAuth)

**Rate Limits:** Request limits per minute/hour

## Quick Start

### Authentication
```bash
# Example authentication
curl -H "Authorization: Bearer YOUR_TOKEN" \
     https://api.example.com/v1/endpoint
```

### Basic Usage
```javascript
// Example in your primary language
const response = await fetch('/api/v1/endpoint', {
  headers: {
    'Authorization': 'Bearer ' + token,
    'Content-Type': 'application/json'
  }
});
```

## Endpoints

### [Resource Name] Operations

#### Create [Resource]
```http
POST /api/v1/resource
```

**Request Body:**
```json
{
  "name": "string (required)",
  "description": "string (optional)",
  "status": "active|inactive (required)"
}
```

**Response (201 Created):**
```json
{
  "id": "12345",
  "name": "Resource Name",
  "description": "Resource description",
  "status": "active",
  "created_at": "2025-01-15T10:30:00Z",
  "updated_at": "2025-01-15T10:30:00Z"
}
```

**Error Responses:**
```json
// 400 Bad Request
{
  "error": "validation_failed",
  "message": "Name is required",
  "details": {
    "field": "name",
    "code": "required"
  }
}

// 401 Unauthorized
{
  "error": "unauthorized",
  "message": "Invalid or expired token"
}
```

#### Get [Resource]
```http
GET /api/v1/resource/{id}
```

**Parameters:**
- `id` (path, required): Resource identifier

**Response (200 OK):**
```json
{
  "id": "12345",
  "name": "Resource Name",
  "description": "Resource description",
  "status": "active",
  "created_at": "2025-01-15T10:30:00Z",
  "updated_at": "2025-01-15T10:30:00Z"
}
```

#### List [Resources]
```http
GET /api/v1/resource
```

**Query Parameters:**
- `page` (optional): Page number (default: 1)
- `limit` (optional): Items per page (default: 20, max: 100)
- `status` (optional): Filter by status (active|inactive)
- `search` (optional): Search in name and description

**Response (200 OK):**
```json
{
  "data": [
    {
      "id": "12345",
      "name": "Resource Name",
      "status": "active"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 20,
    "total": 150,
    "pages": 8
  }
}
```

#### Update [Resource]
```http
PUT /api/v1/resource/{id}
```

**Request Body:**
```json
{
  "name": "Updated Name",
  "description": "Updated description",
  "status": "inactive"
}
```

**Response (200 OK):** Same as Create response

#### Delete [Resource]
```http
DELETE /api/v1/resource/{id}
```

**Response (204 No Content):** Empty body

## Data Models

### [Resource] Object
| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Read-only | Unique identifier |
| `name` | string | Yes | Resource name (3-100 chars) |
| `description` | string | No | Resource description (max 500 chars) |
| `status` | enum | Yes | `active` or `inactive` |
| `created_at` | datetime | Read-only | ISO 8601 timestamp |
| `updated_at` | datetime | Read-only | ISO 8601 timestamp |

## Error Handling

### HTTP Status Codes
- `200` - Success
- `201` - Created successfully
- `204` - No content (successful deletion)
- `400` - Bad request (validation errors)
- `401` - Unauthorized (invalid/missing token)
- `403` - Forbidden (insufficient permissions)
- `404` - Resource not found
- `409` - Conflict (duplicate resource)
- `422` - Unprocessable entity (business logic error)
- `429` - Too many requests (rate limited)
- `500` - Internal server error

### Error Response Format
```json
{
  "error": "error_code",
  "message": "Human-readable error message",
  "details": {
    "field": "field_name",
    "code": "validation_code"
  },
  "request_id": "req_12345"
}
```

## SDKs & Examples

### cURL Examples
```bash
# Create resource
curl -X POST https://api.example.com/v1/resource \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"name": "New Resource", "status": "active"}'

# Get resource
curl -H "Authorization: Bearer YOUR_TOKEN" \
     https://api.example.com/v1/resource/12345
```

### JavaScript/TypeScript
```javascript
class ApiClient {
  constructor(token) {
    this.token = token;
    this.baseUrl = 'https://api.example.com/v1';
  }

  async createResource(data) {
    const response = await fetch(`${this.baseUrl}/resource`, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${this.token}`,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    });
    return response.json();
  }
}
```

### Python
```python
import requests

class ApiClient:
    def __init__(self, token):
        self.token = token
        self.base_url = 'https://api.example.com/v1'
        self.headers = {
            'Authorization': f'Bearer {token}',
            'Content-Type': 'application/json'
        }

    def create_resource(self, data):
        response = requests.post(
            f'{self.base_url}/resource',
            headers=self.headers,
            json=data
        )
        return response.json()
```

## Webhooks (if applicable)

### Webhook Events
- `resource.created` - When a new resource is created
- `resource.updated` - When a resource is modified
- `resource.deleted` - When a resource is deleted

### Webhook Payload
```json
{
  "event": "resource.created",
  "data": {
    "id": "12345",
    "name": "Resource Name",
    "status": "active"
  },
  "timestamp": "2025-01-15T10:30:00Z"
}
```

## Rate Limiting

- **Authenticated requests:** 1000 requests per hour
- **Unauthenticated requests:** 100 requests per hour
- **Rate limit headers included in all responses:**
  - `X-RateLimit-Limit`: Request limit
  - `X-RateLimit-Remaining`: Remaining requests
  - `X-RateLimit-Reset`: Reset time (Unix timestamp)

## Testing

### Test Environment
- **Base URL:** `https://api-staging.example.com/v1`
- **Test Data:** Use test API keys for development
- **Data Reset:** Test data is reset daily at midnight UTC

### Postman Collection
[Download Postman Collection](link-to-postman-collection)

---

**Support:** [API Support Email/Discord]
**Status Page:** [API Status Page URL]
**Changelog:** [API Changelog URL]
