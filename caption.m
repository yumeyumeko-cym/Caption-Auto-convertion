filesrt = dir('*.ass');
filewmv = dir('*.mkv');
for i = 1 : size(filewmv,1)
    [~,fileName{i},ext{i}] = fileparts(filewmv(i).name);    % 获取视频文件的不包含扩展名的名称
    movefile(filesrt(i).name, [fileName{i} '.ass']);    % 重命名字幕文件
end