import express from 'express';

import { getAllGraphData } from '../controllers/GraphDataController.js';
import verifyAuth from '../middlewares/verifyAuth.js';

const router = express.Router();

router.get('/GraphData',verifyAuth, getAllGraphData);

export default router;