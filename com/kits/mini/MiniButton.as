package com.kits.mini {
	import com.kits.Button;
	import com.kits.Kit;
	import com.kits.LabelButton;
	import com.kits.vo.ButtonVo;
	import com.kits.vo.LabelButtonVo;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author 蓝面包
	 */
	public class MiniButton extends LabelButton {
		private var _labelButtonVo:LabelButtonVo;
		
		public function MiniButton(label:String = "") {
			_labelButtonVo = new LabelButtonVo();
			_labelButtonVo.overSkin = new Sprite();
			_labelButtonVo.normalSkin = new Sprite();
			_labelButtonVo.disableSkin = new Sprite();
			_labelButtonVo.label = new MiniLabel(label)
			_labelButtonVo.label.move(3, 0)
			super(_labelButtonVo)
		}
		
		override public function draw():void {
			referSize(_labelButtonVo.label, 4, 0);
			MiniStyle.drawSkin(_labelButtonVo.overSkin.graphics, MiniStyle.fillOverColor, MiniStyle.borderColor, _width, _height);
			MiniStyle.drawSkin(_labelButtonVo.normalSkin.graphics, MiniStyle.fillColor, MiniStyle.borderColor, _width, _height);
			MiniStyle.drawSkin(_labelButtonVo.disableSkin.graphics, MiniStyle.fillEnabledColor, MiniStyle.borderColor, _width, _height);
			super.draw();
		}
	}
}