const title = document.querySelector("#inputTitle");
const content = document.querySelector("#inputWriter");
const boardType = document.querySelector("#boardType");

const HIDDEN_CLASSNAME = "hidden";

//const authID = "user";
//const authUD = "admin";

//<-------- 게시글 작성 -------->
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
//<--------게시글 완료 업데이트 -------->
function handletUpdate(){
    alert("내용이 수정되었습니다.")
    window.location.reload();
}
//<-------- 게시글 삭제 -------->
function handleDelete(){
    //임의 sessionID
    const sessionID = "user";
    if(sessionID === "user"){
        alert("삭제 권한이 없습니다.");
    }
    else {
        alert("게시물이 삭제되었습니다.")
        //데이터 삭제 쿼리
    }
}
//<-------- 큐엔에이 삭제 -------->
function handleQnADelete(){
    alert("게시물이 삭제되었습니다.")
    window.location.reload();
}

//<-------- 큐엔에이 질문 수정 -------->
function handleQnAUpadte(){

}
//<-------- 큐엔에이 답변 작성 -------->
function handleCommentUpdate(){
    alert("답변을 달았습니다.")
    window.location.reload();
}
//<-------- 큐엔에이 작성 -------->
function handleComment(){
    //session 체크해서 답변달기가 유저면 내용이 보이고 아니면 알럿으로 안내해준다.
    const sessionId = "admin";
    const textarea = document.querySelector("form");
    const editDoneBtn = document.querySelector("form button");

    if(sessionId === "admin"){
        textarea.classList.remove(HIDDEN_CLASSNAME);
        //textarea에 접근해서 내용을 db에 저장
    }
    else{
        alert("유저는 답변을 달 수 없습니다.");
    }
}