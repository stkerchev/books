
# empty class
class BookInStock
end

# class with constructor
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end
end

# class with constructor and accessors
class BookInStock
  attr_reader :isbn, :price # define getters
  attr_writer :isbn, :price # define setters
  # attr_accessor :isbn, :price # define both getters and setters
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end
end

# class with constructor, accessors and methods
class BookInStock
  attr_reader :isbn, :price # define getters
  attr_writer :isbn, :price # define setters

  # attr_accessor :isbn, :price # define both getters and setters
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

# class with constructor, accessors, methods and validation
class BookInStock
  attr_reader :isbn, :price # define getters
  attr_writer :isbn, :price # define setters

  # attr_accessor :isbn, :price # define both getters and setters
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

  def price_in_cents
    Integer(price * 100 + 0.5)
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end
