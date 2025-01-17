%dw 2.0
output application/json
---
vars.userApplications + {
    user_id: vars.userId,
    applications: payload.applications map $.display_name
}