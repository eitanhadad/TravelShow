class Datum < ActiveRecord::Base
    def self.save(upload)
        name = upload['data'].original_filename
        #contentType = upload['data'].content_type
        directory = "public/data"
        path = File.join(directory , name)
        File.open(path , "wb") { |f| f.write(upload['data'].read) }
end
end
