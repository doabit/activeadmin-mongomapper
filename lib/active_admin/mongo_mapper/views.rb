module ActiveAdmin
  module Views
    module Pages
      class Index
        protected
        def items_in_collection?
          collection.limit(1).exists?
        end
      end
    end
  end
end
