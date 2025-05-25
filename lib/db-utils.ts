import mysql from 'mysql2/promise';
import { NextResponse } from 'next/server';

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'online_learning',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

export async function executeQuery<T>(query: string, params?: any[]): Promise<T[]> {
  const [rows] = await pool.execute(query, params);
  return rows as T[];
}

export async function executeInsert(query: string, params?: any[]): Promise<number> {
  const [result]: any = await pool.execute(query, params);
  return result.insertId;
}

export function handleApiError(error: any) {
  console.error(error);
  return NextResponse.json({ error: error.message || 'Internal Server Error' }, { status: 500 });
}

export function validateRequired(obj: any, requiredFields: string[]): string[] {
  return requiredFields.filter(field => !obj[field]);
}
