if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone matrixbotz0/PETER-PARKER-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FiltersBot
fi
cd /FiltersBot
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
