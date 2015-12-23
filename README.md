# XSLTTestTask

Write xslt-template that converts the source XML in the resulting XML, in which <math> elements will be numbered (attribute number must be added) in ascending order,
taking into account the final location where <feature> elements will take the place of <featureAnchor> with the corresponding id.

Source XML:

<component>
	<sect1>
		<math id="c01-math-0001"/>
		<featureAnchor features="c01-fea-0001"/>
		<math id="c01-math-0002"/>
	</sect1>
	<sect1>
		<featureAnchor features="c01-fea-0002"/>
		<math id="c01-math-0003"/>
		<math id="c01-math-0004"/>
	</sect1>
	<featureGroup>
		<feature id="c01-fea-0001">
			<math id="c01-math-0005"/>
		</feature>
		<feature id="c01-fea-0002">
			<math id="c01-math-0006"/>
			<math id="c01-math-0007"/>
		</feature>
	</featureGroup>
</component>

Result XML:

<component>
	<sect1>
		<math number="1" id="c01-math-0001"/>
		<featureAnchor features="c01-fea-0001"/>
		<math number="3" id="c01-math-0002"/>
	</sect1>
	<sect1>
		<featureAnchor features="c01-fea-0002"/>
		<math number="6" id="c01-math-0003"/>
		<math number="7" id="c01-math-0004"/>
	</sect1>
	<featureGroup>
		<feature id="c01-fea-0001">
			<math number="2" id="c01-math-0005"/>
		</feature>
		<feature id="c01-fea-0002">
			<math number="4" id="c01-math-0006"/>
			<math number="5" id="c01-math-0007"/>
		</feature>
	</featureGroup>
</component>

-----------------

Написать xslt-шаблон, который преобразует исходный XML в результирующий XML, в котором элетенты <math> будут пронумерованы (добавится атрибут number) в порядке возрастания,
но учитывая не данное, а окончательное расположение, в котором элементы <feature> встанут на место <featureAnchor>ов с соответствующими id.

Исходный XML:
<component>
	<sect1>
		<math id="c01-math-0001"/>
		<featureAnchor features="c01-fea-0001"/>
		<math id="c01-math-0002"/>
	</sect1>
	<sect1>
		<featureAnchor features="c01-fea-0002"/>
		<math id="c01-math-0003"/>
		<math id="c01-math-0004"/>
	</sect1>
	<featureGroup>
		<feature id="c01-fea-0001">
			<math id="c01-math-0005"/>
		</feature>
		<feature id="c01-fea-0002">
			<math id="c01-math-0006"/>
			<math id="c01-math-0007"/>
		</feature>
	</featureGroup>
</component>

Результирующий XML:
<component>
	<sect1>
		<math number="1" id="c01-math-0001"/>
		<featureAnchor features="c01-fea-0001"/>
		<math number="3" id="c01-math-0002"/>
	</sect1>
	<sect1>
		<featureAnchor features="c01-fea-0002"/>
		<math number="6" id="c01-math-0003"/>
		<math number="7" id="c01-math-0004"/>
	</sect1>
	<featureGroup>
		<feature id="c01-fea-0001">
			<math number="2" id="c01-math-0005"/>
		</feature>
		<feature id="c01-fea-0002">
			<math number="4" id="c01-math-0006"/>
			<math number="5" id="c01-math-0007"/>
		</feature>
	</featureGroup>
</component>