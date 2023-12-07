FROM amazon/aws-lambda-nodejs:18.2023.12.06.10 AS build
WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build

FROM amazon/aws-lambda-nodejs:18.2023.12.06.10 AS prod
EXPOSE 3000

COPY --from=build /app/dist ${LAMBDA_TASK_ROOT}
COPY versions ${LAMBDA_TASK_ROOT}/versions
COPY package.json ${LAMBDA_TASK_ROOT}/package.json
COPY package-lock.json ${LAMBDA_TASK_ROOT}/package-lock.json
RUN npm ci --production

CMD ["lambda.handler"]