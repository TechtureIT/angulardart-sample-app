part of talk_to_me;

class AppRouteInitializer implements RouteInitializer {
  init(Router router, ViewFactory view) {
    router.root
      ..addRoute(
          name: 'create',
          path: '/create',
          enter: view('views/create.html')
      )

      ..addRoute(
          name: 'welcome',
          path: '/list',
          enter: view('views/welcome.html'),
          defaultRoute: true,
          mount: (Route route) => route
            ..addRoute(
               name: 'show',
               path: "/:confId/show",
               enter: view('views/show.html'))
      );
  }
}