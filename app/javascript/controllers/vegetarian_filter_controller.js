import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="vegetarian-filter"
export default class extends Controller {
  connect() {
    this.element.addEventListener('change', () => {
      this.element.form.submit();
    });
  }
}





