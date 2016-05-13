module Puppet::Parser::Functions
  newfunction(:camelCaseFunction, :type => :rvalue, :doc => <<-'ENDHEREDOC' 
    Utility function to create a JWTConfiguration block for use within microservice config.
    Calls hiera directly to get the 'default' JWT configuration, which allows scope lookups
    after evaluation of the appropriate classes.
  ENDHEREDOC
  ) do |args|
  Puppet.debug("Got to camelCaseFunction function")

  # Need 1 argument
  raise Puppet::ParseError, ("camelCaseFunction(): Requires 1 argument") unless args.size == 1

  # Assign the args
  service = args[0]
  raise Puppet::ParseError, ("camelCaseFunction(): First argument must be a string") unless service.is_a?(String)
  Puppet.debug("Service = #{service}")

  return 'blah'

  end #newfunction
end #module

