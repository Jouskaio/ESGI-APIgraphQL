import express from 'express'
import employer from "./routes/exemple.mjs";

const app = express()

//app.use('/api', employer);

app.listen(2000, () => {
  console.log("Server listening on http://localhost:2000")  ;
})