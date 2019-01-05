function dispStructArray(structArray)
	
fieldNames = fieldnames(structArray);
dispString = 'STRUCT ARRAY:\n';

for i = 1:length(structArray)	
    dispString = [dispString '------------------------------\n' num2str(i)];
	for j = 1:length(fieldNames)
        fieldValue = structArray(i).(fieldNames{j});
		    if isbool(fieldValue)
            if fieldValue
              fieldValue = 'true';
            else
              fieldValue = 'false';
            end
        elseif isnumeric(fieldValue)
            fieldValue = num2str(fieldValue);
        end
		dispString = [dispString '\t' fieldNames{j} ': ' fieldValue '\n'];
    end	
end

disp(sprintf(dispString));
end