import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["checkbox", "label"]

  toggle() {
    this.labelTarget.classList.toggle("line-through", this.checkboxTarget.checked)
  }
}