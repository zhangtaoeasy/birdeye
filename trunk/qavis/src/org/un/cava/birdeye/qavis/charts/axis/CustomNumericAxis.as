/*  
 * The MIT License
 *
 * Copyright (c) 2008
 * United Nations Office at Geneva
 * Center for Advanced Visual Analytics
 * http://cava.unog.ch
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
 
 package org.un.cava.birdeye.qavis.charts.axis
{
	import com.degrafa.geometry.RegularRectangle;
	
	[Exclude(name="scaleType", kind="property")]
	public class CustomNumericAxis extends NumericAxis 
	{
		/** @Private
		 * the scaleType cannot be changed, since it's a customized "numeric" scale.*/
		override public function set scaleType(val:String):void
		{}
		
		private var _function:Function;
		/** Set the function that will be applied to calculate the getPosition of a 
		 * data value in the axis. The function will basically define a custom 
		 * scale for the axis.*/
		public function set function(val:Function):void
		{
			_function = val;
			invalidateProperties();
			invalidateDisplayList();
		}
		 
		// UIComponent flow
		
		public function CustomNumericAxis()
		{
			super();
			_scaleType = XYAxis.NUMERIC;
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
		}
		
		override protected function updateDisplayList(w:Number, h:Number):void
		{
			super.updateDisplayList(w,h);
		}
		
		// other methods

		/** @Private
		 * Override the XYZAxis getPostion method based on the linear scaling.*/
		override public function getPosition(dataValue:*):*
		{
			return _function(dataValue);
		}
	}
}