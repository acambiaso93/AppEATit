import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

// Connects to data-controller="typed"
export default class extends Controller {

  connect() {
    console.log("type connected")
    new Typed(this.element, {
      strings: ["Discover the best recipes<br> that your fridge has to offer."],
      typeSpeed: 60,
    })
  }
}
