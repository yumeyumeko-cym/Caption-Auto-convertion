filesrt = dir('*.ass');
filewmv = dir('*.mkv');
for i = 1 : size(filewmv,1)
    [~,fileName{i},ext{i}] = fileparts(filewmv(i).name);    % exclude extented name of files
    movefile(filesrt(i).name, [fileName{i} '.ass']);    % Rename caption files
end
