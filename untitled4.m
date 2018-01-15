d=dir('.\ungate\B\*.im');
d=d(~ismember({d.name},{'.','..'}));


for i= 1:length(d)
   [I,header] = readim(['.\ungate\B\',d(i).name]);
   h5create(['c6_',num2str(i),'.h5'],'/img',[128 128])
   h5create(['c6_',num2str(i),'.h5'],'/header',size(header))
   
   h5write(['c6_',num2str(i),'.h5'],'/img',I);
   h5write(['c6_',num2str(i),'.h5'],'/header',header)
end
