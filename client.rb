#! /usr/bin/env ruby
require_relative "openstack"

@identity = OpenStackConnection.identity
@compute  = OpenStackConnection.compute

puts @identity.list_domains.body['domains']
puts @identity.list_projects.body['projects']
puts @identity.list_users.body['users']
