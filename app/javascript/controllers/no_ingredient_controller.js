import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

export default class extends Controller {

  connect() {
    console.log("no_ingredient connected")
    new Typed(this.element, {
      strings: ["Add three ingredients to see what your fridge has to offer."],
      typeSpeed: 60,
    })
  }
}
