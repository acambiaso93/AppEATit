import { Controller } from "@hotwired/stimulus";
import Typed from "typed.js";

export default class extends Controller {
    connect() {
      console.log("type connected");
      setTimeout(() => {
        new Typed(this.element, {
          strings: [
            '<span style="color:green;">tofu<br>chestnuts<br>eggplant<br>miso paste<br>cucumber<br>mushrooms<br>carrot<br>rice</span><br>',
          ],
          typeSpeed: 100, // Array of typeSpeed values for each part of the string
          backSpeed: 50,
          loop: true,
          loopDelay: 2000
        });
      }, 2000); // 2000 milliseconds = 2 seconds
    }
  }
