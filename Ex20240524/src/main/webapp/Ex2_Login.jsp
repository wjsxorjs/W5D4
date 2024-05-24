<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex2_Login</title>
<style>
    caption{
        text-indent: -9999px;
    }
</style>
</head>
<body>
    <div id="wrap">
        <header>
            <h1>로그인</h1>
        </header>
        <article>
            <form action="Ex2_Login_Ok.jsp" method="post">
                <table>
                    <caption>로그인 테이블</caption>
                    <colgroup>
                        <col width="90px" />
                        <col width="*" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <td>
                                <label for="s_id">아이디: </label>
                            </td>
                            <td>
                                <input type="text" name="m_id" id="s_id" placeholder="사용자 아이디 입력">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="s_pw">비밀번호: </label>
                            </td>
                            <td>
                                <input type="password" name="m_pw" id="s_pw" placeholder="사용자 비밀번호 입력">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <button type="button" onclick="login(this.form)">로그인</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </article>
    </div>

    <script>
        function login(frm){ // 인자로 this.form(button이 포함된 form을 가져온다.)
            let m_id = frm.m_id; // 폼 객체를 통해 접근할 시 name을 이용하여 접근할 수 있다.
            let m_pw = frm.m_pw;

            m_id.value = clrSpace(m_id.value);
            m_pw.value = clrSpace(m_pw.value);
            
            if(m_id.value.length < 1){
                // 사실 공백제거는 정규표현식에 의해 제거하는 것이 바람직하다.
                alert("아이디를 입력하세요");
                m_id.value = "";
                m_id.focus();
                return;
            }
            if(m_pw.value.trim().length < 1){
                // 사실 공백제거는 정규표현식에 의해 제거하는 것이 바람직하다.
                alert("비밀번호를 입력하세요");
                m_pw.value = "";
                m_pw.focus();
                return;
            }

            console.log(frm.m_id);
            console.log(frm.m_pw);

            frm.submit();

        }

        function clrSpace(str){
            return str.replaceAll("/^\s+|\s+|\s+$/g","");
        }
    </script>
</body>
</html>