import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["kitchen", "cookbook", "explore", "profile"]

  connect() {
    console.log(this.kitchenTarget, this.cookbookTarget, this.exploreTarget)
  }

  revealCookbook () {
    if (!this.cookbookTarget.classList.contains("d-none")) {
      return;
    }
    this.kitchenTarget.classList.add("d-none")
    this.exploreTarget.classList.add("d-none")
    this.profileTarget.classList.add("d-none")
    this.cookbookTarget.classList.remove("d-none")
  }

  revealExplore () {
    if (!this.exploreTarget.classList.contains("d-none")) {
      return;
    }
    this.kitchenTarget.classList.add("d-none")
    this.cookbookTarget.classList.add("d-none")
    this.profileTarget.classList.add("d-none")
    this.exploreTarget.classList.remove("d-none")
  }

  revealKitchen () {
    if (!this.kitchenTarget.classList.contains("d-none")) {
      return;
    }
    this.exploreTarget.classList.add("d-none")
    this.cookbookTarget.classList.add("d-none")
    this.profileTarget.classList.add("d-none")
    this.kitchenTarget.classList.remove("d-none")
  }

  revealProfile () {
    if (!this.profileTarget.classList.contains("d-none")) {
      return;
    }
    this.exploreTarget.classList.add("d-none")
    this.cookbookTarget.classList.add("d-none")
    this.kitchenTarget.classList.add("d-none")
    this.profileTarget.classList.remove("d-none")


  }

}
