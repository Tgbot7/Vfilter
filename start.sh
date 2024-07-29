if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tgbot7/Vfilter.git /Vfilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Vfilter
fi
cd /Vfilter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
