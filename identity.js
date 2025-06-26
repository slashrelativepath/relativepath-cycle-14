const express = require('express')
const app = express()
const port = 3001

app.get('/', (req, res) => {
  res.send('Hello from Identity Service!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
