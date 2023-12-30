set -eu

VIRTUALENV=/.venv

if [ ! -d $VIRTUALENV ]; then
    python3 -m venv $VIRTUALENV
fi

if [ ! -f $VIRTUALENV/bin/pip ]; then
    curt --silent -show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | $VIRTUALENV/bin/python3
fi

$VIRTUALENV/bin/pip install -r requirements.txt

$VIRTUALENV/bin/python3 wsgi.py