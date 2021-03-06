Функция ВерсияПодсистемы() Экспорт
	Возврат "1.0.0.1";
КонецФункции

Функция ПрефиксЭлементовФормы() Экспорт
	Возврат "РМ_";
КонецФункции

Функция ПолучитьПутьКДаннымБезЛишнего(ПутьКДанным) Экспорт
	Возврат СтрЗаменить(ПутьКДанным,".","_");
КонецФункции

Функция ПолучитьПутьКДаннымИЗПутиБезЛишнего(ПутьКДаннымБезЛишнего) Экспорт
	Возврат СтрЗаменить(ПутьКДаннымБезЛишнего,"_",".");
КонецФункции

Функция ПолучитьИмяЭлементаПанелиСтраницРедактированияКомментария(ПутьКДанным) Экспорт 
	Возврат ПрефиксЭлементовФормы()+"Страницы_"+ПолучитьПутьКДаннымБезЛишнего(ПутьКДанным);
КонецФункции

Функция ПолучитьИмяСтраницыРедактированияКомментария(ПутьКДанным) Экспорт
	Возврат ПрефиксЭлементовФормы()+"Страница_Редактирование_"+ПолучитьПутьКДаннымБезЛишнего(ПутьКДанным);	
КонецФункции

Функция ПолучитьИмяСтраницыПросмотраКомментария(ПутьКДанным) Экспорт
	Возврат ПрефиксЭлементовФормы()+"Страница_Просмотр_"+ПолучитьПутьКДаннымБезЛишнего(ПутьКДанным);	
КонецФункции

Функция ПолучитьИмяЭлементаРедактированияКомментария(ПутьКДанным) Экспорт
	Возврат ПолучитьПутьКДаннымБезЛишнего(ПутьКДанным);
КонецФункции

Функция ПолучитьИмяЭлементаПросмотраКомментария(ПутьКДанным) Экспорт
	Возврат ПрефиксЭлементовФормы()+"ПолеПросмотра_"+ПолучитьПутьКДаннымБезЛишнего(ПутьКДанным);
КонецФункции

Функция ПолучитьПутьКДаннымПоИменаПанелиСтраниц(ИмяПанели) Экспорт
	ПутьКДаннымБезЛишнего=СтрЗаменить(ИмяПанели,"РМ_Страницы_","");
	Возврат ПолучитьПутьКДаннымИЗПутиБезЛишнего(ПутьКДаннымБезЛишнего);
КонецФункции

Функция ПолучитьПутьКДаннымПоИмениПоляПросмотра(ИмяПанели) Экспорт
	СтрокаЗамены=ПрефиксЭлементовФормы()+"ПолеПросмотра_";
	ПутьКДаннымБезЛишнего=СтрЗаменить(ИмяПанели,СтрокаЗамены,"");
	Возврат ПолучитьПутьКДаннымИЗПутиБезЛишнего(ПутьКДаннымБезЛишнего);
КонецФункции

Функция ИмяТаблицыПрисоединенныхФайлов(ПутьКДаннымБезЛишнего) Экспорт
	Возврат ПрефиксЭлементовФормы()+"ТаблицаПрисоединенныхФайлов_"+ПутьКДаннымБезЛишнего;
КонецФункции

Функция ИмяГруппыНовыхПрисоединенныхФайлов(ПутьКДаннымБезЛишнего) Экспорт
	Возврат ПрефиксЭлементовФормы()+"НовыеПрисоединенныеФайлы_"+ПутьКДаннымБезЛишнего;
КонецФункции

Функция ИмяЭлементаНадписиНовогоПрисоединеногоФайла(ПутьКДаннымБезЛишнего, ИдентификаторСтроки) Экспорт
	Возврат ПрефиксЭлементовФормы()+ИмяЭлементаНадписиНовогоПрисоединеногоФайлаБезПрефикса(ПутьКДаннымБезЛишнего, ИдентификаторСтроки);
КонецФункции

Функция ИмяЭлементаНадписиНовогоПрисоединеногоФайлаБезПрефикса(ПутьКДаннымБезЛишнего, ИдентификаторСтроки) Экспорт
	Возврат "ПрисоединенныйФайл_" + Формат(ИдентификаторСтроки,"ЧН=0; ЧГ=0;")+"_"+ПутьКДаннымБезЛишнего;
КонецФункции

Функция ИмяГруппыНовогоПрисоединеногоФайла(ПутьКДаннымБезЛишнего, ИдентификаторСтроки) Экспорт
	Возврат ПрефиксЭлементовФормы()+"Группа_"+ИмяЭлементаНадписиНовогоПрисоединеногоФайлаБезПрефикса(ПутьКДаннымБезЛишнего, ИдентификаторСтроки);
КонецФункции

Функция ИмяГруппыКомандНовогоПрисоединеногоФайла(ПутьКДаннымБезЛишнего, ИдентификаторСтроки) Экспорт
	Возврат ПрефиксЭлементовФормы()+"ГруппаКоманд_"+ИмяЭлементаНадписиНовогоПрисоединеногоФайлаБезПрефикса(ПутьКДаннымБезЛишнего, ИдентификаторСтроки);
КонецФункции

Функция ИмяКомандыУдалитьНовогоПрисоединеногоФайла(ПутьКДаннымБезЛишнего, ИдентификаторСтроки) Экспорт
	Возврат ПрефиксЭлементовФормы()+"Удалить"+ИмяЭлементаНадписиНовогоПрисоединеногоФайлаБезПрефикса(ПутьКДаннымБезЛишнего, ИдентификаторСтроки);
КонецФункции

Функция ИмяКомандыОткрытьНовогоПрисоединеногоФайла(ПутьКДаннымБезЛишнего, ИдентификаторСтроки) Экспорт
	Возврат ПрефиксЭлементовФормы()+"Открыть"+ИмяЭлементаНадписиНовогоПрисоединеногоФайлаБезПрефикса(ПутьКДаннымБезЛишнего, ИдентификаторСтроки);
КонецФункции

Функция ИмяКомандыВставитьНовогоПрисоединеногоФайла(ПутьКДаннымБезЛишнего, ИдентификаторСтроки) Экспорт
	Возврат ПрефиксЭлементовФормы()+"Вставить"+ИмяЭлементаНадписиНовогоПрисоединеногоФайлаБезПрефикса(ПутьКДаннымБезЛишнего, ИдентификаторСтроки);
КонецФункции

Процедура СконвертироватьИмяПрисоединенногоФайлаВТексте(Текст,ИмяФайла,Адрес) Экспорт
	СтрокаПоиска = СтрШаблон("![](%1)", ИмяФайла);
	СтрокаЗамены = СтрШаблон("![](%1)", Адрес);
	
	Текст = СтрЗаменить(Текст, СтрокаПоиска, СтрокаЗамены);
КонецПроцедуры

Процедура СконвертироватьИменаПрисоединенныхФайловВТексте(ДанныеПрисоединенныхФайлов, Текст) Экспорт
	
	Для Каждого ДанныеФайла Из ДанныеПрисоединенныхФайлов Цикл
		
		СконвертироватьИмяПрисоединенногоФайлаВТексте(Текст,ДанныеФайла.ИмяФайла,ДанныеФайла.Адрес);
		
	КонецЦикла;
	
КонецПроцедуры

// Раскладывает полное имя файла на составляющие.
//
// Параметры:
//  ПолноеИмяФайла - Строка - полный путь к файлу.
//  ЭтоПапка - Булево - признак того, что требуется разложить полное имя папки, а не файла.
//
// Возвращаемое значение:
//   Структура - имя файла, разложенное на составные части(аналогично свойствам объекта Файл):
//		ПолноеИмя - содержит полный путь к файлу, т.е. полностью соответствует входному параметру ПолноеИмяФайла.
//		Путь - содержит путь к каталогу, в котором лежит файл.
//		Имя - содержит имя файла с расширением, без пути к файлу.
//		Расширение - содержит расширение файла.
//		ИмяБезРасширения - содержит имя файла без расширения и без пути к файлу.
//			Пример: если ПолноеИмяФайла = "c:\temp\test.txt", то структура заполнится следующим образом:
//				ПолноеИмя: "c:\temp\test.txt".
//				Путь: "c:\temp\"
//				Имя: "test.txt"
//				Расширение: ".txt"
//				ИмяБезРасширения: "test".
//
Функция РазложитьПолноеИмяФайла(Знач ПолноеИмяФайла, ЭтоПапка = Ложь) Экспорт
	
	СтруктураИмениФайла = Новый Структура("ПолноеИмя,Путь,Имя,Расширение,ИмяБезРасширения");
	
	// Убираем из полного имени файла завершающий слеш и сохраняем получившееся полное имя в структуре.
	Если ЭтоПапка И (Прав(ПолноеИмяФайла, 1) = "/" Или Прав(ПолноеИмяФайла, 1) = "\") Тогда
		Если ЭтоПапка Тогда
			ПолноеИмяФайла = Сред(ПолноеИмяФайла, 1, СтрДлина(ПолноеИмяФайла) - 1);
		Иначе
			// Если путь к файлу заканчивается слешем, то у файла нет имени.
			СтруктураИмениФайла.Вставить("ПолноеИмя", ПолноеИмяФайла); 
			СтруктураИмениФайла.Вставить("Путь", ПолноеИмяФайла); 
			СтруктураИмениФайла.Вставить("Имя", ""); 
			СтруктураИмениФайла.Вставить("Расширение", ""); 
			СтруктураИмениФайла.Вставить("ИмяБезРасширения", ""); 
			Возврат СтруктураИмениФайла;
		КонецЕсли;
	КонецЕсли;
	СтруктураИмениФайла.Вставить("ПолноеИмя", ПолноеИмяФайла); 
	
	// Если полное имя файла оказалось пустым, то остальные параметры структуры возвращаем пустыми.
	Если СтрДлина(ПолноеИмяФайла) = 0 Тогда 
		СтруктураИмениФайла.Вставить("Путь", ""); 
		СтруктураИмениФайла.Вставить("Имя", ""); 
		СтруктураИмениФайла.Вставить("Расширение", ""); 
		СтруктураИмениФайла.Вставить("ИмяБезРасширения", ""); 
		Возврат СтруктураИмениФайла;
	КонецЕсли;
	
	// Выделяем путь к файлу и имя файла.
	Если СтрНайти(ПолноеИмяФайла, "/") > 0 Тогда
		ПозицияРазделителя = СтрНайти(ПолноеИмяФайла, "/", НаправлениеПоиска.СКонца);
	ИначеЕсли СтрНайти(ПолноеИмяФайла, "\") > 0 Тогда
		ПозицияРазделителя = СтрНайти(ПолноеИмяФайла, "\", НаправлениеПоиска.СКонца);
	Иначе
		ПозицияРазделителя = 0;
	КонецЕсли;
	СтруктураИмениФайла.Вставить("Путь", Лев(ПолноеИмяФайла, ПозицияРазделителя)); 
	СтруктураИмениФайла.Вставить("Имя", Сред(ПолноеИмяФайла, ПозицияРазделителя + 1));
	
	// Папки не имеют расширений, а для файла выделяем расширение.
	Если ЭтоПапка Тогда
		СтруктураИмениФайла.Вставить("Расширение", "");
		СтруктураИмениФайла.Вставить("ИмяБезРасширения", СтруктураИмениФайла.Имя);
	Иначе
		ПозицияТочки = СтрНайти(СтруктураИмениФайла.Имя, ".", НаправлениеПоиска.СКонца);
		Если ПозицияТочки = 0 Тогда
			СтруктураИмениФайла.Вставить("Расширение", "");
			СтруктураИмениФайла.Вставить("ИмяБезРасширения", СтруктураИмениФайла.Имя);
		Иначе
			СтруктураИмениФайла.Вставить("Расширение", Сред(СтруктураИмениФайла.Имя, ПозицияТочки));
			СтруктураИмениФайла.Вставить("ИмяБезРасширения", Лев(СтруктураИмениФайла.Имя, ПозицияТочки - 1));
		КонецЕсли;
	КонецЕсли;
	
	Возврат СтруктураИмениФайла;
	
КонецФункции

Функция ДанныеПрисоединенныхФайлов(Форма,ПутьКДаннымБезЛишнего) Экспорт
	ИмяТаблицыПрисоединенныхФайлов=РМ_MarkdownКлиентСервер.ИмяТаблицыПрисоединенныхФайлов(ПутьКДаннымБезЛишнего);
	
	ДанныеПрисоединенныхФайлов = Новый Массив;
	Для Каждого СтрокаФайла Из Форма[ИмяТаблицыПрисоединенныхФайлов] Цикл
		ДанныеФайла = Новый Структура("ИмяФайла,Адрес,Ссылка", СтрокаФайла.ИмяФайла,СтрокаФайла.Адрес,СтрокаФайла.Ссылка);
		ДанныеПрисоединенныхФайлов.Добавить(ДанныеФайла);
	КонецЦикла;
	
	Возврат ДанныеПрисоединенныхФайлов;
	
КонецФункции
