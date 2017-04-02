PROJECT_DIR="expressworkoutwebsite"
SETTINGS_SUBDIR="expressworkoutwebsite"


. ./envdjango/bin/activate

# Set db
python manage.py migrate
python manage.py createsuperuser

# cp $SETTINGS_SUBDIR/test_settings.py $SETTINGS_SUBDIR/local_settings.py

echo "Do you wish to set test data into the DB? Select a number"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) python manage.py loaddata fixtures/test.json; break;;
        No ) exit;;
    esac
done

