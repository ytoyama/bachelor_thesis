# 文及びカテゴリ間の関係を捉えたレーティング予測

豊田工業大学 知能数理研究室 学部4年 外山洋太



## 背景と目的

 近年、企業においてビッグデータを活用した商品の評判分析の必要性が高まっている。
その中でも商品レビューの評判分類は重要な問題の一つである。
 また、ディープラーニングを用いた評判分類が従来の手法を超える成果を
挙げている。
評判分類においても畳み込みニューラルネットワーク(NN)や再帰NNを用いた手法が
提案されている。
 よって、本研究では、ディープラーニングを複数カテゴリにおける評判分類に
適用し、従来手法から精度を向上させることを目的とする。


## 関連研究

### 隠れ状態を用いたホテルレビューのレーティング予測

 藤谷ら[1]は、レビュー内の各文毎に隠れレーティングを予測することで
評判分類の精度を向上させる手法を提案している。

### パラグラフベクトル

 パラグラフベクトルは、文や文章といった大きな単位の言語表現の意味表現を
学習する手法である。
 以下に手法の具体的なアルゴリズムを解説する。
ここでは簡単のため文の意味表現を学習する場合について考える。
まず、意味表現を学習する対象となる文に含まれる単語を初めから一つずつ読んでいく。
その際、現在の単語とその周辺の単語及び現在の文を含む以下の目的関数を最少化する
ように各パラメータの学習を行う。
<!--
単語の意味表現と同時にその単語の属する文や文章の意味表現を同時に
学習する。このとき、
-->

### 畳み込みニューラルネットワークを用いた評判分類

 Nal Kalchbrenner et al.やRie Johnson et al.が
畳み込みニューラルネットワークを用いた評判分類を提案している。
これらの手法は従来の手法を超える精度を達成している。



## 提案手法

 提案手法では、パラグラフベクトルによってレビュー内の各文及び文章の分散表現を
生成し、それらをニューラルネットワークの入力とすることで分類を行う。






## 実験

### 基準手法の実験


### 提案手法の実験


### 結果


### 考察



## 結論

 本研究では、




参考文献
[1] 藤谷宣典ら,
    隠れ状態を用いたホテルレビューのレーティング予測.
    言語処理学会第21回年次大会, 2015.
[2] Quoc Le et al.,
    Distributed Representations of Sentences and Documents.
    ICML 2014, 2014.
[3] Nal Kalchbrenner, Edward Grefenstette, and Phil Blunsom,
    A Convolutional Neural Network for Modelling Sentences.
    ACL 2014, 2014.
[4] Rie Johnson, Tong Zhang,
    Effective Use of Word Order for Text Categorization with Convolutional
    Neural Networks.
    NAACL 2015, 2015.

[x] Duyu Tang, Bing Qin, Ting Liu,
    Learning Semantic Representation of Users and Products for Document Level
    Sentiment Classification.
    ACL 2015, 2015.
