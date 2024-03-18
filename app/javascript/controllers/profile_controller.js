import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [
    "fridge",
    "showProfile",
    "profileTab",
    "editProfile",
    "profile"
  ];

  revealProfile() {
    this.profileTabTarget.style.backgroundColor = "#DDEFD2";
    this.showProfileTargets.forEach((showProfile) => {
       showProfile.classList.remove("d-none");
    });
    this.fridgeTargets.forEach((fridge) => {
      fridge.classList.add("d-none");
    })
  }

  hideProfile() {
    this.showProfileTarget.classList.add("d-none");
    this.fridgeTarget.classList.remove("d-none");
    this.profileTabTarget.style.backgroundColor = "";
  }

  revealEditProfile() {
    this.editProfileTarget.classList.remove("d-none");
    this.profileTarget.classList.add("d-none");
  }

  hideEditProfile(){
    this.editProfileTarget.classList.add("d-none");
    this.profileTarget.classList.remove("d-none");
  }
}
