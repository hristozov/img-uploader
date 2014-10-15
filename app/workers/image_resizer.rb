class ImageResizer
  @queue = :image_resizing_queue

  def self.perform(image_id)
    picture = Picture.find(image_id)
    out_file = image_id.to_s + "_scaled.jpg"
    command = "convert public/uploads/#{image_id}.jpg -resize 200x200\\> public/uploads/#{out_file}"
    puts command
    picture.lq = "/uploads/#{out_file}"
    picture.save

    # for some reason, the exec should be at the end
    exec(command)
  end
end