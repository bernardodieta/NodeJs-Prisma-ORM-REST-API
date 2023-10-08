import express from "express";
import sheltersRoutes from "./routes/shelters.routes.js";
import usersRoutes from "./routes/users.routes.js";
import dogsRoutes from "./routes/dogs.routes.js";
import categoryRoutes from "./routes/category.routes.js";


const app = express()

app.use(express.json());
app.use('/api', sheltersRoutes)
app.use('/api', usersRoutes)
app.use('/api', dogsRoutes)
app.use('/api', categoryRoutes)


app.listen(3000)
console.log('server on por', 3000)