module EstatesHelper

    def estate_thumbnail estate
       img = estate.photos.present? ? estate.photos.thumb.url : "placeholder.png"
       image_tag img, class: "estate-thumb"
    end
end
