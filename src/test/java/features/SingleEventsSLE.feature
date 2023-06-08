Feature: Lemonade API

Background:
* def FullReplays = read('classpath:queries/FullReplays.json')
* def SingleEvents = read('classpath:queries/SingleEvents.json')



@vidstatus

Scenario: stage single events SLE
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-android-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-androidTV-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-fireTV-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-fireTablet-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-iOS-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-roku-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-samsungTV-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-tvOS-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-vizioTV-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-web-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-xboxOne-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def entitytype = $.hits[*].algoliaProperties.entityType
* match each entitytype == 'singleLiveEvents'
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
