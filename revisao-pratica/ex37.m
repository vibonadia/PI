clear all
# 256, 224, 192, 128, 96, 64, 32 e 0
temp = 256 * ones(32, 32)
contraste = []
contraste = horzcat(contraste, temp)
temp = 224 * ones(32, 32)
contraste = horzcat(contraste, temp)
temp = 192 * ones(32, 32)
contraste = horzcat(contraste, temp)
temp = 128 * ones(32, 32)
contraste = horzcat(contraste, temp)
temp = 96 * ones(32, 32)
contraste = horzcat(contraste, temp)
temp = 64 * ones(32, 32)
contraste = horzcat(contraste, temp)
temp = 32 * ones(32, 32)
contraste = horzcat(contraste, temp)
contraste = horzcat(contraste, zeros(32, 32))
colormap(gray(256)), image(contraste);

