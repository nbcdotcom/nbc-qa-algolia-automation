Feature: Lemonade API

Background:
* def FullReplaysdates = read('classpath:queries/FullReplaysdates.json')
* def SingleEvents = read('classpath:queries/SingleEvents.json')



@vidstatus

Scenario: stage single events SLE
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE Android
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-android-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE Android TV
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-androidTV-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE Fire TV
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-fireTV-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE Fire Tablet 
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-fireTablet-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE iOS
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-iOS-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE Roku
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-roku-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE Samsung TV
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-samsungTV-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE tvOS
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-tvOS-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE vizio tv
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-vizioTV-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE Web
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-web-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null

Scenario: stage single events SLE xboxOne
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://stage-api.nbc.com/stage_single-events-xboxOne-desc'
Given url liveupcomingurl
And request FullReplaysdates
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def contentType = $.hits[*].event.contentType
* match each contentType == "FER"
* def contentType = $.hits[*].event.programType
* match each programType == ‘Full Event Replay'
* def programmingType = $.hits[*].event.programmingType
* match each programmingType == ‘Full Event Replay'
* def liveEntitlement = $.hits[*].event.liveEntitlement
* assert each liveEntitlement == "Entitled" || "Free"
* def entitlement = $.hits[*].event.entitlement
* assert each entitlement == "Entitled" || "Free"
* def liveBadge = $.hits[*].event.liveBadge
* match each liveBadge == "LIVE"
* def labelBadge = $.hits[*].event.labelBadge
* match each labelBadge == "NEW"
* def description = $.hits[*].event.upcomingModal.description
* match each description == '#present'
* def ctaText = $.hits[*].event.upcomingModal.ctaText
* match each ctaText == "CONTINUE TO LIVE"
* def mobileWebCtaText = $.hits[*].event.upcomingModal.mobileWebCtaText
* match each mobileWebCtaText == "WATCH ON THE NBC APP"
* def modalType = $.hits[*].event.upcomingModal.analytics.modalType
* match each modalType == null
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'fullEventReplays'
* def locked = $.hits[*].event.locked
* match each locked == '#present'
* match each locked != null
* def customerPlayableDate = $.hits[*].event.customerPlayableDate
* match each customerPlayableDate == '#present'
* match each customerPlayableDate != null
* def directToLiveThreshold = $.hits[*].event.directToLiveThreshold
* match each directToLiveThreshold == '#present'
* match each directToLiveThreshold != null
* def lastMinuteModalLifespan = $.hits[*].event.lastMinuteModalLifespan
* match each lastMinuteModalLifespan == '#present'
* match each lastMinuteModalLifespan != null
* def dismissText = $.hits[*].event.dismissText
* match each dismissText == '#present'
* match each dismissText != null
* def countdownDayLabel = $.hits[*].event.countdownDayLabel
* match each countdownDayLabel == '#present'
* match each countdownDayLabel != null
* def countdownHourLabel = $.hits[*].event.countdownHourLabel
* match each countdownHourLabel == '#present'
* match each countdownHourLabel != null
* def countdownMinutesLabel = $.hits[*].event.countdownMinutesLabel
* match each countdownMinutesLabel == '#present'
* match each countdownMinutesLabel != null
* def brandstaticimage = $.hits[*].brand.staticPreviewImage
* match each brandstaticimage == '#present'
* match each brandstaticimage != null
