%dw 2.0
output application/json
---
{
    users: payload map {
        id: $.id,
        status: $.status
    }
}