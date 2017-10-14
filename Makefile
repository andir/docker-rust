
all: .venv compile

.venv: .venv/bin/activate

.venv/bin/activate: requirements.txt
	test -d .venv || python3 -m venv .venv
	.venv/bin/pip install -r requirements.txt
	touch .venv/bin/activate

compile: .venv template.yaml
	.venv/bin/templating -c template.yaml
   
