import express from 'express'

const app = express()

//app.use('/api', routerLogin);

app.listen(2000, () => {
  console.log("Server listening on http://localhost:2000")  ;
})