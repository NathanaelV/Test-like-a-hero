class User < ApplicationRecord
  attr_accessor :nickname, :kind, :level
  
  enum kind: [ :knight, :wizard ] # Escolhe um dos tipos
  # Cria uma validação para o level. 
  # Deve ser um numeral e deve ser maior que ZERO e menor ou igual a NOVENTA E NOVE
  validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 99}

  def title
    "#{self.kind} #{self.nickname} ##{self.level}"
  end
end

