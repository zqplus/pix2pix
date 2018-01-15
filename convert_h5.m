d=dir('.\ungate_try\r6c8_output\r6c8_output\*.h5');
d=d(~ismember({d.name},{'.','..'}));
di=dir('.\ungate\AA\*.im');
di=di(~ismember({di.name},{'.','..'}));


for i= 1:length(d)
   %[I,header] = readim(['.\r6c6_ungate_target\target\',d(i).name]);
   %h5create([num2str(i),'.h5'],'/img',[128 128])
   %h5create([num2str(i),'.h5'],'/header',size(header))
   data=h5read(['.\ungate_try\r6c8_output\r6c8_output\',d(i).name],'/img');
   data=data';
   writeim(['.\ungate\AA\',di(i).name],data);
   %h5write([num2str(i),'.h5'],'/img',I);
   %h5write([num2str(i),'.h5'],'/header',header)
end
