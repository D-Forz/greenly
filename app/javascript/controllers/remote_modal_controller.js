import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

// Connects to data-controller="remote-modal"
export default class extends Controller {
  connect(){
    this.modal = new Modal(this.element);
    this.modal.show();
  }

  disconnect(){
    this.modal.hide();
  }
}
