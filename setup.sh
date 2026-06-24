#chmod +x setup.sh
#setup.sh

sudo apt update
sudo apt install nginx python3-pip python3-venv -y
sudo systemctl start nginx
sudo systemctl enable nginx

DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR/serverApp"

python3 -m venv venv
source venv/bin/activate
pip install fastapi uvicorn python-multipart aiofiles

uvicorn main:app --host 0.0.0.0 --port 8000