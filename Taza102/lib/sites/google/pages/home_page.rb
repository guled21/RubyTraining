require 'rubygems'
require 'taza/page'

module Google
  class HomePage < ::Taza::Page
    element(:search_field) { browser.text_field(:name, 'q') }
    element(:search_button_1) {browser.button(:name, 'btnG')}
    element(:search_button_2) {browser.button(:name, 'btnK')}
    element(:text) {browser.text}
    element(:search_result) {browser.div(:id, 'resultStats')}
    element(:first_search_result) {browser.div(:class, 'rc')}
    element(:first_search_result_header) {browser.h3(:class, 'r')}
  end
end

