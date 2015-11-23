%%
%
dst000=dlmread('local_dst0.dat', '', 3, 0);
dst100=dlmread('local_dst-100.dat', '', 3, 0);
dst200=dlmread('local_dst-200.dat', '', 3, 0);
dst300=dlmread('local_dst-300.dat', '', 3, 0);
dst400=dlmread('local_dst-400.dat', '', 3, 0);
dst500=dlmread('local_dst-500.dat', '', 3, 0);
%
col_time=1;
col_Ru=2;
col_Rc=3;
col_Rl=4;
%
dst = [0 100 200 300 400 500];
prom_dst(1) = mean(dst000(:, col_Rc));	% dst 0
prom_dst(2) = mean(dst100(:, col_Rc));	% dst 100
prom_dst(3) = mean(dst200(:, col_Rc));	% dst 200
prom_dst(4) = mean(dst300(:, col_Rc));	% ...
prom_dst(5) = mean(dst400(:, col_Rc));
prom_dst(6) = mean(dst500(:, col_Rc));
%
for i = 1:6
	fprintf('\n	Rc(dst %d) = %f', dst(i), prom_dst(i));
end
fprintf('\n \n	GRABADO EN ARCHIVO! \n');
%
dst_vs_Rc = cat(2, dst', prom_dst');
dlmwrite('dst_vs_Rc_bsas.dat', '# $1 : Dst', 'delimiter', '')
dlmwrite('dst_vs_Rc_bsas.dat', '# $2 : Rc', 'delimiter', '', '-append')
dlmwrite('dst_vs_Rc_bsas.dat', '# -----bsas', 'delimiter', '', '-append')
dlmwrite('dst_vs_Rc_bsas.dat', dst_vs_Rc, 'delimiter', ' ', '-append')
%
%%
