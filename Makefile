.PHONY setup

setup: 
	@python3 -m venv .venv
	@.venv/bin/pip install -r requirements.txt
	@source .venv/bin/activate
	@echo "Setup complete"

local:
	@source .venv/bin/activate
	@python3 app/main.py

test:
	@source .venv/bin/activate
	#add your testing commands here
	#@python3 test/test_main.py

clean:
	@pip freeze > requirements.txt
	@deactivate
	@echo "Cleaned up"

destroy:
	@rm -rf .venv
	@echo "Destroyed virtual environment"