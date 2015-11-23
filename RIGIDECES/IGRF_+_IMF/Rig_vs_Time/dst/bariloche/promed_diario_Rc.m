%%
%
dst000=dlmread('local_dst0.dat', '', 3, 0);
dst100=dlmread('local_dst100.dat', '', 3, 0);
dst200=dlmread('local_dst200.dat', '', 3, 0);
dst300=dlmread('local_dst300.dat', '', 3, 0);
dst400=dlmread('local_dst400.dat', '', 3, 0);
%
col_time=1;
col_Ru=2;
col_Rc=3;
col_Rl=4;
%
dst = [0 100 200 300 400];
prom_dst(1) = mean(dst000(:, col_Rc));	% dst 0
prom_dst(2) = mean(dst100(:, col_Rc));	% dst 100
prom_dst(3) = mean(dst200(:, col_Rc));	% dst 200
prom_dst(4) = mean(dst300(:, col_Rc));	% ...
prom_dst(5) = mean(dst400(:, col_Rc));
%
for i = 1:5
	fprintf('\n	Rc(dst %d) = %f', dst(i), prom_dst(i));
end
fprintf('\n \n	GRABADO EN ARCHIVO! \n');
%
dst_vs_Rc = cat(2, dst', prom_dst');
dlmwrite('dst_vs_Rc_bariloche.dat', '# $1 : Dst', 'delimiter', '')
dlmwrite('dst_vs_Rc_bariloche.dat', '# $2 : Rc', 'delimiter', '', '-append')
dlmwrite('dst_vs_Rc_bariloche.dat', '# -----Marambio', 'delimiter', '', '-append')
dlmwrite('dst_vs_Rc_bariloche.dat', dst_vs_Rc, 'delimiter', ' ', '-append')
%
%%
