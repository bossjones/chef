
require 'chef/mixin/descendants_tracker'

class Chef
  module Mixin
    module Provides
      # TODO no longer needed, remove or deprecate?
      include Chef::Mixin::DescendantsTracker

      def provides(short_name, opts={}, &block)
        raise NotImplementedError, :provides
      end

      # Check whether this resource provides the resource_name DSL for the given
      # node.  TODO remove this when we stop checking unregistered things.
      def provides?(node, resource)
        raise NotImplementedError, :provides?
      end
    end
  end
end
