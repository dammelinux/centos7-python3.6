# Build By Kai Vo
# Centos 7 
# Python 3.6
docker build -t testing .
docker run -it -rm -p 212:22 --name python testing
# ssh port 212 - check python
python -V
# create file test pythong and check
python hello.py