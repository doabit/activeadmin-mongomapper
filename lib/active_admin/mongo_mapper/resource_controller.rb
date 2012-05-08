module ActiveAdmin
  class ResourceController
    def sort_order(chain)
      params[:order] ||= active_admin_config.sort_order
      if params[:order] && params[:order] =~ /^([\w\_\.]+)_(desc|asc)$/
        chain.send(:sort, $1.to_sym.send($2))
      else
        chain
      end
    end

    # Disable filters
    def search(chain)
      chain
    end
  end
end