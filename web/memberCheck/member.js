function infoConfirm() {
    if(document.reg_frm.id.value.length == 0){
        alert("아이디는 필수 사항입니다.");
        document.reg_frm.id.focus();
        return;
    }
    if(document.reg_frm.id.value.length <4){
        alert("아이디는 4글자 이상 입력해주세요");
        document.reg_frm.id.focus();
        return;
    }
    if(document.reg_frm.id.value.length == 0){
        alert("아이디는 필수 사항입니다.");
        document.reg_frm.id.focus();
        return;
    }
    if(document.reg_frm.pw.value.length == 0){
        alert("비밀번호는 필수 사항입니다.");
        document.reg_frm.pw.focus();
        return;
    }
    if(document.reg_frm.pw.value != document.reg_frm.pw_check.value){
        alert("비밀번호가 일치 하지 않습니다..");
        document.reg_frm.pw.focus();
        return;
    }
    if(document.reg_frm.name.length == 0){
        alert("이름은 필수 사항입니다..");
        document.reg_frm.name.focus();
        return;
    }

    document.reg_frm.submit();
}

function updateInfoConfirm() {
    if(document.reg_frm.pw.value.length == 0){
        alert("비밀번호를 입력하세요");
        document.reg_frm.pw.focus();
        return;
    }
    if(document.reg_frm.pw.value != document.reg_frm.pw_check.value){
        alert("비밀번호가 일치 하지 않습니다..");
        document.reg_frm.pw.focus();
        return;
    }
    document.reg_frm.submit();

}