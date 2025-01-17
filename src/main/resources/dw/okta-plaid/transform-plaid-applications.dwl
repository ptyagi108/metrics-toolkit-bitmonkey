%dw 2.0
output application/json
---
{
    user_id: vars.userId,
    applications: (payload.applications default []) map {
        display_name: $.display_name
    }
}