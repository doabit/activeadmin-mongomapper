module ActiveAdmin
  module MongoMapper
    module Document
      extend ActiveSupport::Concern

      module ClassMethods
        def content_columns
          @content_columns ||= keys.map(&:second).select {|f| f.name !~ /(^_|^(created|updated)_at)/}
        end

        def columns
          @columns ||= keys.map(&:second)
        end
      end
    end
  end
end

MongoMapper::Document.plugin ActiveAdmin::MongoMapper::Document
