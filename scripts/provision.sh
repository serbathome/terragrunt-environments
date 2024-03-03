#!/usr/sh

# list of environments
environments=(dev test uat)

# iterate over the environments
for environment in "${environments[@]}"
do
  # create the environment
  echo "Creating environment: $environment"
done