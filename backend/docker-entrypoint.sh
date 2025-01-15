#!/bin/sh

echo "Waiting for MongoDB to start..."
while ! nc -z db 27017; do
  sleep 1
done

echo "MongoDB is up!"

echo "Migrating the database..."
npm run db:up

echo "Starting the server..."
npm start
