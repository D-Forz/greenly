// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import RemoteModalController from "./remote_modal_controller"
application.register("remote-modal", RemoteModalController)

import ResetFormController from "./utils_controller"
application.register("utils", ResetFormController)

import ShareController from "./share_controller"
application.register("share", ShareController)

import SweetalertController from "./sweetalert_controller"
application.register("sweetalert", SweetalertController)
