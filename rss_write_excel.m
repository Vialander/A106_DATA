A1 = read_bf_file('A106/indoor/A/1/AP_A.dat');
num_A = length(A1);
Temp_A = []
for i = 1:num_A
   A2 = get_total_rss(A1{i});
   Temp_A = [Temp_A; A2];
end
xlswrite('A1.xls',Temp_A,'sheet1',['A',num2str(1)])

B1 = read_bf_file('A106/indoor/A/1/AP_B.dat');
num_B = length(B1);
Temp_B = []
for i = 1:num_B
   B2 = get_total_rss(B1{i});
   Temp_B = [Temp_B; B2];
end
xlswrite('A1.xls',Temp_B,'sheet1',['B',num2str(1)])

C1 = read_bf_file('A106/indoor/A/1/AP_C.dat');
num_C = length(C1);
Temp_C = []
for i = 1:num_C
   C2 = get_total_rss(C1{i});
   Temp_C = [Temp_C; C2];
end
xlswrite('A1.xls',Temp_C,'sheet1',['C',num2str(1)])

D1 = read_bf_file('A106/indoor/A/1/AP_D.dat');
num_D = length(D1);
Temp_D = []
for i = 1:num_D
   D2 = get_total_rss(D1{i});
   Temp_D = [Temp_D; D2];
end
xlswrite('A1.xls',Temp_D,'sheet1',['D',num2str(1)])