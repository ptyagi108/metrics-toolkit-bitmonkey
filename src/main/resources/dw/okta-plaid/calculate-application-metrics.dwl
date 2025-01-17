%dw 2.0
output application/json
var applicationCounts = vars.explodedApplications groupBy $.application mapObject {
    ($$): sizeOf($)
}
---
{
    applications: applicationCounts pluck {
        application: $$,
        userCount: $
    } orderBy -$.userCount,
    timestamp: now()
}