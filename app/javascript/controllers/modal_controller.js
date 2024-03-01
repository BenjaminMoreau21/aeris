import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["modaal", "overlay"]
  show(event) {
    this.modaalTarget.classList.remove("hidden")
    this.overlayTarget.classList.remove("hidden")
  }
}
