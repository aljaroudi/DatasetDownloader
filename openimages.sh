# Clone if does not exist
[ ! -d "./toolkit" ] && git clone https://github.com/EscVM/OIDv4_ToolKit.git --depth 1 --branch master --single-branch toolkit || "toolkit folder already cloned"

cd toolkit
# Using Python 3
alias python=python3
# Install requirements quietly
python -m pip install -qr requirements.txt
# Download validation, train and test data
python main.py downloader --type_csv validation -y --classes $1
python main.py downloader --type_csv train -y --classes $1
python main.py downloader --type_csv test -y --classes $1