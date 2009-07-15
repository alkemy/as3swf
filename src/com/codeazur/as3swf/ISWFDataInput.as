﻿package com.codeazur.as3swf
{
	import com.codeazur.as3swf.data.*;
	import com.codeazur.as3swf.data.filters.IFilter;
	import com.codeazur.as3swf.actions.IAction;
	
	import flash.utils.ByteArray;
	
	public interface ISWFDataInput
	{
		function readSI8():int;
		function readSI16():int;
		function readSI32():int;
		function readUI8():uint;
		function readUI16():uint;
		function readUI24():uint;
		function readUI32():uint;
		function readFIXED():Number;
		function readFIXED8():Number;
		function readFLOAT():Number;
		function readFLOAT16():Number;
		function readDOUBLE():Number;
		function readEncodedU32():uint;
		function readUB(bits:uint):uint;
		function readSB(bits:uint):int;
		function readFB(bits:uint):Number;
		function readString():String;
		function readLANGCODE():uint;
		function readRGB():uint;
		function readRGBA():uint;
		function readARGB():uint;
		function readRECT():SWFRectangle;
		function readMATRIX():SWFMatrix;
		function readCXFORM():SWFColorTransform;
		function readCXFORMWITHALPHA():SWFColorTransformWithAlpha;
		function readSHAPE():SWFShape;
		function readSHAPEWITHSTYLE(level:uint = 1):SWFShapeWithStyle;
		function readBUTTONRECORD(level:uint = 1):SWFButtonRecord;
		function readBUTTONCONDACTION(level:uint = 1):SWFButtonCondAction;
		function readFILTER():IFilter;
		function readTEXTRECORD(glyphBits:uint, advanceBits:uint, previousRecord:SWFTextRecord = null, level:uint = 1):SWFTextRecord;
		function readGLYPHENTRY(glyphBits:uint, advanceBits:uint):SWFGlyphEntry;
		function readZONERECORD():SWFZoneRecord;
		function readZONEDATA():SWFZoneData;
		function readKERNINGRECORD(wideCodes:Boolean):SWFKerningRecord;
		function readACTIONRECORD():IAction;
		function readACTIONVALUE():SWFActionValue;
		function readREGISTERPARAM():SWFRegisterParam;
		
		function get position():uint;
		function uncompress():void;
		function readBytes(bytes:ByteArray, offset:uint = 0, length:uint = 0):void;
		function skipBytes(length:uint):void;
		function dump(length:uint, rewind:uint = 0):void;
	}
}