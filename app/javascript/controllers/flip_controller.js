import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["newRecipe", "page", "container"]

  connect() {
    console.log(this.newRecipeTarget, this.pageTarget, this.containerTarget)
  }

  revealRecipe() {
    this.hideElements();
    this.newRecipeTarget.classList.remove('d-none');
  }

  revealPage() {
    this.hideElements();
    this.pageTarget.classList.remove('d-none');
    this.containerTarget.classList.remove('cookbook-container');
    this.containerTarget.classList.add('cookbook-container-open');
  }

  hideElements() {
    this.newRecipeTarget.classList.add('d-none');
    this.pageTarget.classList.add('d-none');
  }

}
