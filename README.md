# XSLTTestTask

Write xslt-template that converts the source XML in the resulting XML, in which <math> elements will be numbered (attribute number must be added) in ascending order, taking into account the final location where <feature> elements will take the place of <featureAnchor> with the corresponding id.

Написать xslt-шаблон, который преобразует исходный XML в результирующий XML, в котором элетенты <math> будут пронумерованы (добавится атрибут number) в порядке возрастания, но учитывая не данное, а окончательное расположение, в котором элементы <feature> встанут на место <featureAnchor>ов с соответствующими id.

Source XML:

&lt;component&gt; &lt;sect1&gt; &lt;math id="c01-math-0001"/&gt; &lt;featureAnchor features="c01-fea-0001"/&gt; &lt;math id="c01-math-0002"/&gt; &lt;/sect1&gt; &lt;sect1&gt; &lt;featureAnchor features="c01-fea-0002"/&gt; &lt;math id="c01-math-0003"/&gt; &lt;math id="c01-math-0004"/&gt; &lt;/sect1&gt; &lt;featureGroup&gt; &lt;feature id="c01-fea-0001"&gt; &lt;math id="c01-math-0005"/&gt; &lt;/feature&gt; &lt;feature id="c01-fea-0002"&gt; &lt;math id="c01-math-0006"/&gt; &lt;math id="c01-math-0007"/&gt; &lt;/feature&gt; &lt;/featureGroup&gt; &lt;/component&gt;

Result XML:

&lt;component&gt; &lt;sect1&gt; &lt;math number="1" id="c01-math-0001"/&gt; &lt;featureAnchor features="c01-fea-0001"/&gt; &lt;math number="3" id="c01-math-0002"/&gt; &lt;/sect1&gt; &lt;sect1&gt; &lt;featureAnchor features="c01-fea-0002"/&gt; &lt;math number="6" id="c01-math-0003"/&gt; &lt;math number="7" id="c01-math-0004"/&gt; &lt;/sect1&gt; &lt;featureGroup&gt; &lt;feature id="c01-fea-0001"&gt; &lt;math number="2" id="c01-math-0005"/&gt; &lt;/feature&gt; &lt;feature id="c01-fea-0002"&gt; &lt;math number="4" id="c01-math-0006"/&gt; &lt;math number="5" id="c01-math-0007"/&gt; &lt;/feature&gt; &lt;/featureGroup&gt; &lt;/component&gt;
