#! /usr/bin/env ruby
require_relative "openstack"

@identity = OpenStackConnection.identity
puts @identity.list_domains.body['domains']


