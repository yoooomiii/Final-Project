<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <section id="foodList">
        <div class="img">
            <c:forEach items="${attackList}" var="fname">
                <img src="download?filename=${fname}" width="500" height="450" class="lien">
            </c:forEach>
            <br>
            <h2><b>${mvo.menu_name}</b></h2>
            <br>
            <h6><b>${mvo.menu_ex}</b></h6>
            <br>
            <h4><b>${mvo.menu_price}원</b></h4>
            <br>
            <hr>
            <br>
            <br>
            <table border=1 class="table">
                <thead>
                    <tr>
                        <td>선택</td>
                        <td>이름</td>
                        <td>가격</td>
                        <td>설명</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${List}" var="mvoo">
                        <tr>
                            <td><input type="checkbox" value="${mvoo.menu_no}" class="menuCheckbox"></td>
                            <td>${mvoo.menu_name}</td>
                            <td>${mvoo.menu_price}</td>
                            <td>${mvoo.menu_ex}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br>
            <br>
           	
            <button type="button" onclick="submitOrder()">주문하기</button>
           
        </div>
    </section>

    <script type="text/javascript">
        function submitOrder() {
            var checkboxes = document.querySelectorAll('.menuCheckbox:checked');
            var selectedValues = Array.from(checkboxes).map(cb => cb.value);

            if (selectedValues.length === 0) {
                alert("하나 이상의 항목을 선택하세요.");
                return false;
            }

            // 폼 생성
            var form = document.createElement('form');
            form.method = 'post';
            form.action = 'item_inputSave';

            // 기본 정보 추가
            var menuNoInput = document.createElement('input');
            menuNoInput.type = 'hidden';
            menuNoInput.name = 'menu_no';
            menuNoInput.value = selectedValues[0];
            form.appendChild(menuNoInput);

            for (var i = 1; i < selectedValues.length; i++) {
                var input = document.createElement('input');
                input.type = 'hidden';
                input.name = 'menu_no' + (i + 1);
                input.value = selectedValues[i];
                form.appendChild(input);
            }

            // 기타 정보 추가
            form.appendChild(createInputElement('i_no', ''));
            form.appendChild(createInputElement('i_id', ''));
            form.appendChild(createInputElement('i_conut', '1'));
            form.appendChild(createInputElement('i_price', '${mvo.menu_price + mvo.menu_price}'));

            document.body.appendChild(form);
            form.submit();
        }

        function createInputElement(name, value) {
            var input = document.createElement('input');
            input.type = 'hidden';
            input.name = name;
            input.value = value;
            return input;
        }
    </script>
</body>
</html>