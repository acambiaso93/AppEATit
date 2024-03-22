import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["newRecipeFront", "newRecipeForm", "container", "recipesGrid"]

  connect() {
    // console.log(this.newRecipeFromTarget, this.newRecipeFrontTarget, this.containerTarget, this.recipesGridTarget)
  }

  revealRecipeFront() {
    this.containerTarget.classList.remove('cookbook-container-open');
    this.containerTarget.classList.add('cookbook-container-close')
    this.newRecipeFrontTarget.classList.remove('d-none');
    this.newRecipeFormTarget.classList.add('d-none');
    this.recipesGridTarget.classList.add('recipe-grid');
    this.recipesGridTarget.classList.remove('recipe-grid-open');
  }

  revealRecipeForm() {
    this.containerTarget.classList.remove('cookbook-container-close');
    this.containerTarget.classList.add('cookbook-container-open');
    this.newRecipeFrontTarget.classList.add('d-none');
    this.newRecipeFormTarget.classList.remove('d-none');
    this.recipesGridTarget.classList.remove('recipe-grid');
    this.recipesGridTarget.classList.add('recipe-grid-open');
  }
}
