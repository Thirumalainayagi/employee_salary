class Edetail < ActiveRecord::Base
   validates :ename, :age, :gender, :basic_pay, :pf_deduction, presence: true
   validates :age, numericality: { only_integer: true, :greater_than => 20 }
   validates :basic_pay, numericality: { only_integer: true, :greater_than => 100 }
   validates :pf_deduction, numericality: { only_integer: true}

  def salary_calculation
    hra = (basic_pay < 5000 ? 2500 : (basic_pay*10)/100)
    update(:hra => hra, :net_pay => basic_pay + hra - pf_deduction)
  end
end









