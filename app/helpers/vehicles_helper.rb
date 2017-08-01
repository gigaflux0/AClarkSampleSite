module VehiclesHelper

	def small_photo(car)
	  if !car.photos.where(scale: "small").blank?
	  	return car.photos.where(scale: "small").first.path
	  end
	  return "/images/nopic.png"
	end
end