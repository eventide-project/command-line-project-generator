#!/usr/bin/env bash

set -ue

pushd ./test/interactive
pwd

rm -rf gems
rm -rf .bundle
rm -f Gemfile.lock

POSTURE=development ./install-gems.sh

rm -rfv *-component
bundle exec evt component something_component

pushd ./something-component
POSTURE=development ./install-gems.sh

rm -fv something_component*.gem
gem build something_component

if [ ! -f something_component-0.0.0.gem ]; then
  echo "Gem file not built (something_component-0.0.0.gem)"
  exit
fi

cp settings/message_store_postgres.json.example settings/message_store_postgres.json

ruby ../test.rb

echo
