require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?].nav-link", root_path, count: 2
    assert_select "a[href=?].nav-link", help_path
    assert_select "a[href=?].nav-link", about_path
    assert_select "a[href=?].nav-link", contact_path
    get contact_path
    assert_select "title", full_title("Contact")

    end    
end
