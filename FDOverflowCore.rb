require 'fileutils'
class FDOverflowCore
    def FolderOverflower(folders, len)
        folders.times { |f|
            o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
            string = (0...len).map { o[rand(o.length)] }.join
            FileUtils.mkdir_p string
            puts "[#{f + 1}]Created #{string}"
        }
    end
    def FileOverflower(files, fileLen, textLen)
        files.times { |f|
            o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
            string = (0...fileLen).map { o[rand(o.length)] }.join
            out_file = File.new("#{string}.txt", "w")
            stringq = (0...textLen).map { o[rand(o.length)] }.join
            out_file.puts(stringq)
            out_file.close
            puts "[#{f + 1}]Created #{string}.txt"
        }
    end
end