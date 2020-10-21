import React from 'react'
import { Link } from "react-router-dom";

const RecipesListItem = ({recipe}) => {
  return (
    <Link className="recipes-list-item" to={recipe.path}>
      <div className="image" style={{backgroundImage: `url(${recipe.image})`}}></div>
      <h2>{recipe.title}</h2>
    </Link>
  )
}

export default RecipesListItem