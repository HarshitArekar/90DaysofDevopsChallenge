#!/bin/bash

perform_rotation (){

        backups=($(ls -t "${backup_dir}/backups_"*.zip 2>/dev/null))


        if  [[ "${#backups[@]}" -gt 5 ]]; then
                echo " Performing rotation for 5 days "
        fi


        backups_to_remove=("${backups[@]:5}")

        echo "${backups_to_remove[@]}" 

        for backups in "${backups_to_remove[@]}"
        do
                rm -f ${backups}
        done
}



perform_rotation
