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

package org.un.cava.birdeye.geovis.transformations
{
	public class WorldGeographicTransformation extends Transformation
	{
		private var _latRad:Number;
		private var _longRad:Number;

		public function WorldGeographicTransformation(lat:Number,long:Number)
		{
			super();
			_latRad=convertDegToRad(lat);
			_longRad=convertDegToRad(long);

			this.scalefactor=133.9;
			this.xscaler=1;
			this.xoffset=3.145;
			this.yoffset=1.455;
		}
		
		public override function calculateX():Number
		{
			var xCentered:Number;
			var stdParallell:Number = Math.PI / 8;
			
			xCentered = _longRad * this.xscaler;//Math.cos(stdParallell);
			return translateX(xCentered);
		}

		public override function calculateY():Number
		{
			var yCentered:Number;
			var scaleY:Number = 100;
			yCentered = _latRad;
			return translateY(yCentered);
		}
		
	}
}