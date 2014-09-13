# Russian AI Cup 2014

## RUSSIAN

Стартовый языковой пакет

## Требования

* jruby и java 1.7
* local-runner установленный в соседней папке

## Использование

### Базовое тестирование с TestStrategy

Для тестирования вашего решения вам необходимо установаить local-runner в соседнюю папку.

Если этот кит установален в папке `/Users/arrowcircle/projects/ruby-cgdk`, то local runner должен находиться в папке `/Users/arrowcircle/projects/ruby-cgdk`

Для запуска теста вашего решения используйте `rake start`. Этот таск:

* Закрывает текущий процесс локал раннера (`killall java`)
* запускает новый локал раннер
* ждет 2 секунды
* запускает ваше решение (`ruby runner`)

Если у вас какая-то другая конфигурация - смело заходите в `Rakefile` и правьте под свои нужды

### Подготовка решения к публикации

Для подготовки zip архива используйте `rake release`

Эта задача упакует все руби файлы *.rb в этой папке и создаст архив `eureka.zip`.
Этот файл надо отправить как решение через сайт.

## ENGLISH

## Requirements

* jruby and java 1.7
* local-runner installed in the same root directory

## Usage

### Test strategy battle

To test your solutions locally you need local-runner to be installed in same root directory.

If you have this kit installed in `/Users/arrowcircle/projects/ruby-cgdk`, local runner should be available at `/Users/arrowcircle/projects/local-runner`

To test you strategy use `rake start` task. It will:

* kill current local-runner (`killall java`)
* run new local-runner
* sleep for 2 secs
* run your strategy

### Releasing solution

If you ready to zip you solution, use `rake relase` task.

It zips all *.rb files in current directory and puts inside `eureka.zip` archive