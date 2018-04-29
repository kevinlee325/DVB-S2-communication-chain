
H = [0 1 0 1 1 0 0 1;
     1 1 1 0 0 1 0 0;
     0 0 1 0 0 1 1 1;
     1 0 0 1 1 0 1 0];

tic;
graph = buildTannerGraph(H);
msg_tx = [1 0 0 1 0 1 0 1];
msg_rx = [1 1 0 1 0 1 0 1];



d = LdpcSoftDecoder(symb_rx', H, graph, 1, 10)
err_d = sum(bit_tx'-bit_hihi)
toc