#!/bin/bash

echo "Starting Jenkins pipeline test"

# Run unit tests
./gradlew test

# Check the exit code of the unit tests
if [ $? -ne 0 ]; then
  echo "Unit tests failed, exiting pipeline"
  exit 1
fi

# Build the application
./gradlew build

# Check the exit code of the build
if [ $? -ne 0 ]; then
  echo "Build failed, exiting pipeline"
  exit 1
fi

# Deploy the application to a staging environment
./gradlew deploy -Penv=staging

# Check the exit code of the deployment
if [ $? -ne 0 ]; then
  echo "Deployment to staging failed, exiting pipeline"
  exit 1
fi

echo "Jenkins pipeline test completed successfully"
