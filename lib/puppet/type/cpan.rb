require 'puppet/parameter/boolean'
Puppet::Type.newtype(:cpan) do
  @doc = "Install cpan modules"
  ensurable

  newparam(:name) do
    desc "The name of the module."
  end
  newparam(:force, :boolean => false, :parent => Puppet::Parameter::Boolean) do
    desc "Whether to force a package install"
  end

end
