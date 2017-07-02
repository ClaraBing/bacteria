local cfg = {
    -- image
    class_count = 4, -- 3 bacteria + 1 others
    normalization = {method = 'contrastive', width=7, centering=true, scaling=false},
    augmentation = {vflip=0.25, hflip=0.25, random_scaling=0, aspect_jitter=0},
    color_space = 'rgb',
    batch_size = 32,
    pos_thresh = 0.7,
    neg_thresh = 0.25,
    -- training
    train_img_set = '../data/train',
    test_img_set = '../data/test',
    cache = './cache/',
}

local opt = {
    -- Train
    model = 'model_conv4pool4.lua',
    ftrain = '../data/db_square224_white_bg.t7', -- '../data/db_square224_white_bg.t7',
    restore = 'conv4pool4_white_bg/conv4pool4_060000.t7', -- also for testing
    lr = 1e-3,
    eps = 1e-7, -- parameter for batch normalization
    snapshot = 5000,
    snapshot_prefix = 'conv4pool4_white_bg/conv4pool4',
    plot = 200,
    gpuid = 0,
    -- Test
    result_dir = 'conv4pool4_white_bg/', -- Note: always add a trailing '/'
}

return cfg, opt