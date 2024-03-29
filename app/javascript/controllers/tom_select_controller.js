import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select";

export default class extends Controller {
  connect() {
    console.log("connected?")

    new TomSelect(this.element, {
      maxOptions: 2,
      openOnFocus: false,
    });
  }
}
