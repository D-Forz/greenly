import { Controller } from "@hotwired/stimulus"
import swal from "sweetalert";
// Connects to data-controller="sweetalert"
export default class extends Controller {

  confirm() {
    swal({
      title: "Are you sure?",
      text: "You won't be able to revert this!",
      icon: "warning",
      buttons: true,
      dangerMode: true,

    }).then ((willDelete) => {
      if (willDelete) {
        const link = document.querySelector('#delete-link');
        link.click();
      }
    });
  }
}
