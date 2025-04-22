#!/bin/bash
export PROJECT_ID=my-gcp-project
export REGION=us-central1
gcloud builds submit --tag gcr.io/$PROJECT_ID/backend
gcloud run deploy backend --image gcr.io/$PROJECT_ID/backend --platform managed --region $REGION --allow-unauthenticated
npm run build
firebase deploy
