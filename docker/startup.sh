#! /bin/sh

# Wait for DB services
sh ./docker/wait-for-services.sh

# Prepare DB (Migrate - If not? Create db & Migrate)
sh ./docker/prepare-db.sh

# Pre-comple app assets
sh ./docker/asset-pre-compile.sh

bundle exec rails s -p 3000 -b '0.0.0.0'
# Start Application
# bundle exec puma -C config/puma.rb