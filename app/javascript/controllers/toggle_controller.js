import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toogle"
export default class extends Controller {
  static targets = ["recipes", "favorites"];

  connect() {
    this.recipesTarget.classList.add("d-none");
  }

  toggle() {
    const selectedValue = this.inputTarget.value;

    if (selectedValue === "favorites") {
      this.favoritesTarget.classList.remove("d-none");
      this.recipesTarget.classList.add("d-none");
    } else if (selectedValue === "my_recipes") {
      this.recipesTarget.classList.remove("d-none");
      this.favoritesTarget.classList.add("d-none");
    }
  }

  get inputTarget() {
    return this.element.querySelector("input[type='radio']:checked");
  }
}
