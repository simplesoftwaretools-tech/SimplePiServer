import subprocess

subprocess.run(["sudo","apt","update"])
subprocess.run(["sudo","apt","install","nginx","-y"])
subprocess.run(["sudo","systemctl","start","nginx"])
subprocess.run(["sudo","systemctl","enable","nginx"])