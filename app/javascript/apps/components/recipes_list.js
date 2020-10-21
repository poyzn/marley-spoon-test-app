import React, { useState, useEffect } from 'react'
import RecipesListItem from "./recipes_list_item";
import Api from "../support/api";
import { v4 as uuidv4 } from 'uuid'

const RecipesList = () => {
  const [recipes, setRecipes] = useState([])

  useEffect(() => {
    Api.list().then(res => setRecipes(res.data))
  }, [])

  return (
    <div>
      <h1>Recipes</h1>
      <div className="recipes-list">
        { recipes && recipes.map(recipe => <RecipesListItem key={uuidv4()} recipe={recipe} />) }
      </div>
    </div>
  )
}

export default RecipesList