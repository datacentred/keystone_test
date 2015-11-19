#! /usr/bin/env ruby
require_relative "openstack"

identity = OpenStackConnection.identity
puts identity.auth_domains