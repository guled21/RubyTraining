require 'rubygems'

module Google
  class Google < ::Taza::Site

    def search_flow(params={})
        home_page.search_field.set params[:query]
        home_page.search_button_1.click
    end

    def search_results
      return home_page.search_result.text
    end

    def first_search_result_header
      return home_page.first_search_result_header.text
    end

    def first_search_result_div
      return home_page.first_search_result.text
    end

  end
end

