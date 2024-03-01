import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-price"
export default class extends Controller {
  static targets = ["text", "start_date", "end_date"]
  static values = {
    cost: Number
  }

  display() {
    if ((Date.parse(this.end_dateTarget.value) - Date.parse(this.start_dateTarget.value)) >= 0) {
      const days = (Date.parse(this.end_dateTarget.value) - Date.parse(this.start_dateTarget.value))/ (86400 * 1000);
      this.textTarget.innerText = `${(days * this.costValue)+this.costValue} €`
    } else {
      this.textTarget.innerText = `0 €`
    }
  }
}
