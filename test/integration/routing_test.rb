require "#{File.dirname(__FILE__)}/../test_helper"

class RoutingTest < ActionController::IntegrationTest
  context "invoices" do
    should_route :get, "/invoice", :controller => 'invoice', :action => 'index'
    should_route :get, "/invoice/new", :controller => 'invoice', :action => 'new'
    should_route :get, "/invoice/autocreate", :controller => 'invoice', :action => 'autocreate'
    should_route :get, "/invoice/100", :controller => 'invoice', :action => 'show', :id => '100'
    should_route :get, "/invoice/100/edit", :controller => 'invoice', :action => 'edit', :id => '100'
    should_route :get, "/invoice/autofill", :controller => 'invoice', :action => 'autofill'
    should_route :get, "/invoice/100/outstanding", :controller => 'invoice', :action => 'outstanding', :id => '100'


    should_route :post, "/invoice", :controller => 'invoice', :action => 'create'

    should_route :put, "/invoice/100", :controller => 'invoice', :action => 'update', :id => '100'

    should_route :delete, "/invoice/100", :controller => 'invoice', :action => 'destroy', :id => '100'
  end

end
