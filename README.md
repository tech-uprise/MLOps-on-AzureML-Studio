# MLOps Pipeline on Azure Machine Learning Studio

This repository contains the code and pipeline configuration for a complete MLOps lifecycle workflow using Azure Machine Learning Studio. The pipeline automates the provisioning of resources, training of models, and deployment processes. Below is a detailed outline of each task within the pipeline.

# Machine Learning Lifecycle
![Canvas 1](https://github.com/tech-uprise/MLOps-on-AzureML-Studio/assets/35861532/b5114fe3-62d1-4ef8-bc10-088f7e17ef64)

# MLOps Workflow

![image](https://github.com/tech-uprise/MLOps-on-AzureML-Studio/assets/35861532/564c9fa0-b0fb-4bc0-8b41-a67d4cd690fc)


## Pipeline Overview

### Trigger
The pipeline is triggered on changes to the main branch, ensuring that updates to the codebase automatically initiate the MLOps workflow.

### Pool
The pipeline uses the latest Ubuntu image (`ubuntu-latest`), providing a consistent environment for running tasks.

### Stages and Jobs
- **Stage: Dev**
  - **Display Name:** Dev
  
  - **Job: Provision_Dev**
    - **Display Name:** Provision Dev resources
    
    #### Steps:
    1. **Set Python Version**
       - **Display Name:** Set Python Version to 3.9
       - **Description:** Ensures that the pipeline uses Python 3.9, providing a consistent environment for running scripts and tools that depend on this specific version.
       
    2. **Install Python Requirements**
       - **Display Name:** Install Python Requirements
       - **Description:** Executes a script to install all necessary Python packages, ensuring that all dependencies are met for the project's execution.
       
    3. **Install Dependencies**
       - **Display Name:** Install Dependencies
       - **Description:** Upgrades pip and installs additional dependencies listed in the requirements file, ensuring the environment is fully prepared for subsequent tasks.
       
    4. **Run Pytest with Coverage**
       - **Display Name:** Run Pytest with Coverage
       - **Description:** Runs unit tests with Pytest and measures code coverage, ensuring code quality and providing metrics on test coverage.
       
    5. **Publish Test Results**
       - **Display Name:** Publish Test Results
       - **Description:** Publishes the test results in JUnit format, allowing for visibility and tracking of test outcomes within Azure DevOps.
       
    6. **Add Azure ML Extension**
       - **Display Name:** Add Azure ML Extension
       - **Description:** Ensures the Azure ML CLI extension is installed, enabling Azure Machine Learning commands to be run in the pipeline.
       
    7. **Create Azure ML Workspace**
       - **Display Name:** Create Azure ML Workspace
       - **Description:** Creates an Azure ML Workspace if it doesn't already exist, serving as the central resource for managing machine learning assets.
       
    8. **Create Azure ML Compute Target**
       - **Display Name:** Create Azure ML Compute Target
       - **Description:** Provisions a compute target for running machine learning experiments, ensuring scalable and managed compute resources are available.
       
    9. **Upload Data to Datastore**
       - **Display Name:** Upload Data to Datastore
       - **Description:** Uploads the necessary data to Azure ML Datastore, making it accessible for training and other machine learning tasks.
       
    10. **Create Metadata and Models Directory**
        - **Display Name:** Create Metadata and Models Directory
        - **Description:** Creates directories for storing metadata and models, organizing outputs for easy access and management.
       
    11. **Create Azure ML Environment**
        - **Display Name:** Create Azure ML Environment
        - **Description:** Sets up the Azure ML environment with the specified dependencies, ensuring a consistent environment for running experiments.
       
    12. **Train the Model**
        - **Display Name:** Train the Model
        - **Description:** Submits a training job to Azure ML, leveraging the configured environment and compute resources to train the machine learning model.
       
    13. **Create Outputs Directory**
        - **Display Name:** Create Outputs Directory
        - **Description:** Creates the directory structure for storing model outputs, ensuring that results are properly organized and available for subsequent tasks.
       
    14. **Simulate Model File Creation**
        - **Display Name:** Simulate Model File Creation
        - **Description:** Simulates the creation of a model file for testing purposes, verifying that the pipeline can handle model artifacts correctly.
       
    15. **Assign AcrPush Role to Service Principal**
        - **Display Name:** Assign AcrPush Role to Service Principal
        - **Description:** Assigns the AcrPush role to the service principal, granting necessary permissions for pushing images to Azure Container Registry.
       
    16. **Registering Model**
        - **Display Name:** Registering Model
        - **Description:** Registers the trained model in the Azure ML model registry, enabling versioning and management of model artifacts.
       
    17. **Upload Model to Azure Blob Storage**
        - **Display Name:** Upload Model to Azure Blob Storage
        - **Description:** Uploads the model file to Azure Blob Storage for persistent storage and easy access during deployment.
       
    18. **Copy Files to Staging Directory**
        - **Display Name:** Copy Files to Staging Directory
        - **Description:** Copies necessary files to a staging directory, preparing artifacts for publishing and deployment.
       
    19. **Publish Pipeline Artifacts**
        - **Display Name:** Publish Pipeline Artifacts
        - **Description:** Publishes the pipeline artifacts, making them available for download and further use in the CI/CD process.
       
    20. **Deploy OH Resources to Azure**
        - **Display Name:** Deploy OH Resources to Azure
        - **Description:** Deploys resources to Azure using an ARM template, ensuring infrastructure is provisioned and configured as needed for the application.
       
## Conclusion

This pipeline demonstrates a comprehensive MLOps workflow, automating the entire lifecycle from resource provisioning to model training and deployment. It leverages Azure Machine Learning Studio and various Azure DevOps tasks to ensure a seamless and reproducible process.

By following this pipeline, you can efficiently manage and scale your machine learning projects, ensuring consistency and reliability in your deployments.

