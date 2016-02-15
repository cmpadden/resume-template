personal : template/template.tex metadata/personal.yml
	pandoc $(filter-out $<,$^ ) -o ./output/personal.pdf --template=$<

demo : template/template.tex metadata/details.yml
	pandoc $(filter-out $<,$^ ) -o ./output/example.pdf --template=$<

clean :
	rm output.pdf
