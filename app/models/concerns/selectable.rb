module Selectable
  extend ActiveSupport::Concern

  module ClassMethods
    def select(method: 'all', label: 'nome')
      options = Array.new
      self.send(method).each do |element|
        options << [element.send(label), element.id]
      end
      return options
    end
  end
end