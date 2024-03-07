import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["editProfile", "pages"]

  connect() {
    console.log(this.editProfileTarget, this.pagesTarget)
  }

  revealProfile() {
    this.hideElements();
    this.editProfileTarget.classList.remove('d-none');
  }

  revealPages() {
    this.hideElements();
    this.pagesTarget.classList.remove('d-none');
  }

  hideElements() {
    this.editProfileTarget.classList.add('d-none');
    this.pagesTarget.classList.add('d-none');
  }

}
