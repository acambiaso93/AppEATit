import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toogle"
export default class extends Controller {
  static targets = ["recipes", "favorites"];

  connect() {
    console.log(this.recipesTarget, this.favoritesTarget);
  }

  toggle() {
    const isChecked = this.inputTarget.checked;

    if (isChecked) {
      this.favoritesTarget.classList.add("d-none"); // Issue might be here
      this.recipesTarget.classList.remove("d-none");
    } else {
      this.recipesTarget.classList.add("d-none");
      this.favoritesTarget.classList.remove("d-none"); // Issue might be here
    }
  }

  get inputTarget() {
    return this.element.querySelector("input[type='checkbox']");
  }
}
