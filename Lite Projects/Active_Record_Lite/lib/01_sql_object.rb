require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject

  def self.columns
    if @columns
      @columns
    else
      execute2_data = DBConnection.execute2(<<-SQL)
        SELECT
          *
        FROM
          #{self.table_name}
      SQL
      @columns = execute2_data.first.map( &:to_sym )
    end
  end

  def self.finalize!
    self.columns.each do |column|
      # initialize( column )
      define_method( "#{column}" ) do
        self.attributes[column]
      end

      define_method( "#{column}=" ) do | value |
        self.attributes[column] = value
      end
    end
  end

  def self.table_name=(table_name)
    @table_name = table_name
  end

  def self.table_name
    @table_name ||= self.name.tableize
  end

  def self.all
    # ...
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    params.each do | attr, val | 
      attr = attr.to_sym
      if !self.class.columns.include?( attr )
        raise "unkown attribute '#{attr}'" 
        # why is this happening? Getting RuntimeError instead of Exception
        # therefore not passing specs
      else
        self.send( "#{attr}=", val )
      end
    end
  end

  def attributes
    @attributes ||= {}
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
