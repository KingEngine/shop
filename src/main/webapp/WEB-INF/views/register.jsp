<%@page contentType="text/html; charset=utf-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>金义兴华</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jQuery.blockUI.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.SuperSlide.js"></script>
<link href="<%=request.getContextPath()%>/css/all.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css" />
<%@include file="resource.tag" %>
<%@include file="tag.tag"%>  
</head>
<div class="c w1016">
  <div class="w l">
    <div class="logo l"><img src="images/logo.gif" alt="返回酷衣轩"></div>
    <div style="margin-top: 47px;margin-left: 800px;">
    	<c:choose>
    		<c:when test="${customer!=null}">
    			<font color="#FF6600">欢迎您,尊敬的${customer.customerNickname}</font>
    			<a href="<%=request.getContextPath()%>/exit.do">退出</a>
    		</c:when>
    		<c:otherwise>
	    		<a href="<%=request.getContextPath()%>/loginPre.do"><font color="#FF6600">登陆</font></a>
		    	<a href="<%=request.getContextPath()%>/register.do"><font color="#FF6600">注册</font></a>
    		</c:otherwise>
    	</c:choose>
    </div>
  </div>
</div>
<div class="w l nav bga bgc">
  <div class="w1016 c">
    <ul class="w l j-nav f14 fwb lili lile">
     <li><a href="<%=request.getContextPath()%>/getCenter.do" target="_self">首页</a><em></em></li>
      <c:forEach items="${firstMenu}" var="item">
      		<li><a href="<%=request.getContextPath()%>/getProductList.do?productCategoryId=${item.categoryId}" target="_self">${item.categoryName}</a><em></em></li>
      </c:forEach>
    </ul>
  </div>
</div>
<div class="w1016 c">
  <div class="w l">
    <div class="l wx-type">
      <dl>
      	<c:forEach items="${firstMenu}" var="item">
      		 <dt class="w l f14 fwb c3">${item.categoryName}</dt>
      		 <dd class="w l f12">
          	 <ul class="lili lile">
      		 <c:forEach items="${item.secondMenus}" var="second">
      		 	<li><a href="">${second.categoryName}</a></li>
      		 </c:forEach>
      		 </ul>
      	</c:forEach>
      </dl>
    </div>
    <div class="l wx-yh">
      <div class="wx-yh-t w l">
      	<h3><a>用户注册</a></h3>
      	<hr color="red">
     	 <form action="registerSubmit.do" method="post" id="register">
			<table align="center" style="margin-left: 50px;" width="100%">
				<tr>
					<td style="color: rgb(45, 45, 45);font-size: 12px;line-height: 140%;width:120px;">用户名：</td>
					<td><input name="customerNickname" style="width: 200px;"/><font color="red">* &nbsp;</font> 4-20个字符(a-z，A-Z，0-9) &nbsp;</td>
				
				</tr>
				<tr>
					<td style="color: rgb(45, 45, 45);font-size: 12px;line-height: 140%;">登录密码：</td>
					<td><input  type="password" name="customerPwd"  id="customerPwd"  style="width: 200px;"/><font color="red">* &nbsp;</font></td>
					
				</tr>
				<tr>
					<td style="color: rgb(45, 45, 45);font-size: 12px;line-height: 140%;">确认密码：</td>
					<td><input  type="password" name="customerPwdConfirm" style="width: 200px;"/><font color="red">* &nbsp;</font></td>
				</tr>
				<tr>
					<td style="color: rgb(45, 45, 45);font-size: 12px;line-height: 140%;">邮箱：</td>
					<td><input  name="customerEmail" style="width: 200px;"/><font color="red">* &nbsp;</font></td>
				</tr>
				<tr>
					<td style="color: rgb(45, 45, 45);font-size: 12px;line-height: 140%;">手机号：</td>
					<td><input  name="customerPhone" style="width: 200px;"/><font color="red">* &nbsp;</font></td>
				</tr>
				<tr>
					<td style="color: rgb(45, 45, 45);font-size: 12px;line-height: 140%;">密码找回问题：</td>
					<td><input  name="customerPwdQuestion" style="width: 200px;"/><font color="red">* &nbsp;</font></td>
				</tr>
				<tr>
					<td style="color: rgb(45, 45, 45);font-size: 12px;line-height: 140%;">密码找回答案：</td>
					<td><input  name="customerPwdAnswer" style="width: 200px;"/><font color="red">* &nbsp;</font></td>
				</tr>
				<tr>
					<td style="color: rgb(45, 45, 45);font-size: 12px;line-height: 140%;">注册声明</td>
					<td>
						<textarea readonly="" rows="8" cols="68" name="textarea">请你先阅读我们的注册声明，如果同意，请进行用户注册。 
1．网上商城网站服务条款的确认和接纳
网上商城网站各项服务的所有权和运作权归网上商城拥有。
2．用户必须：
(1)自行配备上网的所需设备， 包括个人电脑、调制解调器或其他必备上网装置。
&#12288;&#12288; (2)自行负担个人上网所支付的与此服务有关的电话费用、 网络费用。
3． 有关个人资料
用户同意：
(1) 提供及时、详尽及准确的个人资料。
(2) 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。
&#12288;&#12288; 网上商城网站不公开用户的姓名、地址、电子邮箱和笔名，以下情况除外：
&#12288;&#12288; (1)用户授权网上商城网站透露这些信息。
&#12288;&#12288; (2)相应的法律及程序要求网上商城网站提供用户的个人资料。如果用户提供的资料包含有不正确的信息，网上商城网站保留结束用户使用网上商城网站信息服务资格的权利。
4． 服务条款的修改
&#12288;&#12288; 网上商城网站有权在必要时修改服务条款，网上商城网站服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。 如果用户继续享用网上商城网站信息服务，则视为接受服务条款的变动。网上商城网站保留随时修改或中断服务而不需通知用户的权利。网上商城网站行使修改或中断服务的权利，不需对用户或第三方负责。
5． 用户隐私制度
&#12288;&#12288; 尊重用户个人隐私是网上商城网站的一项基本政策。所以，作为对以上第二点个人注册资料分析的补充，网上商城网站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在网上商城网站中的非公开内容 ，除非有法律许可要求或网上商城网站在诚信的基础上认为透露这些信息在以下四种情况是必要的：
(1) 遵守有关法律规定，遵从网上商城网站合法服务程序。
(2) 保持维护网上商城网站的商标所有权。
(3) 在紧急情况下竭力维护用户个人和社会大众的隐私安全。
(4)符合其他相关的要求。
网上商城网站保留发布会员人口分析资询的权利。
6．用户的帐号、密码和安全性
&#12288;&#12288; 你一旦注册成功成为用户，你将得到一个密码和帐号。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码， 也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，请立即通告网上商城网站。
7． 拒绝提供担保
&#12288;&#12288; 用户明确同意信息服务的使用由用户个人承担风险。 网上商城网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。
8．有限责任
&#12288;&#12288; 网上商城网站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用网上商城网站服务，或用户传送的信息不符合规定等。这些行为都有可能导致网上商城网站形象受损， 所以网上商城网站事先提出这种损害的可能性，同时会尽量避免这种损害的发生。
9．信息的储存及限制
&#12288;&#12288; 网上商城网站有判定用户的行为是否符合网上商城网站服务条款的要求和精神的权利，如果用户违背网上商城网站服务条款的规定，网上商城网站有权中断其服务的帐号。如果用户在连续360天时间内没有登录、查看或使用，网上商城网站将视为用户自行放弃该帐号的使用权，网上商城网站将保留中断对其提供服务的权利。
10．用户管理
&#12288;&#12288; 用户必须遵循：
(1) 从中国境内向外传输技术性资料时必须符合中国有关法规。
(2) 使用信息服务不作非法用途。
(3) 不干扰或混乱网络服务。
(4) 遵守所有使用服务的网络协议、规定、程序和惯例。用户的行为准则是以因特网法规，政策、程序和惯例为根据的。
11．保障
&#12288;&#12288; 用户同意保障和维护网上商城网站全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。
12．结束服务
用户或网上商城网站可随时根据实际情况中断一项或多项服务。网上商城网站不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对网上商城网站服务不满，用户可以行使如下权利：
(1) 不再使用网上商城网站信息服务。
(2) 通知网上商城网站停止对该用户的服务。
&#12288;&#12288;结束用户服务后，用户使用网上商城网站服务的权利马上中止。从那时起，用户没有权利，网上商城网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。 
13．通告
&#12288;&#12288;所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。 
14．信息内容的所有权
&#12288;&#12288;网上商城网站定义的信息内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；网上商城网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在网上商城网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生商品。 
15．法律
&#12288;&#12288;网上商城网站信息服务条款要与中华人民共和国的法律解释一致。用户和网上商城网站一致同意服从上海悦婴婴幼儿用品有限公司所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户的约束力。 </textarea>
					</td>
				</tr>
				<tr>
					<td></td>
					<td colspan="2">
						<input type="submit" style="background: rgba(0, 0, 0, 0) url(<%=request.getContextPath()%>/images/regist_sub.jpg) no-repeat scroll 0 0;border-width: 0;height: 25px;text-decoration: underline; width:111px;" value=""/>
					</td>
				</tr>
			</table>
		</form>
      </div>
    </div>
  </div>
</div>
<div id="foot" class="w l foot f12" style="margin-top: 12%;">
  <div class="w1016 c">
    <div class="w l">
      <ul class="footnav lili lile w l">
        <li>网站导航</li>
      </ul>
    </div>
    <div class="w l sx">
        <span style="float: left;height: 21px;line-height: 21px;margin-left: 50%;">
        		<a href="http://www.miitbeian.gov.cn/" target="_blank"><font style="color: rgb(156,156,156);font-family:'microsoft yahei';font-size: 12px;">京ICP备：15030907号</font></a>
   		</span>
    </div>
  </div>
</div>
</html>