import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["newRecipe", "page"]

  connect() {
    console.log(this.newRecipeTarget, this.pageTarget)
  }

  revealRecipe() {
    this.hideElements();
    this.newRecipeTarget.classList.remove('d-none');
  }

  revealPage() {
    this.hideElements();
    this.pageTarget.classList.remove('d-none');
  }

  hideElements() {
    this.newRecipeTarget.classList.add('d-none');
    this.pageTarget.classList.add('d-none');
  }

}
