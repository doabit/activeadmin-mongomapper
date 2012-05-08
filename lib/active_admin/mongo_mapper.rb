# require 'active_admin'

module ActiveAdmin
  module MongoMapper
  end

  class << self
    alias setup_without_mongo_mapper setup

    # Load monkey patches *after* the setup process
    def setup *args, &block
      setup_without_mongo_mapper *args, &block

      require 'active_admin/mongo_mapper/comments'
      require 'active_admin/mongo_mapper/document'
      require 'active_admin/mongo_mapper/resource'
      require 'active_admin/mongo_mapper/resource_controller'
      require 'active_admin/mongo_mapper/views'
    end
  end
end
