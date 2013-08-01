def output_editors(editors)
	output = 'Thanks to my friend'

	if editors.count > 1
		output += 's '
	else
		output += ' '
	end

	editors.each_with_index do |editor,index|
		output += '<a href="' + editor[:url] + '">' + editor[:name] + '</a>'

		if editors.count - index == 1
			output += ' '
		else
			output += ', '
		end
	end

	output += ' for editing.'

	return output
end