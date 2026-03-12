#!/bin/bash

# 非対話シェルは即終了
[[ $- != *i* ]] && return

# 中枢のみ読み込む
source "$HOME/.bash/.bootstrap"
