#' Connect to the Red Bull DAP environment
#'
#' One line connection to the DAP database environment
#'
#' This function will call on environment variable credentials
#' to connect to the Red Bull internal DAP database.
#' @export
connect_to_dap <- function() {
  DBI::dbConnect(odbc::odbc(),
                 Driver = config::get("dap_driver"),
                 UID = config::get("dap_uid"),
                 PWD = config::get("dap_pwd"),
                 Servernode = config::get("dap_server"))
}
