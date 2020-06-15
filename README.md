# RSSReader

## Architecture

I have used a MVP-Coordinator architecture, because I think that this kind of architecture is one of the best solutions for separate responsibilities between layers, for testing and for clear coding, I think is an architecture where if a new workmate comes to the project without any knowledge of it, he could not has problems to understand the code and the app structure and functionality.

In this architecture View layer only knows what to show, nothing else, that comes from MVP, and also, with Coordinator we minimise the responsibilities of the Presenter because Coordinator is the responsible of the app's navigation.

I have also used a Singleton pattern to keep feeds accesible. It´s used to go back from detail view to feed list view, not to do the feed list request again and have ir if there is not internet connection.

## Observations

I have added a SplashScreen where I call to get the feed data.
