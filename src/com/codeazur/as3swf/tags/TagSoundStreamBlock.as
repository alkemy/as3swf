﻿package com.codeazur.as3swf.tags
{
	import com.codeazur.as3swf.SWFData;
	
	import flash.utils.ByteArray;
	
	public class TagSoundStreamBlock extends Tag implements ITag
	{
		public static const TYPE:uint = 19;
		
		protected var _soundData:ByteArray;
		
		public function TagSoundStreamBlock() {
			_soundData = new ByteArray();
		}
		
		public function get soundData():ByteArray { return _soundData; }
		
		public function parse(data:SWFData, length:uint, version:uint):void {
			data.readBytes(_soundData, 0, length);
		}
		
		public function publish(data:SWFData, version:uint):void {
			data.writeTagHeader(type, _soundData.length, true);
			if (_soundData.length > 0) {
				data.writeBytes(_soundData);
			}
		}
		
		override public function get type():uint { return TYPE; }
		override public function get name():String { return "SoundStreamBlock"; }
		override public function get version():uint { return 1; }
		
		public function toString(indent:uint = 0):String {
			return toStringMain(indent) + "Length: " + _soundData.length;
		}
	}
}
