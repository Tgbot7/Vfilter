if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Skcreator7/Filterbot.git /Filterbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Filterbot
fi
cd /Filterbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
