import { Controller } from "@hotwired/stimulus";
import Typed from "typed.js";

export default class extends Controller {
  static values = { count: Number }

  connect() {
    console.log("Current countValue:", this.countValue); // Should log 5

    if (this.countValue < 3) {
      console.log("Initializing Typed.js");
      new Typed(this.element, {
        strings: ["Add three ingredients to see what your fridge has to offer."],
        typeSpeed: 60,
      });
    }
  }
}
