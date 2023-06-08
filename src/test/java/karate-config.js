function fn() {   
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    name: 'bonanzaPage',
    paginated: 'paginatedComponent',
    brandseries: 'brandSeriesGroupedByCategory',
    endCard: 'endCard',
    onAirNowShelf: 'onAirNowShelf',
    featuredShowsSection: 'featuredShowsSection',
    daySchedule:'daySchedule',
    videosSection :'videosSection',
    onboardingBrandCategories:'onboardingBrandCategories',
    onboardingCategoryFavorites : 'onboardingCategoryFavorites',
    favoritesShelf : 'favoritesShelf',
    recentEpisodes : 'recentEpisodes',
    neuralNetShelf : 'neuralNetShelf',
    recommendationsShelf : 'recommendationsShelf',
    recentlyUnlockedShelf : 'recentlyUnlockedShelf',
    newEpisodesAvailableShelf : 'newEpisodesAvailableShelf',
    continueWatchingShelf : 'continueWatchingShelf',
    becauseYouWatchedShelf : 'becauseYouWatchedShelf',
    stageurl: 'https://stage-friendship.nbc.co/v2/graphql',
    watch: 'https://stage-api.nbc.com/v4.28.0/users/livewatchapr9/watches/',	
  };
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 600000);
  karate.configure('readTimeout', 600000);
  karate.configure('abortedStepsShouldPass', true);
  config.mockServerUrl = 'https://stage-friendship.nbc.co/v2/graphql';
  config.recentlywebtelemundo = 'https://stage-api.nbc.com/v4.27.0/bff/recentlyUnlocked/videos/web/telemundo';
  config.recentlyconnectedtelemundo = 'https://stage-api.nbc.com/v4.27.0/bff/recentlyUnlocked/videos/ConnectedTvDevice/telemundo';
  config.recentlybravo = 'https://stage-api.nbc.com/v4.27.0/bff/recentlyUnlocked/videos/ConnectedTvDevice/bravo';
  config.recentlyoxygen = 'https://stage-api.nbc.com/v4.27.0/bff/recentlyUnlocked/videos/ConnectedTvDevice/oxygen';
  config.recentlyuniverso = 'https://stage-api.nbc.com/v4.27.0/bff/recentlyUnlocked/videos/ConnectedTvDevice/nbc-universo';
  return config;
}