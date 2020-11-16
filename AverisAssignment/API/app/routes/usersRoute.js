import express from 'express';

import {  signInUser } from '../controllers/usersController.js';

const router = express.Router();

router.post('/auth/signin', signInUser);

export default router;