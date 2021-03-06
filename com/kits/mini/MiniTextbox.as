package com.kits.mini {
	import com.kits.Kit;
	import com.kits.Label;
	import com.kits.vo.LabelVo;
	import flash.text.TextField;
	
	public class MiniTextbox extends Label {
		private var _textField:TextField;
		private var _labelVo:LabelVo;
		
		public function MiniTextbox(text:String = "", width:int = 100) {
			_textField = new TextField();
			_textField.embedFonts = true;
			_textField.defaultTextFormat = MiniStyle.defaultTextFormat;
			_labelVo = new LabelVo();
			_labelVo.textField = _textField;
			_textField.width = width;
			_labelVo.autoSize = true;
			_labelVo.wordWrap = true;
			super(_labelVo)
			this.text = text;
			this.color = int(MiniStyle.defaultTextFormat.color);
			this.disableColor = MiniStyle.textEnabledColor;
		}
		
		override public function get width():Number {
			return super.width;
		}
		
		override public function set width(value:Number):void {
			super.width = value;
			_textField.width = value;
		}
	}
}