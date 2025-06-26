const express = require('express')
const app = express()
const port = 3000

app.get('/customer', (req, res) => {
  res.send('Hello from Customer!')
})

app.get('/widget', (req, res) => {
  res.send('Hello from Widget!')
})


app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
