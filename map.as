﻿package  {		import flash.display.MovieClip;	import flash.events.MouseEvent;	import regiao;		// classe de mapa	public class map extends MovieClip{						public var regioes : Array = new Array();				// com brancos		public static const INCOMPLETO = false;		// sem brancos		public static const COMPLETO   = true;				// com conflitos		public static const INCORRETO  = false;		// sem conflitos		public static const CORRETO   = true;		public function map() {			// constructor code			addEventListener(MouseEvent.CLICK,mudaCor);		}				public function mudaCor(e:MouseEvent) {			//trace("ola");			trace("completo: ",checkCompleto());			trace("correcto: ",checkCorreto());		}				public function checkCompleto() {						var completo 		= map.COMPLETO;						for each (var r:regiao in regioes) {				if (r.cor == regiao.BRANCO) {					completo 		= map.INCOMPLETO;					break;				}			}					return completo;		}				public function checkCorreto() {						var correto 		= map.CORRETO;						for each (var r:regiao in regioes) {				if (r.checkConflito()) {					correto 		= map.INCORRETO;					break;				}			}					return correto;		}	}}