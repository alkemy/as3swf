﻿package com.codeazur.swfalizer.actions.swf3
{
	import com.codeazur.swfalizer.actions.*;
	
	public class ActionStopSounds extends Action implements IAction
	{
		public function ActionStopSounds(code:uint, length:uint) {
			super(code, length);
		}
		
		public function toString(indent:uint = 0):String {
			return "[ActionStopSounds]";
		}
	}
}