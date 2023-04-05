#!/bin/bash
backup_file() {
	echo "please enter a file to backup"
	read -r FILENAME

	if [[ -f "${FILENAME}" ]]; then
		local BACKUP_DIR="backups"
		if [[ ! -d "${BACKUP_DIR}" ]]; then
			mkdir ${BACKUP_DIR}
		fi

		# $$ gives the process is so if we run the backup will not be overridden
		BACKUP_FILE="./${BACKUP_DIR}/$(basename "${FILENAME}").$(date +%F).$$"
		echo "Backing up ${FILENAME} to ${BACKUP_FILE}"

		# the exit status is the return status of cp command
		cp "${FILENAME}" "${BACKUP_FILE}"
	else
		return 1
	fi

}

backup_file
FUNC_RESULT=$?
if [[ "${FUNC_RESULT}" -eq 0 ]]; then
	echo "Backup successful!"
	exit 0
else
	echo "Backup failed !"
	exit 1
fi
