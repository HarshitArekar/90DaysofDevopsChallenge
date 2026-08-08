#/bin/bash
<< usage

./backups.sh < path to your source > < path to your folder >

usage

display_usage () {

        echo "./backups.sh < path to your source > < path to your folder >"

}

if [[ $# -eq 0 ]];then 
        display_usage
fi

# CRATE Backups 
source_dir=$1
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_dir=$2

crate_backups () {

        zip -r "${backup_dir}/backups_${timestamp}.zip" "${source_dir}" >/dev/null


        if [[ $? -eq 0 ]] ; then
                echo "backups genrated successfully for ${timestamp}"
        fi
}

crate_backups
