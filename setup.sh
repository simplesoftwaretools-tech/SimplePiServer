#chmod +x setup.sh
#setup.sh

sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo apt install python3-pip python3-venv -y
cd myapp
python3 -m venv venv
source venv/bin/activate
pip install fastapi uvicorn python-multipart aiofiles
uvicorn main.py:app --host 0.0.0.0 --port 8000