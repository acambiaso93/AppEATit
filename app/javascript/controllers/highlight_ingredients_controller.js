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
  }

  removeIngredients() {
    const ingredientList = this.ingredientUserTarget;
    ingredientList.innerHTML = "";
    this.matchingCounterTarget.classList.add("hidden");
    this.showExplanatoryCaption();
  }

  showExplanatoryCaption() {
    this.explanatoryCaptionTarget.classList.remove("hidden");
  }
}






// import { Controller } from "@hotwired/stimulus";

// export default class extends Controller {
//   static targets = ["ingredient", "ingredientUser", "matchingCounter", "count"];

//   connect() {
//     const recipeCards = document.querySelectorAll(".recipe-card");

//     recipeCards.forEach((card) => {
//       card.addEventListener("mouseenter", this.highlightIngredients.bind(this));
//       card.addEventListener("mouseleave", this.removeHighlight.bind(this));
//     });
//   }

//   highlightIngredients(event) {
//     const recipeId = event.currentTarget.dataset.recipeId;
//     const recipeIngredients = event.currentTarget.dataset.recipeIngredients;
//     const recipeIngredientsArray = JSON.parse(recipeIngredients.replace(/'/g, '"'));
//     const userIngredients = this.ingredientUserTarget.dataset.userIngredients;
//     const userIngredientsArray = JSON.parse(userIngredients.replace(/'/g, '"'));

//     const ingredientList = this.element.querySelector('[data-highlight-ingredients-target="ingredientUser"]');
//     const ingredients = ingredientList.children;
//     let matchingCount = 0;

//     recipeIngredientsArray.forEach((recipeIngredient) => {
//       userIngredientsArray.forEach((userIngredient) => {
//         if (recipeIngredient === userIngredient) {
//           const ingredientElement = this.element.querySelector(`[data-ingredient-name="${recipeIngredient}"]`);
//           if (ingredientElement) {
//             ingredientElement.querySelector('span').classList.add("highlighted");
//             ingredientList.insertBefore(ingredientElement, ingredients[0]);
//             matchingCount++;
//           }
//         }
//       });
//     });

//     this.countTarget.textContent = matchingCount;
//     this.matchingCounterTarget.classList.remove("hidden");
//   }

//   removeHighlight() {
//     const highlightedIngredients = this.element.querySelectorAll("[data-ingredient-name] .highlighted");
//     highlightedIngredients.forEach((ingredient) => {
//       ingredient.classList.remove("highlighted");
//     });

//     this.matchingCounterTarget.classList.add("hidden");
//   }
// }

// _______________


// import { Controller } from "@hotwired/stimulus";

// export default class extends Controller {
//   static targets = ["ingredient", "ingredientUser", "count", "matchingCounter"];

//   connect() {
//     const recipeCards = document.querySelectorAll(".recipe-card");


//     recipeCards.forEach((card) => {
//       card.addEventListener("mouseenter", this.highlightIngredients.bind(this));
//       card.addEventListener("mouseleave", this.removeHighlight.bind(this));
//     });
//   }

//   highlightIngredients(event) {
//     const recipeId = event.currentTarget.dataset.recipeId;
//     const recipeIngredients = event.currentTarget.dataset.recipeIngredients;
//     const recipeIngredientsArray = JSON.parse(recipeIngredients.replace(/'/g, '"'));
//     const userIngredients = this.ingredientUserTarget.dataset.userIngredients
//     const userIngredientsArray = JSON.parse(userIngredients.replace(/'/g, '"'));

//     const ingredientList = this.element.querySelector('[data-highlight-ingredients-target="ingredientUser"]');
//     const ingredients = ingredientList.children;
//     let matchingCount = 0;

//     recipeIngredientsArray.forEach((recipeIngredient) => {
//       userIngredientsArray.forEach((userIngredient) => {
//         if (recipeIngredient === userIngredient) {
//           const ingredientElement = this.element.querySelector(`[data-ingredient-name="${recipeIngredient}"]`);
//           if (ingredientElement) {
//             ingredientElement.querySelector('span').classList.add("highlighted");
//             ingredientList.insertBefore(ingredientElement, ingredients[0]);
//             matchingCount++;
//           }
//         }
//       });
//     });

//     console.log("Matching Count:", matchingCount); // Log the matching count
//     // Make sure countTarget is correctly targeting the element where the count should be displayed
//     console.log("Count Target:", this.countTarget);

//     this.countTarget.textContent = matchingCount;
//     // this.matchingCounterTarget.classList.remove("hidden");
//   }

//     removeHighlight() {
//       const highlightedIngredients = this.element.querySelectorAll("[data-ingredient-name] .highlighted");
//       highlightedIngredients.forEach((ingredient) => {
//         ingredient.classList.remove("highlighted");
//       });

//       this.matchingCounterTarget.classList.add("hidden");

//     }


// }
