#!/bin/bash
mkdir -p submission_reminder_app/{app,modules,assets,config}

cd submission_reminder_app

cat /mnt/c/users/HP/Downloads/reminder.sh > app/reminder.sh
cat /mnt/c/users/HP/Downloads/functions.sh > modules/functions.sh
cat /mnt/c/users/HP/Downloads/config.env > config/config.env
cat ../submissions.txt > assets/submissions.txt

echo -e "Jimmy, Shell Navigtion, submitted\nFabrice, Shell Navigation, not submitted\nGogo, Shell Nvigation, not submitted\nZenon, Shell Navigation,not submitted\nRaissa, Shell Navigation, submitted" >> assets/submissions.txt

chmod +x modules/functions.sh
chmod +x app/reminder.sh
chmod +x config/config.env
echo -e "#!/bin/bash\n./app/reminder.sh" > startup.sh && chmod +x startup.sh
 

