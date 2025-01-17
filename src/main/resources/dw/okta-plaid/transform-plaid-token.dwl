%dw 2.0
output application/json
---
{
    user_id: vars.userId,
    access_token: payload.access_token
}