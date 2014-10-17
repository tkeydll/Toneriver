module ApplicationHelper

	def shohizei_gaku(hontai)
		(hontai * shohizei_rate(Time.now)).to_i
	end

	def shohizei_komi_gaku(hontai)
		(hontai * (1.0+shohizei_rate(Time.now))).to_i
	end

  	def shohizei_rate(date)
    	date ||= Time.now
    	if date >= Time.new(2015,10,1)
    		0.10
    	elsif date >= Time.new(2014,4,1)
    		0.08
    	else
    		0.05
    	end
  	end

  	def y(price)
  		number_to_currency(price, :unit => "\\", :precision => 0)
  	end 
end
