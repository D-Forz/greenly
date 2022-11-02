import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="share"
export default class extends Controller {
  static targets = [ "result", "title", "description", "commentForm" ]

  async share(e) {
    e.preventDefault()

    const ShareData = {
      title: this.titleTarget.textContent,
      description: this.descriptionTarget.textContent,
      url: this.data.get('urlValue')
    };
    try {
      await navigator.share(ShareData)
      this.resultTarget.textContent = "Thanks for sharing!"
    } catch (err) {
      this.resultTarget.textContent = "Error sharing: " + err
    }
  }
}
