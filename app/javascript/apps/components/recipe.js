import React, { useState, useEffect } from 'react'
import Api from "../support/api";
import { useParams } from "react-router-dom";

const Recipe = () => {
  let { id } = useParams();
  const [recipe, setRecipe] = useState({})

  useEffect(() => {
    Api.show(id).then(res => setRecipe(res.data))
  }, [])

  return (
    <div>
      <h1>{recipe.title}</h1>
      <img src={recipe.image} alt={recipe.title} height="300" />
      { recipe.tags &&
        <ul>
          { recipe.tags.map(tag => <li>{tag}</li>) }
        </ul>
      }
      <h2>Description</h2>
      <p>{recipe.description}</p>
      { recipe.chef && <i>{recipe.chef}</i>}
    </div>
  )
}

export default Recipe