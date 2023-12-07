import awsLambdaFastify from '@fastify/aws-lambda';
import { Context } from 'aws-lambda';

import { app } from './app.js';

export const handler = async (event: string, context: Context) => {
  const server = await app();
  const proxy = awsLambdaFastify(server)(event, context);
  return proxy;
};
