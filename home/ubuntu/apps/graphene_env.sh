#!/bin/bash
# ===============LICENSE_START=======================================================
# Graphene Apache-2.0
# ===================================================================================
# Copyright (C) 2017-2018 AT&T Intellectual Property & Tech Mahindra. All rights reserved.
# Modifications Copyright (C) 2019 Nordix Foundation.
# ===================================================================================
# This Graphene software file is distributed by AT&T and Tech Mahindra
# under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# This file is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ===============LICENSE_END=========================================================
#
# What this is: Environment file for Graphene installation.
# Prerequisites:
# - Ubuntu Xenial or Centos 7 server
# Usage:
# - Intended to be called from oneclick_deploy.sh and other scripts in this repo
#

# Version of the AIO toolset
export GRAPHENE_AIO_VERSION=3.0.1

# Images based upon Clio release assembly
# https://wiki.graphene.org/display/REL/Graphene_Clio_1911291230
# with latest images in specific cases
# Core components
export GRAPHENE_DELETE_SNAPSHOTS=false
export PORTAL_BE_IMAGE=cicd.ai4eu-dev.eu:7444/graphene/portal-be:6.0.3
#export PORTAL_FE_IMAGE=cicd.ai4eu-dev.eu:7444/graphene/portal-fe:6.0.3
export PORTAL_FE_IMAGE=lorenzocristoforieng/bd4nrg-portal-fe:6.0.4
export LICENSE_PROFILE_EDITOR_IMAGE=cicd.ai4eu-dev.eu:7444/acumos/license-profile-editor:0.0.13
export LICENSE_RTU_EDITOR_IMAGE=cicd.ai4eu-dev.eu:7444/acumos/license-rtu-editor:0.1.3
export COMMON_DATASERVICE_IMAGE=cicd.ai4eu-dev.eu:7444/ai4eu/common-dataservice:3.2.0-ai4eu-v1
export DESIGNSTUDIO_IMAGE=cicd.ai4eu-dev.eu:7444/ai4eu/ds-compositionengine:3.0.12-ai4eu
export FEDERATION_IMAGE=cicd.ai4eu-dev.eu:7444/acumos/federation-gateway:3.2.3
export KUBERNETES_CLIENT_IMAGE=cicd.ai4eu-dev.eu:7444/acumos/kubernetes-client:3.0.33
export ONBOARDING_IMAGE=cicd.ai4eu-dev.eu:7444/ai4eu/onboarding-app:4.6.23
export BLUEPRINT_ORCHESTRATOR_IMAGE=cicd.ai4eu-dev.eu:7444/generic-parallel-orchestrator/orchestrator_container:1.4
export PLAYGROUND_DEPLOYER_IMAGE=cicd.ai4eu-dev.eu:7444/graphene/playground-deployer:3.25


# Set by setup_prereqs.sh or oneclick_deploy.sh
export DEPLOYED_UNDER=k8s
export K8S_DIST=generic
export AIO_ROOT=/home/ubuntu/apps/eclipse-graphene/AIO
export GRAPHENE_DOMAIN=analyticstoolbox.bd4nrg.eu
export GRAPHENE_PORT=443
export GRAPHENE_ORIGIN=analyticstoolbox.bd4nrg.eu:443
export GRAPHENE_DOMAIN_IP=135.181.148.177
export GRAPHENE_HOST=ubuntu-32gb-hel1-3
export GRAPHENE_HOST_IP=135.181.148.177
export GRAPHENE_HOST_OS=ubuntu
export GRAPHENE_HOST_OS_VER=20.04
export DEPLOY_RESULT=
export FAIL_REASON=

# Deploy environment options
export GRAPHENE_DEPLOY_PREP=true
export GRAPHENE_DEPLOY_AS_POD=false
export GRAPHENE_NAMESPACE=graphene

# Deployment controls enabling use cases: don't deploy / skip on redeploy
export GRAPHENE_DEPLOY_MARIADB=false
export GRAPHENE_SETUP_DB=false
export GRAPHENE_DEPLOY_COUCHDB=true
export GRAPHENE_DEPLOY_JENKINS=true
export GRAPHENE_DEPLOY_DOCKER=true
export GRAPHENE_DEPLOY_DOCKER_DIND=true
export GRAPHENE_DEPLOY_NEXUS=false
export GRAPHENE_DEPLOY_NEXUS_REPOS=false
export GRAPHENE_DEPLOY_ELK=true
export GRAPHENE_DEPLOY_ELK_METRICBEAT=true
export GRAPHENE_DEPLOY_ELK_FILEBEAT=true
export GRAPHENE_DEPLOY_CORE=false
export GRAPHENE_DEPLOY_FEDERATION=false
export GRAPHENE_DEPLOY_MLWB=true
export GRAPHENE_DEPLOY_LUM=true
export GRAPHENE_DEPLOY_INGRESS=false
export GRAPHENE_DEPLOY_INGRESS_RULES=true

# External component options
export GRAPHENE_COUCHDB_DB_NAME=mlwbdb
export GRAPHENE_COUCHDB_DOMAIN=$GRAPHENE_NAMESPACE-couchdb-svc-couchdb
export GRAPHENE_COUCHDB_PORT=5984
export GRAPHENE_COUCHDB_USER=admin
export GRAPHENE_COUCHDB_PASSWORD=
export GRAPHENE_COUCHDB_UUID=
export GRAPHENE_COUCHDB_VERIFY_READY=true
export GRAPHENE_JENKINS_IMAGE=blsaws/graphene-jenkins
export GRAPHENE_JENKINS_API_SCHEME="http://"
export GRAPHENE_JENKINS_API_HOST="$GRAPHENE_NAMESPACE-jenkins"
export GRAPHENE_JENKINS_API_PORT=8080
export GRAPHENE_JENKINS_API_CONTEXT_PATH=jenkins
export GRAPHENE_JENKINS_API_URL="${GRAPHENE_JENKINS_API_SCHEME}${GRAPHENE_JENKINS_API_HOST}:$GRAPHENE_JENKINS_API_PORT/$GRAPHENE_JENKINS_API_CONTEXT_PATH/"
export GRAPHENE_JENKINS_USER=admin
export GRAPHENE_JENKINS_PASSWORD=
export GRAPHENE_JENKINS_SCAN_JOB=security-verification-scan
export GRAPHENE_JENKINS_SIMPLE_SOLUTION_DEPLOY_JOB=solution-deploy
export GRAPHENE_JENKINS_COMPOSITE_SOLUTION_DEPLOY_JOB=solution-deploy
export GRAPHENE_JENKINS_NIFI_DEPLOY_JOB=nifi-deploy
export GRAPHENE_DOCKER_API_HOST=docker-dind-service
export GRAPHENE_DOCKER_API_PORT=2375
export GRAPHENE_INGRESS_SERVICE=nginx
export GRAPHENE_INGRESS_HTTP_PORT=
export GRAPHENE_INGRESS_HTTPS_PORT=
export GRAPHENE_INGRESS_LOADBALANCER=false
export GRAPHENE_INGRESS_MAX_REQUEST_SIZE=1000m
export GRAPHENE_KONG_HTTPS_ONLY=true
export LUM_RELEASE_NAME=license-clio
export LUM_NAMESPACE=$GRAPHENE_NAMESPACE
export LUM_CHART_NAME=lum-helm
export GRAPHENE_HTTP_PROXY_HOST=
export GRAPHENE_HTTP_PROXY_PORT=
export GRAPHENE_HTTP_NON_PROXY_HOSTS="127.0.0.1|localhost|.svc.cluster.local"
export GRAPHENE_HTTP_PROXY_PROTOCOL=
export GRAPHENE_HTTP_PROXY=
export GRAPHENE_HTTPS_PROXY=

# Component options
export GRAPHENE_PRIVILEGED_ENABLE=false
export GRAPHENE_CAS_ENABLE=false
export GRAPHENE_VERIFY_ACCOUNT=false
export GRAPHENE_TOKEN_EXP_TIME=24
export GRAPHENE_ADMIN=admin
export GRAPHENE_EMAIL_SERVICE=none
export GRAPHENE_SPRING_MAIL_SERVICE_DOMAIN=
export GRAPHENE_SPRING_MAIL_SERVICE_PORT=25
export GRAPHENE_SPRING_MAIL_USERNAME=
export GRAPHENE_SPRING_MAIL_PASSWORD=
export GRAPHENE_SPRING_MAIL_STARTTLS=true
export GRAPHENE_SPRING_MAIL_AUTH=true
export GRAPHENE_SPRING_MAIL_PROTOCOL=
export GRAPHENE_MAILJET_API_KEY=
export GRAPHENE_MAILJET_SECRET_KEY=
export GRAPHENE_MAILJET_ADMIN_EMAIL=
export GRAPHENE_ADMIN_EMAIL=graphene@example.com
export GRAPHENE_CDS_PREVIOUS_VERSION=
export GRAPHENE_CDS_HOST=cds-service
export GRAPHENE_CDS_PORT=8000
export GRAPHENE_CDS_VERSION=3.2-rev1
export GRAPHENE_CDS_DB='graphene_cds'
export GRAPHENE_CDS_USER=ccds_client
export GRAPHENE_CDS_PASSWORD=0dde44ac-666c-4901-90ff-2f8604b7441f
export GRAPHENE_JWT_KEY=3b2060cf-d943-4d00-83dd-6897a72b4628
export GRAPHENE_DOCKER_PROXY_HOST=$GRAPHENE_DOMAIN
export GRAPHENE_DOCKER_PROXY_PORT=
export GRAPHENE_DOCKER_PROXY_USERNAME=
export GRAPHENE_DOCKER_PROXY_PASSWORD=
export GRAPHENE_FEDERATION_DOMAIN=$GRAPHENE_DOMAIN
export GRAPHENE_FEDERATION_LOCAL_PORT=31444
export GRAPHENE_FEDERATION_PORT=32121
export GRAPHENE_ONBOARDING_API_TIMEOUT=3600
export GRAPHENE_ONBOARDING_TOKENMODE=jwtToken
export GRAPHENE_ONBOARDING_CLIPUSHAPI="/onboarding-app/v2/models"
export GRAPHENE_ONBOARDING_CLIAUTHAPI="/onboarding-app/v2/auth"
export GRAPHENE_MICROSERVICE_GENERATION_ASYNC=false
export GRAPHENE_OPERATOR_ID=12345678-abcd-90ab-cdef-1234567890ab
export GRAPHENE_PORTAL_PUBLISH_SELF_REQUEST_ENABLED=true
export GRAPHENE_PORTAL_ENABLE_PUBLICATION=true
export GRAPHENE_PORTAL_DOCUMENT_MAX_SIZE=100000000
export GRAPHENE_PORTAL_IMAGE_MAX_SIZE=1000KB
export GRAPHENE_ENABLE_SECURITY_VERIFICATION=false
export GRAPHENE_SECURITY_VERIFICATION_PORT=9082
export GRAPHENE_SECURITY_VERIFICATION_EXTERNAL_SCAN=false
export GRAPHENE_SUCCESS_WAIT_TIME=600
export PYTHON_EXTRAINDEX=
export PYTHON_EXTRAINDEX_HOST=

# Core platform certificate options
export GRAPHENE_CREATE_CERTS=true
export GRAPHENE_CERT_PREFIX=graphene
export GRAPHENE_CERT_SUBJECT_NAME=$GRAPHENE_DOMAIN
export GRAPHENE_CA_CERT=${GRAPHENE_CERT_PREFIX}-ca.crt
export GRAPHENE_CERT=${GRAPHENE_CERT_PREFIX}.crt
export GRAPHENE_CERT_KEY=${GRAPHENE_CERT_PREFIX}.key
export GRAPHENE_CERT_KEY_PASSWORD=
export GRAPHENE_KEYSTORE_P12=${GRAPHENE_CERT_PREFIX}-keystore.p12
export GRAPHENE_KEYSTORE_JKS=${GRAPHENE_CERT_PREFIX}-keystore.jks
export GRAPHENE_KEYSTORE_PASSWORD=bbb64e7f-fe04-4d41-820d-407c114c963d
export GRAPHENE_TRUSTSTORE=${GRAPHENE_CERT_PREFIX}-truststore.jks
export GRAPHENE_TRUSTSTORE_PASSWORD=33265834-d2a6-4811-a0e8-94388fca788d
if [[ -e $AIO_ROOT/certs/cert_env.sh ]]; then source $AIO_ROOT/certs/cert_env.sh; fi

# Graphene model deployment options
export GRAPHENE_DEFAULT_SOLUTION_DOMAIN=$GRAPHENE_DOMAIN
export GRAPHENE_DEFAULT_SOLUTION_KUBE_CONFIG=
export GRAPHENE_DEFAULT_SOLUTION_NAMESPACE=$GRAPHENE_NAMESPACE
export GRAPHENE_DATA_BROKER_INTERNAL_PORT=8080
export GRAPHENE_DATA_BROKER_PORT=8556
export GRAPHENE_DEPLOYED_SOLUTION_PORT=3330
export GRAPHENE_DEPLOYED_VM_PASSWORD='12NewPA$$w0rd!'
export GRAPHENE_DEPLOYED_VM_USER=dockerUser
export GRAPHENE_PROBE_PORT=5006

# Kubernetes options
export GRAPHENE_OPENSHIFT_USER=admin
export GRAPHENE_OPENSHIFT_PASSWORD=any
export GRAPHENE_K8S_ADMIN_SCOPE=namespace
export GRAPHENE_HOST_USER=ubuntu
export GRAPHENE_SERVICE_LABEL_KEY=${GRAPHENE_NAMESPACE}Service
export GRAPHENE_DEPLOYMENT_CLIENT_SERVICE_LABEL=graphene
export GRAPHENE_KUBERNETES_CLIENT_SERVICE_LABEL=graphene
export GRAPHENE_AZURE_CLIENT_SERVICE_LABEL=graphene
export GRAPHENE_COMMON_DATA_SERVICE_LABEL=graphene
export GRAPHENE_ACUCOMPOSE_SERVICE_LABEL=graphene
export GRAPHENE_FEDERATION_SERVICE_LABEL=graphene
export GRAPHENE_MICROSERVICE_GENERATION_SERVICE_LABEL=graphene
export GRAPHENE_ONBOARDING_SERVICE_LABEL=graphene
export GRAPHENE_PORTAL_SERVICE_LABEL=graphene
export GRAPHENE_SECURITY_VERIFICATION_SERVICE_LABEL=graphene
export GRAPHENE_FILEBEAT_SERVICE_LABEL=graphene
export GRAPHENE_DOCKER_PROXY_SERVICE_LABEL=graphene
export GRAPHENE_LICENSE_MGT_SERVICE_LABEL=graphene
export GRAPHENE_PLAYGROUND_DEPLOYER_SERVICE_LABEL=graphene


# Persistent Volume options
export GRAPHENE_1GI_STORAGECLASSNAME=
export GRAPHENE_5GI_STORAGECLASSNAME=
export GRAPHENE_10GI_STORAGECLASSNAME=
export GRAPHENE_CREATE_PVS=true
export GRAPHENE_RECREATE_PVC=false
export GRAPHENE_PVC_TO_PV_BINDING=false
export GRAPHENE_LOGS_PV_NAME="logs"
export GRAPHENE_LOGS_PV_SIZE=1Gi
export GRAPHENE_LOGS_PV_CLASSNAME=$GRAPHENE_10GI_STORAGECLASSNAME
export GRAPHENE_JENKINS_PV_SIZE=10Gi
export GRAPHENE_JENKINS_PV_CLASSNAME=$GRAPHENE_10GI_STORAGECLASSNAME
export DOCKER_VOLUME_PVC_NAME="docker-volume"
export DOCKER_VOLUME_PV_NAME="docker-volume"
export DOCKER_VOLUME_PV_SIZE=10Gi
export DOCKER_VOLUME_PV_CLASSNAME=$GRAPHENE_10GI_STORAGECLASSNAME
export KONG_DB_PVC_NAME="kong-db"
export KONG_DB_PV_NAME="kong-db"
export KONG_DB_PV_SIZE=1Gi
export KONG_DB_PV_CLASSNAME=$GRAPHENE_1GI_STORAGECLASSNAME

# Supplemental component options
if [[ -e $AIO_ROOT/mariadb_env.sh ]]; then source $AIO_ROOT/mariadb_env.sh; fi
if [[ -e $AIO_ROOT/elk_env.sh ]]; then source $AIO_ROOT/elk_env.sh; fi
if [[ -e $AIO_ROOT/nexus_env.sh ]]; then source $AIO_ROOT/nexus_env.sh; fi
