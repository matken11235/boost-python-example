# coding:utf-8

import tensorflow as tf

def main(str):
	hello, sess = [ tf.constant(str), tf.Session() ]
	return sess.run(hello)