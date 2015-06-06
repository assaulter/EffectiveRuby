# person.rb
単純な継承の場合のツリーのたどり方。
method_missingは無視すると、見つかる前親をたどる。

# person_with_module.rb
親クラスからメソッドをモジュールに分離する。

includeされたThingsWithNamesモジュールは、ObjectとPersonの間に差し込まれる。
superclass, classメソッドは特異クラスを無視するので、スキップして、Objectを返す。

更に特異メソッドを追加すると、そちらが先に見つかるので、その値を返す。

# super_behavior.rb
superメソッドの挙動
親クラスのメソッドをオーバライドしており、かつ、親メソッドを呼びたい場合は、superを使う。

ただし、includeしたモジュールに同名のメソッドがある場合はそちらが呼ばれる（メソッドの探し方のため）
