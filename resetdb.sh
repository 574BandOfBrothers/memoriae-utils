#!/bin/bash

# Dropping Users
mongo memoriae      --eval 'db.dropUser("memoriae")'
mongo memoriae-dev  --eval 'db.dropUser("memoriae-dev")'
mongo memoriae-test --eval 'db.dropUser("memoriae-test")'

# Dropping Databases
mongo memoriae      --eval 'db.dropDatabase()'
mongo memoriae-dev  --eval 'db.dropDatabase()'
mongo memoriae-test --eval 'db.dropDatabase()'

# Creating Collections
mongo memoriae      --eval 'db.createCollection("users");'
mongo memoriae      --eval 'db.createCollection("stories");'
mongo memoriae      --eval 'db.createCollection("annotations");'

mongo memoriae-dev  --eval 'db.createCollection("users");'
mongo memoriae-dev  --eval 'db.createCollection("stories");'
mongo memoriae-dev  --eval 'db.createCollection("annotations");'

mongo memoriae-test --eval 'db.createCollection("users");'
mongo memoriae-test --eval 'db.createCollection("stories");'
mongo memoriae-test --eval 'db.createCollection("annotations");'

# Creating users
# No users should be added for production database by now.
mongo memoriae-dev  --eval 'db.createUser({user:"memoriae-dev",pwd:"123456", roles:[{role:"readWrite",db:"memoriae-dev"}]});'
mongo memoriae-test --eval 'db.createUser({user:"memoriae-test",pwd:"123456", roles:[{role:"readWrite",db:"memoriae-test"}]});'

