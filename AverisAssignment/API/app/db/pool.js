import pkg  from 'pg';

import dotenv from 'dotenv';

const { Pool } = pkg;

dotenv.config();

const databaseConfig = { connectionString: process.env.DATABASE_URL };
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'AverisMohit',
    password: 'qweasd@123',
    port: 5432,
  });

export default pool;