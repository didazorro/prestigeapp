#!/bin/bash
set -e

flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs

echo "Build Data Done !!!"