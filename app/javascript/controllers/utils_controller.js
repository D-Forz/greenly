import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="utils"
export default class extends Controller {
  resetForm() {
    this.element.reset()
  }

  goTop() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
  }
}
