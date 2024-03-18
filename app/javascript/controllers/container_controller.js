import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [
    "fridge",
    "showProfile",
  ];

  connect() {
    // console.log(this.kitchenTarget, this.cookbookTarget, this.exploreTarget)
  }

  revealProfile() {
    // if (!this.profileTarget.classList.contains("d-none")) {
    //   return;
    // }
    // // this.exploreTarget.classList.add("d-none");
    // // this.cookbookTarget.classList.add("d-none");
    // // this.kitchenTarget.classList.add("d-none");
    // this.profileTarget.classList.remove("d-none");

    this.showProfileTargets.forEach((showProfile) => {
       showProfile.classList.remove("d-none");
    });
    this.fridgeTargets.forEach((fridge) => {
      fridge.classList.add("d-none");
    })
  }

  hideProfile() {
    this.showProfileTarget.classList.add("d-none");
    this.fridgeTarget.classList.remove("d-none")
  }
}
