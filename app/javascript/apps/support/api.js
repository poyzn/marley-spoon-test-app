import axios from 'axios'

const Api = {
  list: (limit = 20, offset = 0) => {
    return axios.get('/api/recipes', { params: { limit, offset} })
  },
  show: (id) => {
    return axios.get(`/api/recipes/${id}`)
  }
}

export default Api