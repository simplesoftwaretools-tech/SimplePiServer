#chmod +x setup.sh
#setup.sh

sudo apt update
sudo apt install nginx python3-pip python3-venv -y
sudo systemctl start nginx
sudo systemctl enable nginx

DIR="$(cd "$(dirname "$0")" && pwd)"

python3 -m venv "$DIR/venv"
source "$DIR/venv/bin/activate"
pip install fastapi uvicorn python-multipart aiofiles

cd "$DIR/serverApp"

uvicorn main:app --host 0.0.0.0 --port 8000