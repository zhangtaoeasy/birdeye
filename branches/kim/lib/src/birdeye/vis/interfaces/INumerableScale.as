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
 
 package birdeye.vis.interfaces
{
	public interface INumerableScale extends IScale
	{
		/** Set-get the minimum value.*/
		function set min(val:Number):void
		function get min():Number
		
		/** Set-get the maximum value.*/
		function set max(val:Number):void
		function get max():Number

		/** Set-get the total sum of positive values that are feeding the axis.*/
		function set totalPositiveValue(val:Number):void
		function get totalPositiveValue():Number

		/** Set-get the sum of all values that are feeding the axis.*/
/* 		function set sum(val:Number):void
		function get sum():Number */

		/** Set the base at zero. */
		function set baseAtZero(val:Boolean):void

		/** Decide to format or not min and max data values.*/
		function set format(val:Boolean):void
	}
}