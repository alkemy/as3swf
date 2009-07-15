﻿package com.codeazur.swfalizer.actions.swf5
{
	import com.codeazur.swfalizer.actions.*;
	import com.codeazur.swfalizer.ISWFDataInput;
	
	public class ActionConstantPool extends Action implements IAction
	{
		public var constants:Vector.<String>;
		
		public function ActionConstantPool(code:uint, length:uint) {
			super(code, length);
			constants = new Vector.<String>();
		}
		
		override public function parse(data:ISWFDataInput):void {
			var count:uint = data.readUI16();
			for (var i:uint = 0; i < count; i++) {
				constants.push(data.readString());
			}
		}
		
		public function toString(indent:uint = 0):String {
			return "[ActionConstantPool] " + constants.join(",");
		}
	}
}