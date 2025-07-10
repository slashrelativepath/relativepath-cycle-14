const express = require('express')
const app = express()
const port = 3001

app.get('/', (req, res) => {
  res.send('Hello from API!  Use /customer for customers and /identity for identity')
})

app.get('/customer', (req, res) => {
  res.send('Hello from Customer!')
})

app.get('/identity', (req, res) => {
  res.send('Hello from Identity!')
})


app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
