#!/bin/bash
chef-client -z -o mongodb-aws -c solo.rb -l info
