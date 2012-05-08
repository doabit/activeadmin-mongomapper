module ActiveAdmin
  class Resource
    def resource_table_name
      resource_class.collection_name
    end

    # Disable filters
    def add_default_sidebar_sections
    end
  end
end
