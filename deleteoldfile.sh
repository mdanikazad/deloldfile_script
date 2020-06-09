#!/bin/bash

#create a file with old date

create(){
    touch -d "Thu, 1 March 2018 12:30:00" a

}

#Find and delete files older than 90 days
list(){
 find . -mtime +90 -exec ls -ll {} \;
 
}

#Remove old file
remove(){ 
 find . -mtime +90 -exec rm {} \;
}

#Rename old file
rename(){
 find . -mtime +90 -exec mv {} {}.old \;
    	
}

case $1 in
         "create")
             echo "Creaing new files"
             create
             ;;
         "list")
              echo "List all the files"
              list
             ;;
          "remove")
              echo "Remove file"
              remove
             ;;
          "rename")
              echo "Rename files"
              rename
             ;;
           *) echo Run one command from here { create | list | remove | rename };;
         
esac


#create
#list
#remove
#rename


