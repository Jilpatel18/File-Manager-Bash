#!/bin/bash

while true; do
    echo ""
    echo "====================================="
    echo "         FILE MANAGER MENU           "
    echo "====================================="
    echo "a) Create a New File or Folder"
    echo "b) Read Contents of a File"
    echo "c) Edit a File"
    echo "d) Delete a File or Folder"
    echo "e) Exit"
    echo "====================================="
    read -p "Please choose an option (a/b/c/d/e): " choice

    case $choice in
        a)
            read -p "Do you want to create a 'file' or a 'folder'? " f_type
            read -p "Enter the path of the $f_type: " target_path
            
            if [ "$f_type" == "file" ]; then
                touch "$target_path"
                echo "[SUCCESS] File created at: $target_path"
            elif [ "$f_type" == "folder" ]; then
                mkdir -p "$target_path"
                echo "[SUCCESS] Folder created at: $target_path"
            else
                echo "[ERROR] Invalid choice. Please enter 'file' or 'folder'."
            fi
            ;;
            
        b)
            read -p "Enter the file path: " file_path
            
            if [ -f "$file_path" ]; then
                chmod 444 "$file_path"
                echo "[INFO] Permissions changed to read-only for all users."
                echo "--- Contents of $file_path ---"
                cat "$file_path"
                echo "------------------------------"
            else
                echo "[ERROR] File does not exist or is a directory."
            fi
            ;;
            
        c)
            read -p "Enter the file path to edit: " file_path
            
            if [ ! -f "$file_path" ]; then
                touch "$file_path"
                echo "[INFO] File did not exist. Created a new file."
            fi
            
            chmod 600 "$file_path"
            echo "[INFO] Permissions updated: Write access for user, no access for others."
            
            echo "How do you want to edit the file?"
            echo "1) Append content"
            echo "2) Rewrite (overwrite) content"
            echo "3) Open a text editor (nano)"
            read -p "Choose an option (1/2/3): " edit_choice
            
            case $edit_choice in
                1)
                    read -p "Enter the text to append: " input_text
                    echo "$input_text" >> "$file_path"
                    echo "[SUCCESS] Content appended to the file."
                    ;;
                2)
                    read -p "Enter the text to rewrite the file with: " input_text
                    echo "$input_text" > "$file_path"
                    echo "[SUCCESS] File content overwritten."
                    ;;
                3)
                    nano "$file_path"
                    echo "[SUCCESS] Finished editing with text editor."
                    ;;
                *)
                    echo "[ERROR] Invalid option selected."
                    ;;
            esac
            ;;
            
        d)
            read -p "Enter the file or folder path to delete: " del_path
            
            if [ -e "$del_path" ]; then
                sudo rm -r "$del_path"
                echo "[SUCCESS] Successfully deleted: $del_path"
            else
                echo "[ERROR] The specified path does not exist."
            fi
            ;;
            
        e)
            echo "Exiting the script gracefully. Goodbye!"
            exit 0
            ;;
            
        *)
            echo "[ERROR] Invalid menu choice. Please try again."
            ;;
    esac
done