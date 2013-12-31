def output_editors(editors)
	output = 'Thanks to my friend'

	if editors.count > 1
		output += 's '
	else
		output += ' '
	end

	editors.each_with_index do |editor,index|
		if editor[:url]
			output += '<a href="' + editor[:url] + '">' + editor[:name] + '</a>'
		else
			output += editor[:name]
		end

		if editors.count - index == 1
			output += ' '
		elsif editors.count - index == 2
			output += ' and '
		else
			output += ', '
		end
	end

	output += ' for editing.'

	return output
end