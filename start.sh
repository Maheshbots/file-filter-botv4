if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Maheshbots/file-filter-botv4 hot.git /file-filter-botv4
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /file-filter-botv4
fi
cd /file-filter-botv4
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
