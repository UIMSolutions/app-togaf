/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.togaf;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.servers;

public import langs.javascript;
public import web.controls;

public {
  import apps.togaf.controllers;
  import apps.togaf.helpers;
  import apps.togaf.routers;
  import apps.togaf.tests;
  import apps.togaf.views;
}

static this() {
  auto myApp = App("togafApp", "apps/togaf");

  with (myApp) {
    importTranslations;
    addControllers([
      "togaf.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("togaf.index")),
      Route("/", HTTPMethod.GET, controller("togaf.index"))
    );
  }
  AppRegistry.register("apps.togaf", myApp);
}
