# Indicator

Indicatorを表示する際に、Modal表示のviewDidLoadではkeyWindowが取得できず、親の画面でインジケータが回っていた、というケースが有った。
が、ホントに取得できないのか腑に落ちないため、検証してみた。

結果、viewDidLoadでも普通に回った。

次のステップは、使用しているライブラリを疑うことである。


