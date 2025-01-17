%dw 2.0
output application/json
---
flatten(vars.userApplications map (user) -> 
    user.applications map (appName) -> {
        user_id: user.user_id,
        application: appName
    }
)