import express from 'express';

import { getAllCandidates } from '../controllers/CandidateController.js';
import verifyAuth from '../middlewares/verifyAuth.js';

const router = express.Router();

router.get('/Candidates',verifyAuth, getAllCandidates);

export default router;