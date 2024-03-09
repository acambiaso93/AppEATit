import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["ingredient", "ingredientUser"];

  connect() {
    const recipeCards = document.querySelectorAll(".recipe-card");


    recipeCards.forEach((card) => {
      card.addEventListener("mouseenter", this.highlightIngredients.bind(this));
      card.addEventListener("mouseleave", this.removeHighlight.bind(this));
    });
  }

    highlightIngredients(event) {
      const recipeId = event.currentTarget.dataset.recipeId;
      const recipeIngredients = event.currentTarget.dataset.recipeIngredients;
      const recipeIngredientsArray = JSON.parse(recipeIngredients.replace(/'/g, '"'));
      const userIngredients = this.ingredientUserTarget.dataset.userIngredients
      const userIngredientsArray = JSON.parse(userIngredients.replace(/'/g, '"'));

      console.log(JSON.parse(userIngredients.replace(/'/g, '"')));
      console.log(this.ingredientUserTarget.dataset.userIngredients)

      recipeIngredientsArray.forEach((recipeIngredient) => {
        userIngredientsArray.forEach((userIngredient) => {
          if (recipeIngredient === userIngredient) {
            const ingredientElement = this.element.querySelector(`[data-ingredient-name="${recipeIngredient}"]`);
            if (ingredientElement) {
              ingredientElement.classList.add("highlighted");
            }
          }
        });
      });
          
    }
    removeHighlight() {
      const highlightedIngredients = this.element.querySelectorAll("[data-ingredient-name].highlighted");
      highlightedIngredients.forEach((ingredient) => {
        ingredient.classList.remove("highlighted");
      });
    }
}





// import { Controller } from "@hotwired/stimulus"

// // Connects to data-controller="highlight-ingredients"
// export default class extends Controller {
//   static targets = ["ingredient"];

//   connect() {
//     const recipeCards = document.querySelectorAll(".recipe-card");
//     console.log("Hello")

//     recipeCards.forEach((card) => {
//       card.addEventListener("mouseenter", this.highlightIngredients.bind(this));
//       card.addEventListener("mouseleave", this.removeHighlight.bind(this));
//     });
//   }

//   highlightIngredients(event) {
//     const recipeIngredients = JSON.parse(event.currentTarget.dataset.recipeIngredients.replace(/'/g, '"'));
//     const userIngredients = this.ingredientTargets.map(target => target.textContent.trim());


//     userIngredients.forEach((ingredient) => {
//       if (recipeIngredients.includes(ingredient)) {
//         const ingredientElement = this.element.querySelector(`[data-highlight-ingredient-target="ingredient"][data-ingredient-name="${ingredient}"]`);
//         if (ingredientElement) {
//           ingredientElement.classList.add("highlighted");
//         }
//       }
//     });
//   }
//   removeHighlight() {
//     this.ingredientTargets.forEach((ingredient) => {
//       ingredient.classList.remove("highlighted");
//     });
//   }
// }

//   removeHighlight() {
//     const highlightedIngredients = document.querySelectorAll(".ingredient.highlighted");
//     highlightedIngredients.forEach((ingredient) => {
//       ingredient.classList.remove("highlighted");
//     });
//   }
// }


// highlightIngredients(event) {
//   const recipeId = event.currentTarget.dataset.recipeId;
//   const recipeIngredients = event.currentTarget.dataset.recipeIngredients;
//   console.log(JSON.parse(recipeIngredients.replace(/'/g, '"')));
//   const ingredients = document.querySelectorAll(`.ingredient[data-recipe-id="${recipeId}"]`);
// }
