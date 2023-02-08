# Purpose
 
 This is a GitHub Template that contains the base GitHub Workflows used by the application for build, deploy, and quality checks. As well as a sample Dockerfile that can be extended to create a dotnet image for deployment into Cloud Run.

## Using the Template Repository

1. Create a new repository from this template by either clicking "Use this template" from within this repository or by selecting this template repository as part of creating a new repository.

###  Configure GitHub Workflows

Once your repository has been created the below actions will need to be completed.

1. Create the required GitHub environments and secrets which will be used for authentication to GCP.

- Required Environments:
  - development
  - test
  - stage
  - stage-live (Used to manually approve deployment)
  - production
  - production-live (Used to manually approve deployment)

- Setting-->Environments-->New Environment

- Each Environment will contain the below secrets:
  - **WORKLOAD_IDENTITY_PROVIDER**: This is the workload identity provider endpoint configured within MCC. Example: projects/1111111111/locations/global/workloadIdentityPools/my-pool/providers/my-provider
  - **GCP_SERVICE_ACCOUNT**: This is the GCP service account that has been configured within the Workload Identity Provider with access to deploy Cloud Run and Push to GCR.

2. Edit the `.github/workflows/build-deploy-dev-test.yaml` with the required values for deploying to GCP.

In this workflow there are 5 jobs set to run consecutively when there is a push to the main branch of the repo. Each job uses a "resuable workflow" that is hosted in its own repo to avoid duplication and allow access by anyone in this organization. The steps are:

1. Building the image (build-image)
2. Pushing the image to GCR (push-gcr-image-d)
3. Deploying the app to Cloud Run as a beta revision (deploy-cloudrun)
4. Testing the app (cloudrun-gates)
5. Switching the app from beta to live in Cloud Run (promote-live)

Creating a Minor Release
Creating a Minor Release
Creating a BugFix
