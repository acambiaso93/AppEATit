import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-veggie"
export default class extends Controller {
  filter() {
    const formData = new FormData(this.element);

    fetch(this.element.getAttribute("action"), {
      method: this.element.getAttribute("method"),
      body: formData,
    })
      .then(response => response.text())
      .then(html => {
        const recipesContainer = document.querySelector('.recipe-grid');
        recipesContainer.innerHTML = html;
      })
      .catch(error => console.error('Error:', error));
  }
}
