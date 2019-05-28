input_index = 'indoor';
output_index = 'Sample_indoor';
str = 'H';

for num = 1:15
    
    name_num = num2str(num);
    name_string = [str num2str(num) '.xls'];
    name = fullfile(output_index, name_string);
    
    aa1 = fullfile('A106',input_index,str,name_num,'AP_A.dat');
    bb1 = fullfile('A106',input_index,str,name_num,'AP_B.dat');
    cc1 = fullfile('A106',input_index,str,name_num,'AP_C.dat');
    dd1 = fullfile('A106',input_index,str,name_num,'AP_D.dat');
    
    A1 = read_bf_file(aa1);
    B1 = read_bf_file(bb1);
    C1 = read_bf_file(cc1);
    D1 = read_bf_file(dd1);

    num_A = length(A1);
    Temp_A = []
    num_B = length(B1);
    Temp_B = []
    num_C = length(C1);
    Temp_C = []
    num_D = length(D1);
    Temp_D = []
    for i = 1:num_A
       A2 = get_total_rss(A1{i});
       Temp_A = [Temp_A; A2];
    end
    for i = 1:num_B
       B2 = get_total_rss(B1{i});
       Temp_B = [Temp_B; B2];
    end
    for i = 1:num_C
       C2 = get_total_rss(C1{i});
       Temp_C = [Temp_C; C2];
    end
    for i = 1:num_D
       D2 = get_total_rss(D1{i});
       Temp_D = [Temp_D; D2];
    end
    
    xlswrite(name,Temp_A,'sheet1',['A',num2str(1)]) 
    xlswrite(name,Temp_B,'sheet1',['B',num2str(1)])
    xlswrite(name,Temp_C,'sheet1',['C',num2str(1)])
    xlswrite(name,Temp_D,'sheet1',['D',num2str(1)])
    
end