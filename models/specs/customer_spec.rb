require('minitest/autorun')
require('minitest/rg')
require_relative('../customer_class')


class CustomerSpec < MiniTest::Test

  def test_can_create_customer
    customer = Customer.new({'first_name' => 'Andrew','last_name' => 'Guppy','address_line_1' => '13 Carleton Avenue','address_line_2' => 'Glenrothes','postcode' => 'KY7 5AW','funds' => 100})
    actual = customer.class
    expected = Customer
    assert_equal(expected, actual)
  end

  def test_can_save_customer_to_database
    customer = Customer.new({'name' => 'Andrew Guppy','address_line_1' => '13 Carleton Avenue','address_line_2' => 'Glenrothes','postcode' => 'KY7 5AW','funds' => 100})
    customer.save()
    actual = customer.name
    expected = 'Andrew Guppy'
    assert_equal(expected, actual)
  end

  def test_can_get_customer_id_from_name
    customer1 = Customer.new({'name' => 'Sandy Guppy','address_line_1' => '13 Carleton Avenue','address_line_2' => 'Glenrothes','postcode' => 'KY7 5AW','funds' => 100})
    customer1.save()
    Customer.delete_duplicates()
    actual = Customer.get_customer_id('Sandy Guppy')
    expected = customer1.id
    assert_equal(expected, actual)
  end

  def test_can_get_customer_funds
    customer1 = Customer.new({'name' => 'Sandy Guppy','address_line_1' => '13 Carleton Avenue','address_line_2' => 'Glenrothes','postcode' => 'KY7 5AW','funds' => 100})
    customer1.save()
    Customer.delete_duplicates()
    actual = customer1.get_funds('Sandy Guppy')
    expected = 100
    assert_equal(expected, actual)
  end

  def test_can_delete_duplicate_customer
    customer1 = Customer.new({'name' => 'Sandy Guppy','address_line_1' => '13 Carleton Avenue','address_line_2' => 'Glenrothes','postcode' => 'KY7 5AW','funds' => 100})
    customer1.save()
    customer2 = Customer.new({'name' => 'Sandy Guppy','address_line_1' => '13 Carleton Avenue','address_line_2' => 'Glenrothes','postcode' => 'KY7 5AW','funds' => 100})
    customer2.save()
    Customer.delete_duplicates()
    actual = Customer.all_instances('Sandy Guppy').count
    expected = 1
    assert_equal(expected, actual)
  end

end