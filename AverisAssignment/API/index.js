import express from 'express';
import 'babel-polyfill';
import cors from 'cors';
import env from './env.js';
import candidateRoute from './app/routes/candidateRoute.js';
import usersRoute from './app/routes/usersRoute.js';
import graphDataRoute from './app/routes/graphDataRoute.js';

const app = express();

app.use(cors());
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.use('/api/v1', candidateRoute);
app.use('/api/v1', usersRoute);
app.use('/api/v1', graphDataRoute);

app.listen(env.port).on('listening', () => {
    console.log(`🚀 are live on ${env.port}`);
  });
  
  
export default app;