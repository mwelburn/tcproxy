class HomeController < ApplicationController
  
	def index
		src = "";
		code = "";
		campaignId = "";
		params.each do |key, value|
			Rails.logger.warn "Param #{key}: #{value}"

			if key == "src"
				src = value
			elsif key == "code"
				code = value
			elsif key == "campaignId"
				campaignId = value
			end
		end
		url = "#{src}?code=#{code}&campaignId=#{campaignId}"
		Rails.logger.debug "URL: #{url}"

		#response = HTTParty.get(url)
		#Rails.logger.debug "Response: #{response}"
	end

end