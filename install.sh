# 1. Enable required Google Cloud services
gcloud services enable \
  artifactregistry.googleapis.com \
  bigquery.googleapis.com \
  dataplex.googleapis.com \
  aiplatform.googleapis.com \
  run.googleapis.com \
  cloudbuild.googleapis.com \
  iam.googleapis.com

# 2. Install Apigee Agent Skills
#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/welylau/apigee-agent-skills.git"
SUBDIR="apigee-proxy-developer"
TARGET_DIR="${HOME}/.antigravity/skills/${SUBDIR}"
TEMP_DIR=$(mktemp -d)

trap 'rm -rf "${TEMP_DIR}"' EXIT

echo "Fetching ${SUBDIR} from ${REPO_URL}..."

# Sparse checkout to fetch only the specific skill folder
git clone --depth 1 --filter=blob:none --sparse "${REPO_URL}" "${TEMP_DIR}"
cd "${TEMP_DIR}"
git sparse-checkout set "${SUBDIR}"

# Ensure global Antigravity skills directory exists
mkdir -p "$(dirname "${TARGET_DIR}")"

# Clean existing installation if present
if [ -d "${TARGET_DIR}" ]; then
  echo "Replacing existing skill at ${TARGET_DIR}..."
  rm -rf "${TARGET_DIR}"
fi

# Move the skill into place
mv "${TEMP_DIR}/${SUBDIR}" "${TARGET_DIR}"

echo "Successfully installed '${SUBDIR}' to ${TARGET_DIR}"