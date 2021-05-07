class Grocery

  def initialize()
    @current_week_price_list = { 
                                'Milk': '$3.97'
                                'Bread': '$2.17',
                                'Banana': '$0.99',
                                'Apple': '$0.89'
                              }
    
    @discount_price = { 'milk': '2 for $5.00', 'bread': '3 for $6.00' }
  end

  def process
    puts 'Please enter all the items purchased separated by a comma'
    items = gets.chomp
                .split(',')
                .map { |item| item.strip.downcase }
                .tally
    calculate_price items
  end

  def calculate_price items
    total_saving = 0.00
    total_bill = 0.00

    puts "\nItem\tQuantity\tPrice"
    puts '--------------------------------------'
    items.each do |item, count|
      debugger
      total, saving = cost_after_discount(item, count)
      puts "#{item}\t#{count}\t\t$#{total}"
      total_bill = total_bill + total
      total_saving = total_saving + saving
    end
  end

  def cost_after_discount(item, count)
    debugger
    total = count * @current_week_price_list[item.to_sym].gsub('$','').to_i
    saving = 0
    ac_price = @discount_price[item.downcase]
    sale_unit = sale_price = 0.0
    if ac_price.present?
      sale_unit, sale_price = ac_price.split(' for $').map(&:to_i)
      discounted_units = count/sale_unit
      without_discount = count%sale_unit
      if discounted_units == 0
        disc_total =  discounted_units * sale_price +  @current_week_price_list[item.downcase].gsub('$','').to_i * without_discount

        saving = total - disc_total
        total = disc_total
      end
    end
    return total, saving
  end

end
