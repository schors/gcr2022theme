Презентация GolangConf'2022 (Москва, Россия). Тема LaTeX beamer
---------------------------------------------------------------

Конференция
===========

Секция [GolangConf](https://golangconf.ru/2022) на [HighLoad++ 2022](https://www.highload.ru/foundation/2022)

Особенности
===========

* Создан для использования с компилятором xelatex
* Фирменный шрифт конференции используется только на титульной страницы, далее в качестве основного используется Roboto
* Требуется установить шрифты TTF (идут в поставке):
** Roboto
** DejaVu Sans Mono
** TTTravel
* Размеры подогнаны к стандартному шаблону, что в целом не очень верно
* Мне не известны лицензионные условия картинок шаблона
* Дополнения для листинга не вынесены в отдельный класс и болтаются внутри документа
* Изменения шрифта для библиографии тоже "болтается" в документе
* Требуется `<policy domain="coder" rights="read | write" pattern="PDF" />` в `/etc/ImageMagick-X/policy.xml` для создания gif
* При использовании docker учтите, что все ваши TTF-шрифты придется перенести в `~/.fonts`

[Скомпилированная презентация (PDF)](gcr2022-example.pdf)
![](gcr2022-example.gif)

Использование
=============

```console
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive xelatex gcr2022-example.tex
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive biber gcr2022-example
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive xelatex gcr2022-example.tex
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive xelatex gcr2022-example.tex
```

TODO
====

* (вряд ли) вынести всё в шаблоны

Donate
------

* PayPal https://www.paypal.me/schors
* Yandex.Money http://yasobe.ru/na/schors
* BTC: 18YFeAV12ktBxv9hy4wSiSCUXXAh5VR7gE
* LTC: LVXP51M8MrzaEQi6eBEGWpTSwckybqHU5s
* ETH: 0xba53cebd99157bf412a6bb91165e7dff29abd0a2

---
[![UNLICENSE](noc.png)](UNLICENSE)

