import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["newRecipeFront", "newRecipeForm", "container", "recipesGrid"]

  connect() {
    // console.log(this.newRecipeFromTarget, this.newRecipeFrontTarget, this.containerTarget, this.recipesGridTarget)
  }

  revealRecipeFront() {
    this.hideElements();
    this.newRecipeFrontTarget.classList.remove('d-none');
    this.containerTarget.classList.add('cookbook-container-close')
    this.recipesGridTarget.classList.add('recipe-grid');
  }

  revealRecipeForm() {
    this.hideElements();
    this.newRecipeFormTarget.classList.remove('d-none');
    this.containerTarget.classList.add('cookbook-container-open');
    this.recipesGridTarget.classList.add('recipe-grid-open');
  }

  hideElements() {
    this.newRecipeFrontTarget.classList.add('d-none');
    this.newRecipeFormTarget.classList.add('d-none');
    this.containerTarget.classList.remove('cookbook-container-open');
    this.recipesGridTarget.classList.remove('recipe-grid-open');
    this.containerTarget.classList.remove('cookbook-container-close');
    this.recipesGridTarget.classList.remove('recipe-grid');
  }

}
