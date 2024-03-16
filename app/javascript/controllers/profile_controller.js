import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["editProfile", "pages", "container"];

  connect() {
    console.log(this.editProfileTarget, this.pagesTarget);
  }

  revealProfile() {
    this.hideElements();
    this.editProfileTarget.classList.remove('d-none');
    this.containerTarget.classList.remove('profileContainerClosed');
    this.containerTarget.classList.add('profileContainerOpen');
  }

  revealPages() {
    this.hideElements();
    this.pagesTarget.classList.remove("d-none");
    this.containerTarget.classList.add("profileContainerClosed");
    this.containerTarget.classList.remove("profileContainerOpen");
  }

  hideElements() {
    this.editProfileTarget.classList.add("d-none");
    this.pagesTarget.classList.add("d-none");
  }
}
