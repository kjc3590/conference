/**
 * 숫자만 입력가능하게 하는 함수
 */
	function fn_onlyNumber(event){
	
	
	    event = event || window.event;
	    var keyID = (event.which) ? event.which : event.keyCode;
	    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 9 || keyID == 46 || keyID == 37 || keyID == 39 )
	        return;
	    else
	        return false;
	}
	
	function isValidDateStr(str) {
	    var date = new Date(str);
	    return !_.isNaN(date.getTime());
	}
	
/**
 * 문자를 제거하는 함수
 */
	function removeChar(event) {
	    event = event || window.event;
	    var keyID = (event.which) ? event.which : event.keyCode;
	    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
	        return;
	    else
	        event.target.value = event.target.value.replace(/[^0-9]/g, "");
	}
	
/**
 * 핸드폰 번호 입력할 때 자동대시
 * 11자리 : 000-0000-0000
 * 10자리 : 000-000-0000
 */
	function autoDashPhoneNumber(str){
	    str = str.replace(/[^0-9]/g, '');
	    var tmp = '';
	    if( str.length < 4){
	        return str;
	    }else if(str.length < 7){
	        tmp += str.substr(0, 3);
	        tmp += '-';
	        tmp += str.substr(3);
	        return tmp;
	    }else if(str.length < 11){
	        tmp += str.substr(0, 3);
	        tmp += '-';
	        tmp += str.substr(3, 3);
	        tmp += '-';
	        tmp += str.substr(6);
	        return tmp;
	    }else{
	        tmp += str.substr(0, 3);
	        tmp += '-';
	        tmp += str.substr(3, 4);
	        tmp += '-';
	        tmp += str.substr(7);
	        return tmp;
	    }
	    return str;
	}
	
	$('input[name=confe_phone]').on('keyup', function(event){
	    var phone = this.value.trim();
	    this.value = autoDashPhoneNumber(phone) ;
	});
	
//넘어온 값이 빈값인지 체크합니다. // !value 하면 생기는 논리적 오류를 제거하기 위해 // 명시적으로 value == 사용 // [], {} 도 빈값으로 처리 
	var isEmpty = function(value){
		if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ){
			return true;
		}else{
			return false; 
		} 
	};
	
	