#!/bin/bash

echo -e "Starting Knowledge Repo Server..."

knowledge_repo --repo $DEFAULT_REPO_PATH runserver
