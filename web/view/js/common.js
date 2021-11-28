const title = document.querySelector("#inputTitle");
const content = document.querySelector("#inputWriter");
const boardType = document.querySelector("#boardType")
//const authID = "user";
//const authUD = "admin";


function handleWrite(event){
    //로그인에 대해서 먼저 체크한다.
    //이때 userID는 session userID이다.
    // if(userID = null){
    //     alert("로그인을 먼저 해주세요.");
    //     event.preventDefault();
    // }

    if(title.value === ""){
        alert("제목을 입력해주세요.");
        event.preventDefault();
    }
    if(content.value === ""){
        alert("내용을 입력해주세요.");
        event.preventDefault();
    }
    if(boardType.value === "공지사항"){
        if(authID === "user"){
            alert("유저는 공지사항을 작성할 수 없습니다. Q&A 게시판을 선택해주세요.");
            event.preventDefault();
        }
    }
    //글 작성 시 login session 체크하는 내용이 들어가야한다.
    //session에 "authID" 가 "user"인지 "admin"인지 구분하여 Q&A에 내용이 적힐지 공지사항에 내용이 적힐지 구분한다.
    //임의로 일단 테스트를 진행해보았다.
}