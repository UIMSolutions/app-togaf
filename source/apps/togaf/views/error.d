/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.togaf.views.error;

import apps.togaf;
@safe:

class DtogafErrorView : DView {
  mixin(ViewThis!("togafErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DtogafErrorView~":DtogafErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP togaf -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("togafErrorView"));
