import React from 'react'
import ReactDOM from 'react-dom'
import {
  BrowserRouter as Router,
  Switch,
  Route
} from "react-router-dom";
import RecipesList from "./components/recipes_list";
import Recipe from "./components/recipe";

const Recipes = () => {
  return (
    <Router>
      <div>
        <Switch>
          <Route path="/recipes/:id">
            <Recipe />
          </Route>
          <Route path="/">
            <RecipesList />
          </Route>
        </Switch>
      </div>
    </Router>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  const app = document.getElementById('app')
  if (app) ReactDOM.render(<Recipes />, app)
})