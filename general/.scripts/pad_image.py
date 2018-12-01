
from cv2 import imread, imwrite
from numpy import zeros
import argparse
from sys import exit
from os import path


parser = argparse.ArgumentParser(description='A tool for turning an image square')
parser.add_argument('fpath', type=str, nargs='?')

if __name__ == "__main__":
    args = parser.parse_args()
    orig_im = imread(args.fpath)
    if len(orig_im.shape) != 3:
        print('only supports color right now')
        exit(1)

    h, w, c = orig_im.shape

    pad = int((w - h) / 2)

    # if in "portrait mode," flip to landscape
    flipped = False
    if pad < 0:
        flipped = True
        orig_im = orig_im.transpose(1, 0, 2)
        h, w, c = orig_im.shape
        pad *= -1

    new_im = zeros((w, w, c))
    new_im[pad:pad + h, ...] = orig_im
    new_im_name = '{0[0]}_square{0[1]}'.format(path.splitext(args.fpath))

    if flipped:
        new_im = new_im.transpose(1, 0, 2)

    imwrite(new_im_name, new_im)
