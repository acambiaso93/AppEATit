import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

// Connects to data-controller="typed"
export default class extends Controller {

  connect() {
    console.log("type connected")
    new Typed(this.element, {
      strings: ['<span style="color:green;">tofu<br>chestnuts<br>eggplant<br>miso paste<br>cucumber<br>mushrooms<br>carrot<br>rice</span><br><br><br><br>Add any ingredient you have<br>to see matching recipes'],
      typeSpeed: 80,
    })
  }
}
