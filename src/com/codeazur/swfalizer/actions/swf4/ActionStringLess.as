﻿package com.codeazur.swfalizer.actions.swf4
{
	import com.codeazur.swfalizer.actions.*;
	
	public class ActionStringLess extends Action implements IAction
	{
		public function ActionStringLess(code:uint, length:uint) {
			super(code, length);
		}
		
		public function toString(indent:uint = 0):String {
			return "[ActionStringLess]";
		}
	}
}