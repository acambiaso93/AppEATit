import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["ingredientUser", "matchingCounter", "count", "explanatoryCaption"];

  connect() {
    const recipeCards = document.querySelectorAll(".recipe-card");

    recipeCards.forEach((card) => {
      card.addEventListener("mouseenter", this.injectIngredients.bind(this));
      card.addEventListener("mouseleave", this.removeIngredients.bind(this));
    });

    this.showExplanatoryCaption();
  }

  injectIngredients(event) {
    const recipeId = event.currentTarget.dataset.recipeId;
    const recipeIngredients = event.currentTarget.dataset.recipeIngredients;
    const recipeIngredientsArray = JSON.parse(recipeIngredients.replace(/'/g, '"'));
    const userIngredients = this.ingredientUserTarget.dataset.userIngredients;
    const userIngredientsArray = JSON.parse(userIngredients.replace(/'/g, '"'));

    const ingredientList = this.ingredientUserTarget;
    ingredientList.innerHTML = "";

    let matchingCount = 0;

    recipeIngredientsArray.forEach((recipeIngredient) => {
      if (userIngredientsArray.includes(recipeIngredient)) {
        const ingredientElement = document.createElement("div");
        ingredientElement.textContent = recipeIngredient;
        ingredientElement.classList.add("matching");
        ingredientList.appendChild(ingredientElement);
        matchingCount++;
      }
    });

    recipeIngredientsArray.forEach((recipeIngredient) => {
      if (!userIngredientsArray.includes(recipeIngredient)) {
        const ingredientElement = document.createElement("div");
        ingredientElement.textContent = recipeIngredient;
        ingredientElement.classList.add("missing");
        ingredientList.appendChild(ingredientElement);
      }
    });

    this.countTarget.textContent = matchingCount;
    this.matchingCounterTarget.classList.remove("hidden");

    if (matchingCount === 0) {
      this.countTarget.innerHTML = "You have <span style='color:red;'>0</span><br> matching ingredients";
    } else if (matchingCount === 1) {
      this.countTarget.innerHTML = "You have <span style='color:green;'>1</span><br> matching ingredient";
    } else {
      this.countTarget.innerHTML = `You have <span style='color:green;'>${matchingCount}</span><br> matching ingredients`;
    }
  }

  removeIngredients() {
    const ingredientList = this.ingredientUserTarget;
    ingredientList.innerHTML = '<span data-target="explanatoryCaption">Hover on a recipe<br>to see which ingredients are <br><span style="color:green">matching,</span><br> and which ones are <br><span style="color:red">missing.</span></span>';
    this.matchingCounterTarget.classList.add("hidden");
  }

  showExplanatoryCaption() {
    if (this.hasExplanatoryCaptionTarget) {
      this.explanatoryCaptionTarget.classList.remove("hidden");
    }
  }
}
