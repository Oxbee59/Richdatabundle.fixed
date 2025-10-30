#!/usr/bin/env bash
# render-build.sh

set -o errexit  # Exit on error

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Running database migrations..."
python manage.py migrate --noinput

echo "Collecting static files..."
python manage.py collectstatic --noinput
