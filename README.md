# clever-sitl-vagrant

Симулятор [Клевера](https://github.com/copterexpress/clever) на базе Vagrant.

## Требования

Для успешной сборки и запуска требуется [Vagrant](https://www.vagrantup.com/) версии не ниже 2.2.3 и [VirtualBox](https://www.virtualbox.org/)
версии не ниже 5.2.24. **Внимание!** Работа с Virtualbox 6.0+ пока не поддерживается ввиду проблем с графической подсистемой
VirtualBox!

## Запуск

Перед запуском виртуальной машины следует установить плагин [Vagrant-VBGuest](https://github.com/dotless-de/vagrant-vbguest).
Этот плагин поддерживает актуальность установленных гостевых дополнений в виртуальной машине; без него графическая подсистема
будет использовать программную растеризацию.

Для установки плагина в командной строке выполните:

```
$ vagrant plugin install vagrant-vbguest
```

Далее, в папке с клонированным репозиторием выполните

```
$ vagrant up
```

В первый раз эта команда будет собирать виртуальную машину, поэтому выполняться будет долго. Последующие запуски будут происходить
гораздо быстрее.

После выполнения этой команды появится окно VirtualBox с запущенной виртуальной машиной с симулятором.

## Остановка симулятора

В папке с клонированным репозиторием выполните

```
$ vagrant halt
```
