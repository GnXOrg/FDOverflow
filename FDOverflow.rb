require './FDOverflowCore.rb'
def FolderOverflow()
    puts "How many folder do you want to create?"
    begin
        foldertobecreated = gets.chomp.to_i
        puts "Folder name length:"
        folderlen = gets.chomp.to_i
        puts "Begin Folder Overflow"
        fdOverflowCore = FDOverflowCore.new
        fdOverflowCore.FolderOverflower(foldertobecreated,folderlen)
        puts "Done, do you want to create more? (Y/N)"
        answ = YNAnsw()
        if answ == true then
            FolderOverflow()
        else
            Overflow()
        end
    rescue => exception
        puts "Failed to create folder, do you want to try to recreate? (Y/N)"
        answ = YNAnsw()
        if answ == true then
            FolderOverflow()
        else
            Overflow()
        end
    end
end
def FileOverflow()
    puts "How many file do you want to create?"
    begin
        filetobecreated = gets.chomp.to_i
        puts "File Name Length:"
        fileLen = gets.chomp.to_i
        puts "File Text Length:"
        textLen = gets.chomp.to_i
        puts "Begin File Overflow"
        fdOverflowCore = FDOverflowCore.new
        fdOverflowCore.FileOverflower(filetobecreated, fileLen, textLen)
        puts "Done, do you want to create more file? (Y/N)"
        answ = YNAnsw()
        if answ == true then
            FileOverflow()
        else
            Overflow()
        end
    rescue => exception
        puts "Failed to create file, do you want to try to recreate? (Y/N)"
        answ = YNAnsw()
        if answ == true then
            FileOverflow()
        else
            Overflow()
        end
    end
end
def YNAnsw()
    yorn = gets.chomp
    if yorn.downcase == "y" then
        return true
    elsif yorn.downcase == "n" then
        return false
    else
        puts "Invalid choice, try again!"
        YNAnsw()
    end
end
def Overflow()
    puts "Choose an option:"
    puts "1. FolderOverflow"
    puts "2. FileOverflow"
    puts "3. Exit"
    option = gets.chomp
    if (option == "1") then
        FolderOverflow()
    elsif (option == "2") then
        FileOverflow()
    elsif (option == "3") then
        puts "Goodbye, hope to see you again!"
        puts "FDOverflow created by GnXOrg (maintained by teppyboy)"
        return 0
    else
        puts "Invalid choice, try again!"
        Overflow()
    end
end
puts "Welcome to FDOverflow!"
Overflow()