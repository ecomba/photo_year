module PhotoYear

  MONTHS = [
    :January, :February, :March, :April, :May, :June, :July, :August,
    :September, :October, :November, :December
  ]

  def self.init(year)
    dirname = "./#{year}"
    if !Dir.exists?(dirname)
      Dir.mkdir(dirname) 

      MONTHS.each_with_index do |month, index|
        Dir.mkdir("#{dirname}/#{(index + 1).to_s.rjust(3, '0')} - #{month}")
      end
    else
      puts "You've already created the year #{year} structure."
    end
  end
end
