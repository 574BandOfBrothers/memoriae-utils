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
mongo memoriae      --eval 'db.createCollection("User");'
mongo memoriae      --eval 'db.createCollection("Story");'
mongo memoriae      --eval 'db.createCollection("Annotation");'

mongo memoriae-dev  --eval 'db.createCollection("User");'
mongo memoriae-dev  --eval 'db.createCollection("Story");'
mongo memoriae-dev  --eval 'db.createCollection("Annotation");'

mongo memoriae-test --eval 'db.createCollection("User");'
mongo memoriae-test --eval 'db.createCollection("Story");'
mongo memoriae-test --eval 'db.createCollection("Annotation");'

# Creating users
# No users should be added for production database by now.
mongo memoriae-dev  --eval 'db.createUser({user:"memoriae-dev",pwd:"123456", roles:[{role:"readWrite",db:"memoriae-dev"}]});'
mongo memoriae-test --eval 'db.createUser({user:"memoriae-test",pwd:"123456", roles:[{role:"readWrite",db:"memoriae-test"}]});'

