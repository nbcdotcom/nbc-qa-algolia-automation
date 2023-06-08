Feature: Lemonade API

Background:
* def FullReplays = read('classpath:queries/FullReplays.json')
* def SingleEvents = read('classpath:queries/SingleEvents.json')



@vidstatus

Scenario: stage single events asc SLE
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-dates-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def toTime =
    """
    function(s) {
      var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
      var sdf = new SimpleDateFormat("yyyy-MM-dd");
      return sdf.parse(s).time           
    }
    """ 
* def other = $.hits[0].algoliaProperties.eventDate
* def today = $.hits[1].algoliaProperties.eventDate
* assert toTime(other) < toTime(today)
* def hits = $.hits
* def nbhits = $.nbHits
* def nbSortedHits = $.nbSortedHits
* def hitsPerPage = $.hitsPerPage
* def page = $.page
* def nbPages = $.nbPages
* match hits != null
* match nbhits != null
* match nbSortedHits != null
* match hitsPerPage != null
* match page != null
* match nbPages != null

Scenario: stage single events desc SLE
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-dates-desc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request SingleEvents
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def toTime =
    """
    function(s) {
      var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
      var sdf = new SimpleDateFormat("yyyy-MM-dd");
      return sdf.parse(s).time           
    }
    """ 
* def other = $.hits[0].algoliaProperties.eventDate
* def today = $.hits[1].algoliaProperties.eventDate
* assert toTime(other) > toTime(today)
* def hits = $.hits
* def nbhits = $.nbHits
* def nbSortedHits = $.nbSortedHits
* def hitsPerPage = $.hitsPerPage
* def page = $.page
* def nbPages = $.nbPages
* match hits != null
* match nbhits != null
* match nbSortedHits != null
* match hitsPerPage != null
* match page != null
* match nbPages != null

Scenario: stage single events asc FER
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-dates-asc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request FullReplays
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def toTime =
    """
    function(s) {
      var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
      var sdf = new SimpleDateFormat("yyyy-MM-dd");
      return sdf.parse(s).time           
    }
    """ 
* def other = $.hits[0].algoliaProperties.eventDate
* def today = $.hits[1].algoliaProperties.eventDate
* assert toTime(other) < toTime(today)
* def hits = $.hits
* def nbhits = $.nbHits
* def nbSortedHits = $.nbSortedHits
* def hitsPerPage = $.hitsPerPage
* def page = $.page
* def nbPages = $.nbPages
* match hits != null
* match nbhits != null
* match nbSortedHits != null
* match hitsPerPage != null
* match page != null
* match nbPages != null

Scenario: stage single events desc FER
* configure retry = { count: 2, interval: 3000 }
* def liveupcomingurl = 'https://3nkvntt7f3-dsn.algolia.net/1/indexes/stage_single-events-dates-desc/query?x-algolia-application-id=3NKVNTT7F3&x-algolia-api-key=a09e412199af8e667a747b88eae3827f'
Given url liveupcomingurl
And request FullReplays
And header Content-Type = 'application/vnd.api+json'
* configure charset = null
When method POST
And retry until responseStatus == 200 
Then status 200
Then def lnobj = (response)
* print lnobj
* def toTime =
    """
    function(s) {
      var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
      var sdf = new SimpleDateFormat("yyyy-MM-dd");
      return sdf.parse(s).time           
    }
    """ 
* def other = $.hits[0].algoliaProperties.eventDate
* def today = $.hits[1].algoliaProperties.eventDate
* assert toTime(other) > toTime(today)
* def hits = $.hits
* def nbhits = $.nbHits
* def nbSortedHits = $.nbSortedHits
* def hitsPerPage = $.hitsPerPage
* def page = $.page
* def nbPages = $.nbPages
* match hits != null
* match nbhits != null
* match nbSortedHits != null
* match hitsPerPage != null
* match page != null
* match nbPages != null