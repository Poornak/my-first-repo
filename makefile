readme=README.md
script_file=guessinggame.sh
.PHONY: run_bscript make_readme

targets: make_readme run_bscript

run_bscripts: $(script_file)
	bash $(script_file)

make_readme:
	echo "Creating :" $(readme)
	touch $(readme)
	echo "Title : $(script_file)" >> $(readme)
	echo "Executed on : $$(date)" >> $(readme)
	echo "No of lines in  $(script_file) is $$(wc $(script_file) -l)" >> $(readme)
	
	
