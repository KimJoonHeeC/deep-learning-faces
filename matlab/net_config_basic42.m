function [net_layers] = net_config_basic42()
net_layers=[];

L = 1;
net_layers{L}.type = 'convdata';
net_layers{L}.nFilters = 1;
net_layers{L}.nI_grid = 48;
net_layers{L}.nJ_grid = 48;
net_layers{L}.f_dropout = 0.0;

L = L+1;
net_layers{L}.type = 'imagemirror';
net_layers{L}.nVisChannels = 1;
net_layers{L}.nVisI = 48;
net_layers{L}.nVisJ = 48;
net_layers{L}.nPrevLayerID = L-1;
    
L = L+1;
net_layers{L}.type = 'convxyrs';
net_layers{L}.nVisChannels = 1;
net_layers{L}.nVisI = 48;
net_layers{L}.nVisJ = 48;
net_layers{L}.nVisI2 = 42;
net_layers{L}.nVisJ2 = 42;
net_layers{L}.trns_low = single([21 21 -pi/4 0.8]);
net_layers{L}.trns_high = single([27 27 pi/4 1.2]);
%net_layers{L}.trns_low = single([21 21 -pi/4 0.9]);
%net_layers{L}.trns_high = single([27 27 pi/4 1.1]);
net_layers{L}.nPrevLayerID = L-1;

L = L+1;
net_layers{L}.type = 'convc';
net_layers{L}.nVisChannels = 1;
net_layers{L}.nFilters = 32;
net_layers{L}.nVisI = 42;
net_layers{L}.nVisJ = 42;
net_layers{L}.nI_filt = 5;
net_layers{L}.nJ_filt = 5;
net_layers{L}.nPaddingStart = -2;
net_layers{L}.nStride = 1;
net_layers{L}.nI_grid = 42;
net_layers{L}.nJ_grid = 42;
net_layers{L}.nNeuronType = 3;
net_layers{L}.nCPUMode = 0;
net_layers{L}.f_dropout = 0.;
net_layers{L}.f_wtcost = 0.0001;
net_layers{L}.nPartialSum = 6;
net_layers{L}.ri_mode = 0;
net_layers{L}.ri = 0.01;
net_layers{L}.initB = 0.1;
net_layers{L}.nPrevLayerID = L-1;


L = L+1;
net_layers{L}.type = 'convs';
net_layers{L}.nFilters = 32;
net_layers{L}.nStride = 2;
net_layers{L}.nSizeX = 3;
net_layers{L}.nI_sgrid = 21;
net_layers{L}.nJ_sgrid = 21;
net_layers{L}.nNeuronType = 0;
net_layers{L}.f_dropout = 0.0;
net_layers{L}.nPoolingType = 1;
net_layers{L}.nPoolAKMode = 1;
net_layers{L}.nPrevLayerID = L-1;

L = L+1;
net_layers{L}.type = 'convc';
net_layers{L}.nVisChannels = 32;
net_layers{L}.nFilters = 32;
net_layers{L}.nVisI = 21;
net_layers{L}.nVisJ = 21;
net_layers{L}.nI_filt = 4;
net_layers{L}.nJ_filt = 4;
net_layers{L}.nPaddingStart = -1;
net_layers{L}.nStride = 1;
net_layers{L}.nI_grid = 20;
net_layers{L}.nJ_grid = 20;
net_layers{L}.nNeuronType = 3;
net_layers{L}.nCPUMode = 0;
net_layers{L}.f_dropout = 0.;
net_layers{L}.f_wtcost = 0.0001;
net_layers{L}.nPartialSum = 4;
net_layers{L}.ri_mode = 0;
net_layers{L}.ri = 0.01;
net_layers{L}.initB = 0.1;
net_layers{L}.nPrevLayerID = L-1;

L = L+1;
net_layers{L}.type = 'convs';
net_layers{L}.nFilters = 32;
net_layers{L}.nStride = 2;
net_layers{L}.nSizeX = 3;
net_layers{L}.nI_sgrid = 10;
net_layers{L}.nJ_sgrid = 10;
net_layers{L}.nNeuronType = 0;
net_layers{L}.f_dropout = 0.0;
net_layers{L}.nPoolingType = 0;
net_layers{L}.nPoolAKMode = 1;
net_layers{L}.nPrevLayerID = L-1;

L = L+1;
net_layers{L}.type = 'convc';
net_layers{L}.nVisChannels = 32;
net_layers{L}.nFilters = 64;
net_layers{L}.nVisI = 10;
net_layers{L}.nVisJ = 10;
net_layers{L}.nI_filt = 5;
net_layers{L}.nJ_filt = 5;
net_layers{L}.nPaddingStart = -2;
net_layers{L}.nStride = 1;
net_layers{L}.nI_grid = 10;
net_layers{L}.nJ_grid = 10;
net_layers{L}.nNeuronType = 3;
net_layers{L}.nCPUMode = 0;
net_layers{L}.f_dropout = 0.;
net_layers{L}.f_wtcost = 0.0001;
net_layers{L}.nPartialSum = 5;
net_layers{L}.ri_mode = 0;
net_layers{L}.ri = 0.01;
net_layers{L}.initB = 0.1;
net_layers{L}.nPrevLayerID = L-1;


L = L+1;
net_layers{L}.type = 'convs';
net_layers{L}.nFilters = 64;
net_layers{L}.nStride = 2;
net_layers{L}.nSizeX = 3;
net_layers{L}.nI_sgrid = 5;
net_layers{L}.nJ_sgrid = 5;
net_layers{L}.nNeuronType = 0;
net_layers{L}.f_dropout = 0.0;
net_layers{L}.nPoolingType = 0;
net_layers{L}.nPoolAKMode = 1;
net_layers{L}.nPrevLayerID = L-1;


L = L+1;
net_layers{L}.type = 'fc';
net_layers{L}.nV = 5^2*64;
net_layers{L}.nH = 3*1024;
net_layers{L}.nNeuronType = 3;
net_layers{L}.f_dropout = 0.2;
net_layers{L}.f_wtcost = .0001;
net_layers{L}.f_wt_cons_val = 0;
net_layers{L}.ri_mode = 0;
net_layers{L}.ri = 0.001;
net_layers{L}.initB = 0.01;
net_layers{L}.nPrevLayerID = L-1;

L = L+1;
net_layers{L}.type = 'fc';
net_layers{L}.nV = 3*1024;
net_layers{L}.nH = 7;
net_layers{L}.nNeuronType = 6;
net_layers{L}.fC = 2;  % 2 for L2-svm
net_layers{L}.f_dropout = 0.0;
net_layers{L}.f_wtcost = .02; %.02 svm  .002 for softmax
net_layers{L}.f_wt_cons_val = 0;
net_layers{L}.ri_mode = 0;
net_layers{L}.ri = 0.0;
net_layers{L}.initB = 0;
net_layers{L}.nPrevLayerID = L-1;
