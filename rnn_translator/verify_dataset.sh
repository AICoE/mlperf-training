#!/bin/bash

set -e

ACTUAL_SRC_TRAIN=`cat data/train.tok.clean.bpe.32000.en |md5sum`
EXPECTED_SRC_TRAIN='d41d8cd98f00b204e9800998ecf8427e  -'
if [[ $ACTUAL_SRC_TRAIN = $EXPECTED_SRC_TRAIN ]]; then
  echo "OK: correct data/train.tok.clean.bpe.32000.en"
else
  echo "ERROR: incorrect data/train.tok.clean.bpe.32000.en"
  echo "ERROR: expected $EXPECTED_SRC_TRAIN"
  echo "ERROR: found $ACTUAL_SRC_TRAIN"
fi

ACTUAL_TGT_TRAIN=`cat data/train.tok.clean.bpe.32000.de |md5sum`
EXPECTED_TGT_TRAIN='d41d8cd98f00b204e9800998ecf8427e  -'
if [[ $ACTUAL_TGT_TRAIN = $EXPECTED_TGT_TRAIN ]]; then
  echo "OK: correct data/train.tok.clean.bpe.32000.de"
else
  echo "ERROR: incorrect data/train.tok.clean.bpe.32000.de"
  echo "ERROR: expected $EXPECTED_TGT_TRAIN"
  echo "ERROR: found $ACTUAL_TGT_TRAIN"
fi

ACTUAL_SRC_VAL=`cat data/newstest_dev.tok.clean.bpe.32000.en |md5sum`
EXPECTED_SRC_VAL='d41d8cd98f00b204e9800998ecf8427e  -'
if [[ $ACTUAL_SRC_VAL = $EXPECTED_SRC_VAL ]]; then
  echo "OK: correct data/newstest_dev.tok.clean.bpe.32000.en"
else
  echo "ERROR: incorrect data/newstest_dev.tok.clean.bpe.32000.en"
  echo "ERROR: expected $EXPECTED_SRC_VAL"
  echo "ERROR: found $ACTUAL_SRC_VAL"
fi

ACTUAL_TGT_VAL=`cat data/newstest_dev.tok.clean.bpe.32000.de |md5sum`
EXPECTED_TGT_VAL='d41d8cd98f00b204e9800998ecf8427e  -'
if [[ $ACTUAL_TGT_VAL = $EXPECTED_TGT_VAL ]]; then
  echo "OK: correct data/newstest_dev.tok.clean.bpe.32000.de"
else
  echo "ERROR: incorrect data/newstest_dev.tok.clean.bpe.32000.de"
  echo "ERROR: expected $EXPECTED_TGT_VAL"
  echo "ERROR: found $ACTUAL_TGT_VAL"
fi

ACTUAL_SRC_TEST=`cat data/newstest2014.tok.bpe.32000.en |md5sum`
EXPECTED_SRC_TEST='d41d8cd98f00b204e9800998ecf8427e  -'
if [[ $ACTUAL_SRC_TEST = $EXPECTED_SRC_TEST ]]; then
  echo "OK: correct data/newstest2014.tok.bpe.32000.en"
else
  echo "ERROR: incorrect data/newstest2014.tok.bpe.32000.en"
  echo "ERROR: expected $EXPECTED_SRC_TEST"
  echo "ERROR: found $ACTUAL_SRC_TEST"
fi

ACTUAL_TGT_TEST=`cat data/newstest2014.tok.bpe.32000.de |md5sum`
EXPECTED_TGT_TEST='d41d8cd98f00b204e9800998ecf8427e  -'
if [[ $ACTUAL_TGT_TEST = $EXPECTED_TGT_TEST ]]; then
  echo "OK: correct data/newstest2014.tok.bpe.32000.de"
else
  echo "ERROR: incorrect data/newstest2014.tok.bpe.32000.de"
  echo "ERROR: expected $EXPECTED_TGT_TEST"
  echo "ERROR: found $ACTUAL_TGT_TEST"
fi

ACTUAL_TGT_TEST_TARGET=`cat data/newstest2014.de |md5sum`
EXPECTED_TGT_TEST_TARGET='d41d8cd98f00b204e9800998ecf8427e  -'
if [[ $ACTUAL_TGT_TEST_TARGET = $EXPECTED_TGT_TEST_TARGET ]]; then
  echo "OK: correct data/newstest2014.de"
else
  echo "ERROR: incorrect data/newstest2014.de"
  echo "ERROR: expected $EXPECTED_TGT_TEST_TARGET"
  echo "ERROR: found $ACTUAL_TGT_TEST_TARGET"
fi
