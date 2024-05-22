if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/searchingshiv/KD-URL.git /KD-URL
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KD-URL
fi
cd /KD-URL
pip3 install -U -r requirements.txt
echo "Starting Lucifer...."
python3 bot.py
