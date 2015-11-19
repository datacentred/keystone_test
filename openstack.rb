require 'fog'

auth_url = "https://compute.datacentred.io:5000/v3/auth/tokens"

OPENSTACK_ARGS = {
  :provider           => 'OpenStack',
  :openstack_auth_url => auth_url,
  :openstack_username => 'stronghold',
  :openstack_api_key  => ENV['OPENSTACK_PASSWORD'],
  :openstack_domain_id  => 'default'
}

module OpenStackConnection
  def self.identity
    @@identity ||= Fog::Identity.new(OPENSTACK_ARGS)
  end

  def self.compute
    @@compute ||= Fog::Compute.new(OPENSTACK_ARGS)
  end
  
  def self.volume
    @@volume ||= Fog::Volume.new(OPENSTACK_ARGS)
  end
  
  def self.network
    @@network ||= Fog::Network.new(OPENSTACK_ARGS)
  end
  
  def self.image
    @@image ||= Fog::Image.new(OPENSTACK_ARGS)
  end
  
  def self.metering
    @@metering ||= Fog::Metering.new(OPENSTACK_ARGS)
  end
end

