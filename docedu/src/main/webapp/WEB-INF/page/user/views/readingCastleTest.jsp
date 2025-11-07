<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리딩캐슬 테스트</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
  div.main {
    padding: 20px;
    width: 550px;
  }

  div.q_body {
    margin-top: 10px;
    text-align: justify;
  }

  table {
    border: solid 1px black;
    border-collapse: collapse;
    margin-bottom: 30px;
  }

  th, td {
    padding: 5px;
    border: solid 1px black;
  }

  div.textbox {
    border: solid 1px black;
    padding: 5px;
  }
</style>
</head>
<body>
  <div class="main">
    <form id="testForm" method="post" action="./readingCastleTest.do">
      <table width="100%">
        <tbody>
          <tr>
            <th>이름: </th>
            <td><input name="name"></td>
          </tr>
          <tr>
            <th width="25%"> 생년월일(6자리): </th>
            <td><input name="birthdate" placeholder="예시)101231"></td>
          </tr>
          <tr>
            <th>학교: </th>
            <td>
              <input name="school_name">
              <select name="school_type">
                <option value="초">초등학교</option>
                <option value="중">중학교</option>
                <option value="고">고학교</option>
              </select>
            </td>
          </tr>
          <tr>
            <th> 학년: </th>
            <td><input name="grade"> 학년</td>
          </tr>
        </tbody>
      </table>

      1. 다음 글의 목적으로 가장 적절한 것은?<br>
<div class="q_body">
Dear Ms. Jones,<br>
We are very sorry to hear that your LaserBrite Skin Care System is unsatisfactory. Each LaserBrite product is inspected with great care before it leaves our factory. Unfortunately, small problems can sometimes be overlooked, and damage can occur during shipping. Please return your LaserBrite to the address below; the address on our catalogue is only for placing orders. If possible, please pack the product in its original container and enclose a letter describing the problem in detail. The more information you can provide, the faster we can fix the problem. Thousands of satisfied customers are experiencing the power of the LaserBrite every day. We do hope that you can be one of them very soon.<br>
Customer Service Team<br>
 <br>
</div> 
<input type="radio" name="q1" value="1">① 불량품 반송 방법을 안내하려고</input><br>
<input type="radio" name="q1" value="2">② 제품 발송 지연에 대해 사과하려고</input><br>
<input type="radio" name="q1" value="3">③ 제품 품질 개선 제안에 감사하려고</input><br>
<input type="radio" name="q1" value="4">④ 제품 사용법 문의에 대해 답변하려고</input><br>
<input type="radio" name="q1" value="5">⑤ 신제품 출시 관련 정보를 소개하려고<br>
 <br>
2. 다음 글에 드러난 ‘I’의 심경으로 가장 적절한 것은?<br>
<div class="q_body">
If I had to do it over again, I certainly wouldn’t have gone to that corporation. At that company I never believed in myself. I never really believed that I was better than the people I was working with. And you can’t do that in a company that is so based on intense competition. I would not take initiative ― stand up for what I wanted. I would never do that, you know. I would allow myself to be somewhat intimidated. I would say to young people entering the workforce, “Stand up and shout.” But, I didn’t do that. I was much too timid. I think you have to be not so hard on yourself, and I was really hard on myself.<br>
 <br>
</div>
<input type="radio" name="q2" value="1">① angry </input><br>
<input type="radio" name="q2" value="2">② jealous</input><br>
<input type="radio" name="q2" value="3">③ astonished </input><br>
<input type="radio" name="q2" value="4">④ regretful</input><br>
<input type="radio" name="q2" value="5">⑤ scared<br>
 <br>
3. 다음 글에서 필자가 주장하는 바로 가장 적절한 것은?<br>
<div class="q_body">
To my mind, the ideal teacher should be pleasantly lively, somewhat attractive, good-humored, and really smart. I don’t mean to say that teachers who are plain or even ugly are out of the question, because many such people have plenty of other charms. But it does rule out anyone who is angry, boring, or mean-spirited, and anyone with a dull or purely negative personality. The list of desirable qualities is long, but it is absolutely essential for my ideal teacher to have a deep capacity for empathy ― literally, a great natural talent for tuning in to the needs and feelings of others; in particular, since most teachers are schoolteachers, they must have a special ability to empathize with kids.<br>
 <br>
</div>
<input type="radio" name="q3" value="1">① 교사는 훌륭한 성품을 갖춰야 한다.</input><br>
<input type="radio" name="q3" value="2">② 교사는 타인과의 공감 능력이 있어야 한다.</input><br>
<input type="radio" name="q3" value="3">③ 교사는 각자의 개성에 따라 학생을 지도해야 한다.</input><br>
<input type="radio" name="q3" value="4">④ 획일화된 교사 양성 체계를 변화시켜야 한다.</input><br>
<input type="radio" name="q3" value="5">⑤ 더욱 체계적인 교사 연수가 필요하다.<br>
 <br>
4. 밑줄 친 <span style="text-decoration: underline;">the machine won’t ask me about my knee pain</span>이 다음 글에서 의미하는 바로 가장 적절한 것은?<br>
<div class="q_body">
The technology of our age has enabled us to make connections with one another in ways we never imagined just a few years ago. But we know very well that in spite of all our wired connections, we are having trouble staying meaningfully connected to each other. We understand something about what Mamie Adams was talking about. Mamie Adams always went to a branch post office in her town because the postal employees there were friendly. She went there to buy stamps just before Christmas one year, and the lines were particularly long. Someone pointed out that there was no need to wait in line because there was a stamp machine in the lobby. “I know,” said Mamie, “but <span style="text-decoration: underline;">the machine won’t ask me about my knee pain</span>.”<br>
 <br>
</div>
<input type="radio" name="q4" value="1">① I’d like to chat with the post office staff</input><br>
<input type="radio" name="q4" value="2">② I don’t want to be examined by a machine</input><br>
<input type="radio" name="q4" value="3">③ my knee hurts, and I can’t get to the machine</input><br>
<input type="radio" name="q4" value="4">④ there is a record of my knee pain in the machine</input><br>
<input type="radio" name="q4" value="5">⑤ it’s cheaper to buy stamps from the post office staff<br>
 <br>
5. 다음 글의 요지로 가장 적절한 것은?<br>
<div class="q_body">
Parents choose different toys for their children based on their gender, with toys for girls and boys fostering different skills. Girls are given more dolls and household items, which encourage passivity and reinforce women’s domestic and caring role in society. Conversely, boys are given more tools, trucks, cars, and sport-related toys, which encourage creation, aggression, and competition, and emphasize men’s dominant role in society. Studies on gender stereotyping and toys show that toys for boys and girls of all ages are stereotyped according to gender, though this is somewhat less true among toys for infants and toddlers. Regardless, when parents and other family members give girls and boys different types of toys to play with, they are also giving them messages about appropriate gender play.<br>
 <br>
</div>
<input type="radio" name="q5" value="1">① 장난감이 성별에 따른 역할을 강화시킬 수 있다.</input><br>
<input type="radio" name="q5" value="2">② 어린이의 발달 단계에 맞는 장난감을 주어야 한다.</input><br>
<input type="radio" name="q5" value="3">③ 어린이들은 성별에 따라 선호하는 장난감이 다르다.</input><br>
<input type="radio" name="q5" value="4">④ 어린이들이 스스로 장난감을 선택할 수 있게 해야 한다.</input><br>
<input type="radio" name="q5" value="5">⑤ 다양한 종류의 장난감을 갖고 놀수록 창의성이 신장된다.<br>
 <br>
6. 다음 글의 주제로 가장 적절한 것은?<br>
<div class="q_body">
People say, “If it tastes good, it must be bad for you.” So, when the zero-calorie artificial sweetener called saccharin first appeared on the market, many thought it too good to be true. But saccharin is indigestible and therefore, unlike sugar, can’t be absorbed by the body and converted into fat. Likewise, it cannot cause tooth decay, since the bacteria that cause the decay cannot digest it. One study showed that saccharin causes bladder cancer in rats, which led to widespread fear. But the study was disproved when it was revealed that the rats had received doses of saccharin equal to humans drinking 100 cans of diet soda every day for their entire lives.<br>
<p style="text-align: right;">*bladder: 방광</p><br>
</div>
<input type="radio" name="q6" value="1">① process used to develop artificial sweeteners</input><br>
<input type="radio" name="q6" value="2">② harmful effects of saccharin on people’s health</input><br>
<input type="radio" name="q6" value="3">③ misconceptions and knowledge about saccharin</input><br>
<input type="radio" name="q6" value="4">④ difference between the use of saccharin and sugar</input><br>
<input type="radio" name="q6" value="5">⑤ recent expansion of variety in artificial sweeteners<br>
 <br>
7. 다음 글의 제목으로 가장 적절한 것은?<br>
<div class="q_body">
When on their own in coffee bars and other public places, many people now use their mobiles as “barrier signals” as an alternative to the traditional use of a newspaper or a magazine to signal unavailability and mark personal “territory.” Even when not in use, the mobile placed on the table acts as an effective symbolic bodyguard, a protector against unwanted social contact: people will touch the phone or pick it up when a potential “intruder” approaches. The idea of one’s social support network of friends and family being somehow “inside” the mobile phone means that even just touching or holding the phone gives a sense of being protected ― and sends a signal to others that one is not alone and vulnerable.<br>
 <br>
</div>
<input type="radio" name="q7" value="1">① The Dark Side of Modern Technology</input><br>
<input type="radio" name="q7" value="2">② We Always Want to Stay Connected</input><br>
<input type="radio" name="q7" value="3">③ Mobile Phones: The Modern Fence</input><br>
<input type="radio" name="q7" value="4">④ Emerging Rules Regarding Phone Use</input><br>
<input type="radio" name="q7" value="5">⑤ Competition in Teenage Mobile Phone Use<br>
 <br>
8. 다음 도표의 내용과 일치하지 <span style="text-decoration: underline;">않는</span> 것은?<br>
<div class="q_body">
<img src="../../../../resources/img/user/q8.png">
<br>
The IUCN (International Union for Conservation of Nature and Natural Resources) created the standard for sorting animal species threatened with extinction into three categories of severity: ‘vulnerable,’ ‘endangered,’ and ‘critically endangered.’ The above graph shows the number of species in each class in Africa.
</div><br>
<input type="radio" name="q8" value="1">① Out of 289 threatened mammals in Africa, equal numbers are listed as endangered and critically endangered, 63 species for each. </input><br>
<input type="radio" name="q8" value="2">② Birds make up the second largest class in this graph with 37 of the 207 total threatened bird species listed as critically endangered. </input><br>
<input type="radio" name="q8" value="3">③ The third largest out of all five classes consists of 31 threatened African reptiles, 2 of which are critically endangered. </input><br>
<input type="radio" name="q8" value="4">④ The number of threatened amphibians is less than half the number of threatened reptiles, and none of them are critically endangered. </input><br>
<input type="radio" name="q8" value="5">⑤ In the class of fish, critically endangered species make up a larger portion than endangered species or vulnerable species.<br>
 <br>
9. Martin Handford에 관한 다음 글의 내용과 일치하지 <span style="text-decoration: underline;">않는</span> 것은?<br>
<div class="q_body">
Martin Handford, who was born in London in 1939, is an English children’s book author and illustrator. He began drawing when he was around 4 years old and later got his inspiration from the toy soldiers he played with during his childhood. After graduating from university, Martin worked as a freelance illustrator, specializing in drawing crowd scenes for numerous clients. In 1986, Handford was asked by his art director to come up with a unique character to place in his pictures. After much thinking, he invented a character named “Wally,” a backpacking tourist who would appear in each location and always dresses in red and white, and published a book. He went on to publish seven more Where’s Wally?books, and Wally is licensed in at least 17 countries. His Where’s Wally?series was a huge success, so he became famous all over the world in the mid-1980s.<br>
 <br>
</div>
<input type="radio" name="q9" value="1">① 런던 출신의 동화 작가이자 삽화가이다.</input><br>
<input type="radio" name="q9" value="2">② 어린 시절의 장난감 병정에서 그림에 대한 영감을 얻었다.</input><br>
<input type="radio" name="q9" value="3">③ 대학 졸업 후, 군중 장면을 전문으로 그리는 프리랜서로 일했다.</input><br>
<input type="radio" name="q9" value="4">④ 총 일곱 권의 Where’s Wally?시리즈를 출판했다.</input><br>
<input type="radio" name="q9" value="5">⑤ 1980년대 중반에 전 세계적인 유명세를 얻었다.<br>
 <br>
10. Homecoming Festival에 관한 다음 안내문의 내용과 일치하지 <span style="text-decoration: underline;">않는</span> 것은?
<div class="q_body textbox">

<p style="text-align: center; font-weight: bold;">Homecoming Festival</p>
The Alumni Association would like to extend a special invitation to all alumni, the community, students, faculty and staff to attend this year’s Homecoming Festival from 3 to 6 p.m., Saturday, Oct. 7 at the Alumni Center.<br>
<br>
<span style="font-weight: bold;">The Homecoming Festival will include:</span><br>
• An outdoor BBQ<br>
• Live music and entertainment<br>
• Kids Zone with face painting, a bounce house, games and more<br>
• Alumni Village featuring booths representing various colleges, departments, and campus programs<br>
 <br>
 <span style="font-weight: bold;">There’s more...</span><br>
The first 200 people to attend will receive a new logo gift for free.<br>
 <br>
 <span style="font-weight: bold;">Reunion year?</span><br>
If you’re an alumnus of the classes of 1976, 1991, 1996 or 2006, you’re eligible for a reunion package which includes a special gift and complimentary food tickets for two.
<br>
 <br>
</div>
<input type="radio" name="q10" value="1">① 졸업생들뿐만 아니라 지역 주민들도 참가할 수 있다.</input><br>
<input type="radio" name="q10" value="2">② 아이들을 위한 행사도 준비되어 있다.</input><br>
<input type="radio" name="q10" value="3">③ 각 학부를 상징하는 부스가 세워질 예정이다.</input><br>
<input type="radio" name="q10" value="4">④ 선착순 200명에게 새로운 로고가 무료로 제공된다.</input><br>
<input type="radio" name="q10" value="5">⑤ 모든 졸업생은 무료 식사권을 받을 수 있다.<br>
 <br>
11. Behind-the-Scenes Tour에 관한 다음 안내문의 내용과 일치하는 것은?<br>
<div class="q_body textbox">
<p style="text-align: center; font-weight: bold;">Behind-the-Scenes Tour</p>
Don’t miss your chance to get close to the aquarium’s sharks. Explore behind-the-scenes shark areas with an expert and discover the truth about these<br>
incredible ocean predators.<br>
<br>
<span style="font-weight: bold;">Activities</span><br>
• Walk on the feeding bridge, where sharks swim silently just inches beneath you<br>
• Learn how aquarium staff cares for sharks<br>
• Visit the food prep area to learn how diets are planned and monitored<br>
<br>
<span style="font-weight: bold;">Price</span><br>
Adult $33<br>
Senior (65+) $30<br>
Child (8-11) $41<br>
• Children ages 8 and up are welcome with an accompanying adult.<br>
• Price includes aquarium admission, a guided tour with access to behind-the-scenes areas, and an aquarium souvenir.<br>
<br>
For questions or to make a reservation, contact Central Reservations Monday through Friday, between 9 a.m.-4:30 p.m. at 410-573-3344.<br>

<br>
</div>
<input type="radio" name="q11" value="1">① 상어에게 직접 먹이를 줄 수 있다.</input><br>
<input type="radio" name="q11" value="2">② 먹이 준비하는 곳을 방문할 수 있다.</input><br>
<input type="radio" name="q11" value="3">③ 8세 미만의 어린이는 어른과 동반해야 한다.</input><br>
<input type="radio" name="q11" value="4">④ 수족관 기념품은 개별적으로 구매해야 한다.</input><br>
<input type="radio" name="q11" value="5">⑤ 전화 문의와 예약은 평일 오후에만 가능하다.<br>
 <br>
12. 다음 글의 밑줄 친 부분 중, 어법상 <span style="text-decoration: underline;">틀린</span> 것은? [3점]<br>
<div class="q_body">
As keeping fit has become a way of life, a large number of people now regularly <input type="radio" name="q12" value="1">① <span style="text-decoration: underline;">work out</span></input> at fitness centers ─ doing weight training, running on the treadmills, riding the bikes, or using the cross-training machines. And long-distance marathons have become <input type="radio" name="q12" value="2">② <span style="text-decoration: underline;">so</span></input> popular that organizers often have to limit the number of people who can participate. In the States, the Boston and New York marathons are the most famous, but there are plenty of others held in other cities and even in small towns, <input type="radio" name="q12" value="3">③ <span style="text-decoration: underline;">drawn</span></input> many thousands of participants. <input type="radio" name="q12" value="4">④ <span style="text-decoration: underline;">Few</span></input> of the runners in marathons expect to win; most just aim to finish. Most marathons are open to anyone who wants to race, young and old <input type="radio" name="q12" value="5">⑤ <span style="text-decoration: underline;">alike</span></input>, and even people in wheelchairs.<br>
 <br>
</div>
13. 다음 글의 밑줄 친 부분 중, 문맥상 낱말의 쓰임이 적절하지 <span style="text-decoration: underline;">않은</span> 것은? [3점]<br>
<div class="q_body">
Considering its relatively small size, England has a <input type="radio" name="q13" value="1">① <span style="text-decoration: underline;">huge</span></input> number of important historical sites, including 28 UNESCO World Heritage Sites. What about the many sites that don’t have World Heritage protection? Construction companies planning any major work in England have to <input type="radio" name="q13" value="2">② <span style="text-decoration: underline;">follow</span></input> the “polluter pays” principle, whose purpose is to protect any sites that archaeologists have not yet had the chance to study. The principle views any company that plans to build in <input type="radio" name="q13" value="3">③ <span style="text-decoration: underline;">developed</span></input> areas as a polluter. It says that construction companies must pay an archaeologist to examine a site <input type="radio" name="q13" value="4">④ <span style="text-decoration: underline;">prior</span></input> to development. It aims to ensure that nothing of historical importance will be <input type="radio" name="q13" value="5">⑤ <span style="text-decoration: underline;">destroyed</span></input> by new buildings and constructions.<br>
 <br>
</div>
14. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
The pioneering psychologist Jean Piaget spent much of his career with children: listening to them, watching them, writing about them, and studying the work of international psychologists who were doing the same. He observed that children don’t think like adults at all. For example, very young children often believe that the moon follows them and that dreams come in through windows at night. Their sense of justice, observed Piaget, is also rather __________ since it takes into account only the damage caused, and not the intention of the one who caused it. This is why a girl who breaks three teacups while helping her mother would think she deserves more punishment than if she were to break just one teacup in anger. [3점]<br>
 <br>
</div>
<input type="radio" name="q14" value="1">① complex </input><br>
<input type="radio" name="q14" value="2">② primitive</input><br>
<input type="radio" name="q14" value="3">③ unconditional </input><br>
<input type="radio" name="q14" value="4">④ prominent</input><br>
<input type="radio" name="q14" value="5">⑤ sufficient<br>
 <br>
15. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
One of the great masters of __________ was the graphic artist M. C. Escher, who apparently practiced this skill daily. According to his son, George Escher, “The wall in the small downstairs washroom was decorated with irregular swirls of green, yellow, red and brown. Father would take a pencil and emphasize a line here, a shade there, and find a face ‘laughing, sad, or serious.’ Over the course of many months the wall ‘came alive with faces.’ He also enjoyed identifying animal shapes in seemingly random forms like clouds or wood grain!” When we look at his interlocking animals, we realize that no matter how complicated the figures, there is always a simple, repeating symmetrical form underneath. Escher’s genius was to see in a regular, repeating polygon the possibility of fish, birds, lizards, angels, devils, and other unexpected surprises ― and to teach us how to see these things, too. [3점]<br>
<p style="text-align: right;">*interlock: 서로 맞물리다 **polygon: 다변형, 다각형</p><br>
 <br>
</div>
<input type="radio" name="q15" value="1">① fantasy arts </input><br>
<input type="radio" name="q15" value="2">② instant insight</input><br>
<input type="radio" name="q15" value="3">③ selective attention </input><br>
<input type="radio" name="q15" value="4">④ pattern recognition</input><br>
<input type="radio" name="q15" value="5">⑤ mathematical accuracy<br>
 <br>
16. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
Bathing was rare in seventeenth-century Europe. Even the very wealthy took a bath just a few times a year. Unwashed hair stinks and attracts lice and bugs, so people cut it short and covered it with cloth or a wig. The wealthy bought fashionable wigs made of wool and silk, and the fashion was for ever-bigger, increasingly costly wigs. The more important you were ― or considered yourself ― the bigger your wig. Some wigs were so big they looked like small cows sitting on people’s heads. This is where we got the word “bigwig,” which is an expression that makes fun of __________. Don’t say “you’re a bigwig” to a person you think is a bigwig. Only say it to friends, behind the bigwig’s back. [3점]<br>
<p style="text-align: right;">*lice: 이, 머릿니</p><br>
</div>
<input type="radio" name="q16" value="1">① those who have more than you</input><br>
<input type="radio" name="q16" value="2">② someone who wears an ugly wig</input><br>
<input type="radio" name="q16" value="3">③ someone who has little or no hair</input><br>
<input type="radio" name="q16" value="4">④ people who think they’re important</input><br>
<input type="radio" name="q16" value="5">⑤ people who say bad things about you<br>
 <br>
17. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
Scientists have estimated that there is a 1 in 38 chance that an asteroid will collide with Earth in 2029. This is obviously some cause for concern. Luckily, scientists have developed a strategy for avoiding a crash. Rather than destroy the asteroid and risk its pieces falling down on Earth, the strategy aims __________. Using a nuclear-powered engine that consumes very little fuel, a spacecraft would travel beside the asteroid for several years. Because of the force of gravity, the spacecraft’s mass would pull on the asteroid. The force would be weak, but since there is no resistance in space, the asteroid would be safely moved off its course over many years. [3점]<br>
<p style="text-align: right;">*mass: 질량</p><br>
</div>
<input type="radio" name="q17" value="1">① to burn it up in the atmosphere</input><br>
<input type="radio" name="q17" value="2">② to gradually change the asteroid’s direction</input><br>
<input type="radio" name="q17" value="3">③ to alter its orbit by exploding nuclear bombs</input><br>
<input type="radio" name="q17" value="4">④ to block its path by colliding a spacecraft with the asteroid</input><br>
<input type="radio" name="q17" value="5">⑤ to change its speed so that it doesn’t collide with the Earth<br>
 <br>
18. 다음 글에서 전체 흐름과 관계 <span style="text-decoration: underline;">없는</span> 문장은?<br>
<div class="q_body">
Movies can deepen your knowledge of history. How else can you fully comprehend, say, a lecture about the Black Death in Europe in the 1300s, unless you have some lifelike images of it in your head? 
<input type="radio" name="q18" value="1">① Your textbook may have maps and illustrations to help you understand the disease. </input>
<input type="radio" name="q18" value="2">② Your lecturer may be a great storyteller who manages to convey a feeling of what it was like to be alive back then. </input>
<input type="radio" name="q18" value="3">③ But if you were to see The Seventh Seal, a classic film by the Swedish director Ingmar Bergman, you would have a much more powerful sense of the historical period. </input>
<input type="radio" name="q18" value="4">④ Watching movies can be a great way to balance study with leisure. </input>
<input type="radio" name="q18" value="5">⑤ With all of the great historical movies that have been made, it would be difficult to get more vivid representations of the past anywhere else.<br>
<p style="text-align: right;">*the Black Death: 흑사병</p><br>
 <br>
</div>
19. 주어진 글 다음에 이어질 글의 순서로 가장 적절한 것을 고르시오.<br>
<div class="q_body textbox">
It is easy to say “I should be saving more” (or studying more, exercising more, spending more time with family and friends, etc.) ― but our actions say more about us than our words do.
</div>
<div class="q_body">
(A) Furthermore, when people say, “I should be doing [A, B, C...] more,” it’s generally understood to mean, “I’m open to suggestions, advice, strategies, or anything that will motivate me to get started.” <br>
 <br>
(B) However, it can be a meaningful way to be a better person to make such “should” statements. Lots of people make New Year’s Resolutions to eat better and exercise more, but few say they hope to start smoking or to watch more TV.<br>
 <br>
(C) And it’s probably true that few people who say they should be saving more money or whatever actually make any changes in their habits.<br>
 <br>
</div>
<input type="radio" name="q19" value="1">① (A) ― (C) ― (B) </input><br>
<input type="radio" name="q19" value="2">② (B) ― (A) ― (C)</input><br>
<input type="radio" name="q19" value="3">③ (B) ― (C) ― (A) </input><br>
<input type="radio" name="q19" value="4">④ (C) ― (A) ― (B)</input><br>
<input type="radio" name="q19" value="5">⑤ (C) ― (B) ― (A)<br>
 <br>
20. 주어진 글 다음에 이어질 글의 순서로 가장 적절한 것을 고르시오.<br>
<div class="q_body textbox">
The gestures birds make when they put dust on their feathers and then shake themselves and arrange their feathers with their beaks look like the movements they make when bathing in water.
</div>
<div class="q_body">
<br>
(A) A bird bathing in dust is much like you rubbing your hands with sand to get dust and dirt off. The rough dust helps the birds to get rid of the bugs.<br>
 <br>
(B) Other than that, there’s a theory that birds may do it for another reason: to keep their feathers fluffy by removing excess oil and water. But there’s no convincing evidence to support that theory yet.<br>
 <br>
(C) But the purpose isn’t quite the same. Birds take dust baths to rid themselves of parasites that crawl in their feathers. Lice and mites are common problems for birds and there can be very many of them in feathers.<br>
<p style="text-align: right;">*mite: 진드기</p><br>
</div>
<input type="radio" name="q20" value="1">① (A) ― (C) ― (B) </input><br>
<input type="radio" name="q20" value="2">② (B) ― (A) ― (C)</input><br>
<input type="radio" name="q20" value="3">③ (B) ― (C) ― (A) </input><br>
<input type="radio" name="q20" value="4">④ (C) ― (A) ― (B)</input><br>
<input type="radio" name="q20" value="5">⑤ (C) ― (B) ― (A)<br>
 <br>
21. 글의 흐름으로 보아, 주어진 문장이 들어가기에 가장 적절한 곳을 고르시오.<br>
<div class="q_body textbox">
It was in such high demand that whenever a fresh shipment of it arrived from Cyrene, people would line up and pay huge prices.
</div>
<div class="q_body">
<br>
The ancient Libyan city of Cyrene was famed for silphium, a plant highly prized by the ancient Greeks and Romans alike. ( 
<input type="radio" name="q21" value="1">① ) The ancients ate silphium fresh, like lettuce, and added it to soups and stews for its strong and spicy flavor. ( </input>
<input type="radio" name="q21" value="2">② ) The plant was also highly demanded for treating a wide range of problems, from stomach pain to bad breath. ( </input>
<input type="radio" name="q21" value="3">③ ) It also had a very pleasant smell, which made it an essential component of various perfumes. ( </input>
<input type="radio" name="q21" value="4">④ ) Unfortunately, the great profits that could be made tempted the Cyrenians to harvest silphium before it could seed. ( </input>
<input type="radio" name="q21" value="5">⑤ ) That’s the reason why this amazing plant was extinct by 100 A.D.<br>
 <br>
22. 글의 흐름으로 보아, 주어진 문장이 들어가기에 가장 적절한 곳을 고르시오.<br>
<div class="q_body textbox">
For example, after marinating raw meat in a dish, don’t put the meat back in the same dish after cooking it.
</div>
<div class="q_body">
<br>
Meat, poultry, and fish demand special handling because they often have high levels of bacteria. ( 
<input type="radio" name="q22" value="1">① ) Additionally, they provide a moist, nutritious environment ― ideal for microbial growth. ( </input>
<input type="radio" name="q22" value="2">② ) Wash anything that has been in contact with such foods to prevent cross-contamination. ( </input>
<input type="radio" name="q22" value="3">③ ) Wash it in hot, soapy water before reusing it; otherwise, the bacteria inevitably remaining in the dish from the raw meat can contaminate and grow in the cooked product or other food ― a classic example of cross-contamination. ( </input>
<input type="radio" name="q22" value="4">④ ) Likewise, wash a cutting board (and your hands) after, say, skinning chicken on it. ( </input>
<input type="radio" name="q22" value="5">⑤ ) If you don’t, and you use the contaminated board to cut up raw vegetables for a salad, the vegetables can be contaminated by bacteria from the poultry.<br>
<p style="text-align: right;">*marinate: (고기를) 양념장에 재우다 **microbial: 세균의</p><br>
 <br>
23. 다음 글의 내용을 한 문장으로 요약하고자 한다. 빈칸 (A), (B)에 들어갈 말로 가장 적절한 것은?<br>
<div class="q_body textbox">
  Norman Triplett of Indiana University conducted dozens of experiments in the field of social psychology. In the experiments, he pushed cyclists to ride as fast as they could on stationary bikes, occasionally leaving them alone in the lab and free from distraction, at other times pacing them against a motor-driven cycle, and sometimes asking them to ride in the presence of other cyclists. Across his observations, Triplett noticed that one cyclist rode a mile in 2 minutes 32 seconds when alone, but managed to ride the same mile in 2 minutes 37 seconds when he was riding with four pacing cyclists; similarly, he rode ten miles in 33 minutes 17 seconds while riding alone, but rode the same distance two minutes faster when riding with several pacers.
</div>
<p style="text-align: center;">=></p>
<div class="q_body textbox">
  According to the experiments, cyclists tend to exert ____<span style="text-decoration: underline;">(A)</span>____ effort when they’re in the ____<span style="text-decoration: underline;">(B)</span>____ of others.
</div>
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(A)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(B)<br>
<input type="radio" name="q23" value="1">① less …………… care</input><br>
<input type="radio" name="q23" value="2">② less …………… company</input><br>
<input type="radio" name="q23" value="3">③ unexpected … absence</input><br>
<input type="radio" name="q23" value="4">④ more …………… company</input><br>
<input type="radio" name="q23" value="5">⑤ more …………… care<br>
 <br>
 <div class="q_body">
* 다음 글을 읽고, 물음에 답하시오.<br>
When you let somebody down, or when things don’t go the way you wanted them to go, it’s very tempting to “point the finger” at someone or something else. When you’re late for an appointment, for instance, it’s easy to say, “It wasn’t my fault; the traffic was a nightmare!” But once you get into the habit of blaming other people or situations for things that go wrong, you lose your power over your own outcomes. <br>
You can take charge of your circumstances and what happens in your life when you stop searching for targets to blame and start focusing on __________. This is how winners think. If you are often late because of traffic, then maybe you should try more efficient ways of getting around. Or you might consider leaving much earlier for appointments, allowing time for unexpected delays. This is what being a winner is all about: putting your mind and talents to work to make you more successful no matter what happens. Winners don’t have fewer problems in life; they deal with as many difficulties as anybody else. They are just better at using problems as challenges and as opportunities to learn and act smarter next time. So stop looking around to find fault. Step up and say, “I can solve this problem; this problem is mine!” ─ and then use it as a stepping-stone to success.<br>
</div>
 <br>
24. 윗글의 제목으로 가장 적절한 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q24" value="1">① Take Control to Create Your Own Success</input><br>
<input type="radio" name="q24" value="2">② Think Like a Winner: Gain Power over Others</input><br>
<input type="radio" name="q24" value="3">③ Why Blaming Others Cannot Fix Your Problems</input><br>
<input type="radio" name="q24" value="4">④ Don’t Be Hard on Yourself, Start Loving Yourself</input><br>
<input type="radio" name="q24" value="5">⑤ How to Succeed in Life: Win More and Lose Less<br>
 <br>
25. 윗글의 빈칸에 들어갈 말로 가장 적절한 것은? [3점]<br>
<div class="q_body">
</div>
<input type="radio" name="q25" value="1">① who looks like a winner</input><br>
<input type="radio" name="q25" value="2">② what you really want now</input><br>
<input type="radio" name="q25" value="3">③ what others expect of you</input><br>
<input type="radio" name="q25" value="4">④ how you can remedy the problem</input><br>
<input type="radio" name="q25" value="5">⑤ how you can use evidence for support<br>
 <br>
* 다음 글을 읽고, 물음에 답하시오.<br>
<div class="q_body">
<p style="text-align: center;">(A)</p>
A man was driving his car when he saw an old lady, stranded on the side of the road in the countryside. So he stopped his car and got out. He could tell she was frightened, so he tried to calm her, “I’m here to help you, don’t worry. My name is Bryan Anderson.” Her tire was flat, so he had to crawl under the car. When the job was finished, she asked how much she owed him for his help. Smiling, Bryan said, “If you really want to pay me back, the next time you see someone in need, give that person the needed assistance.”<br>
<p style="text-align: right;">*stranded: 오도 가도 못하는</p>
<p style="text-align: center;">(B)</p>
The lady had finished her meal and paid with a hundred dollar bill. The waitress left to get change and when she came back, the lady was gone. The waitress wondered where <span style="text-decoration: underline;">(a)</span> shecould be. Then she noticed something written on the napkin. It said, “You don’t owe me anything. Somebody once helped me, just like now I’m helping you.” The waitress discovered four more $100 bills under the napkin.<br>
<p style="text-align: center;">(C)</p>
That night the waitress came home early. She was thinking about the lady and the money <span style="text-decoration: underline;">(b)</span> sheleft. How could the lady have known how badly she and her husband needed it? With the baby due next month, money was going to be tight. <span style="text-decoration: underline;">(c)</span> Sheknew that her husband worried about that, so she was glad to tell him the good news. Then she kissed him and whispered, “I love you, Bryan Anderson.”<br>
<p style="text-align: center;">(D)</p>
A few miles down the road the lady spotted a small cafe. She went in to grab a bite to eat. The cafe was dingy. Then <span style="text-decoration: underline;">(d)</span> shesaw a waitress, nearly eight months pregnant. The waitress had a sweet, friendly smile, even though she had spent the entire day on her feet. The old lady wondered how someone who had so little could be so caring toward a stranger. Then <span style="text-decoration: underline;">(e)</span> sheremembered Bryan.<br>
<p style="text-align: right;">*dingy: (장소가) 초라한</p>
</div>
 <br>
26. 주어진 글 (A)에 이어질 내용을 순서에 맞게 배열한 것으로 가장 적절한 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q26" value="1">① (B) ─ (D) ─ (C) </input><br>
<input type="radio" name="q26" value="2">② (C) ─ (B) ─ (D)</input><br>
<input type="radio" name="q26" value="3">③ (C) ─ (D) ─ (B) </input><br>
<input type="radio" name="q26" value="4">④ (D) ─ (B) ─ (C)</input><br>
<input type="radio" name="q26" value="5">⑤ (D) ─ (C) ─ (B)<br>
 <br>
27. 밑줄 친 (a) ~ (e) 중에서 가리키는 대상이 나머지 넷과 다른것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q27" value="1">① (a) </input><br>
<input type="radio" name="q27" value="2">② (b) </input><br>
<input type="radio" name="q27" value="3">③ (c) </input><br>
<input type="radio" name="q27" value="4">④ (d) </input><br>
<input type="radio" name="q27" value="5">⑤ (e)<br>
 <br>
28. 윗글에 관한 내용으로 적절하지 <span style="text-decoration: underline;">않은</span> 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q28" value="1">① 남자는 노부인을 안심시키려고 자기 이름을 알려주었다.</input><br>
<input type="radio" name="q28" value="2">② 노부인이 수고비를 주려고 했지만 남자는 받지 않았다.</input><br>
<input type="radio" name="q28" value="3">③ 노부인은 종업원과 인사를 나누고 카페를 떠났다.</input><br>
<input type="radio" name="q28" value="4">④ 카페 종업원의 남편이 노부인의 차를 고쳐주었다.</input><br>
<input type="radio" name="q28" value="5">⑤ 노부인은 카페 종업원의 친절에 감동했다.<br>
 <br>
 <br>
 <br>
 <br>
 <br>
------------------<br>
29. 다음 글의 목적으로 가장 적절한 것은?<br>
<div class="q_body">
Dear Mr. Richardson,<br>
I was delighted to have the opportunity to meet you in person during your visit to our college for the second Presidential Public Leadership Program. As chair of the Committee for the Restoration of Roosevelt House, I wish to express our great pleasure at the success of the program and the recognition it has brought to Hunters and the Campaign, another organization involved in the restoration of Roosevelt House. The program was an experience, I am sure, that the students will reflect upon as they make their career and life choices. On behalf of all of the staff and students of our college, I want to express to you our tremendous appreciation.<br>
Regards,<br>
Billy Wright<br>
 <br>
</div>
<input type="radio" name="q29" value="1">① 대학의 재정 지원을 요청하려고</input><br>
<input type="radio" name="q29" value="2">② Roosevelt의 업적을 설명하려고</input><br>
<input type="radio" name="q29" value="3">③ Roosevelt 추모 단체를 소개하려고</input><br>
<input type="radio" name="q29" value="4">④ 리더십 프로그램의 성공에 대해 감사하려고</input><br>
<input type="radio" name="q29" value="5">⑤ Roosevelt 생가 복원 프로그램을 홍보하려고<br>
 <br>
30. 다음 글에 드러난 Chad의 심경 변화로 가장 적절한 것은?<br>
<div class="q_body">
Chad sat on the edge of his bed lazily bouncing a ball off his bedroom wall. His dream of going to college to play football was no longer a possibility. Doctors had told him he wouldn’t be able to play again for at least six months. He sighed and looked out the window at unending gray skies. “Why me?” he thought, as his father walked into his room. Chad’s father had always seemed indifferent to him, so he didn’t expect what happened next. His father sat down beside him, put his arm around him, and told him about the end of his own sports career many years before. This was a side of his father he’d never seen before, and he felt a warmth inside him from being trusted with this story. If his own father suffered through a similar situation and became the strong man he knew today, perhaps Chad would be okay, too.<br>
 <br>
</div>
<input type="radio" name="q30" value="1">① relaxed & confused</input><br>
<input type="radio" name="q30" value="2">② depressed & romantic</input><br>
<input type="radio" name="q30" value="3">③ anxious & excited</input><br>
<input type="radio" name="q30" value="4">④ amused & sorrowful</input><br>
<input type="radio" name="q30" value="5">⑤ gloomy & comforted<br>
 <br>
31. 다음 글에서 필자가 주장하는 바로 가장 적절한 것은?<br>
<div class="q_body">
Many people are uncomfortable asking others not to do something, so when something upsets them, they let anger build up inside of them. Then, if they do speak, they sound unnecessarily angry and often direct their anger at the wrong person. It is much better to speak your feelings clearly and calmly right away, and to the right person. For example, if you are a nonsmoker and someone near you lights a cigarette, ask them politely not to smoke near you. Don’t sit there suffering and getting angry, and don’t go complaining to a friend about how much you hate smokers. The smoker may have been completely unaware of your discomfort. Don’t let other people’s ignorance and inconsiderateness cause you to suffer, and don’t complain to people who can’t fix the problem.<br>
 <br>
</div>
<input type="radio" name="q31" value="1">① 상대방에게 배려를 강요하지 말아야 한다.</input><br>
<input type="radio" name="q31" value="2">② 분노의 감정은 시간을 두고 다스려야 한다.</input><br>
<input type="radio" name="q31" value="3">③ 다른 사람에게 불쾌감을 주는 행동을 삼가야 한다.</input><br>
<input type="radio" name="q31" value="4">④ 불편한 감정을 억누르지 말고 즉시 표현해야 한다.</input><br>
<input type="radio" name="q31" value="5">⑤ 감정을 효과적으로 표현하는 데는 훈련이 필요하다.<br>
 <br>
32. 밑줄 친 <span style="text-decoration: underline;">one hard and fast rule</span>이 다음 글에서 의미하는 바로 가장 적절한 것은?<br>
<div class="q_body">
Once upon a time, there was a teacher who declared that she would only read a paper for as long as it held her interest. As soon as a report became dull, she would stop reading and grade only the part she had read. If that meant reading only the first half, or the first quarter of the paper, then it was just too bad for the student. She used to say, “Attention spans are short! Nobody watches boring TV shows or listens to boring music. They’ll change to something interesting. Nobody reads boring writing! If you don’t hook your reader with your first few sentences, they are gone!” This teacher’s students avoided a boring topic and didn’t write in an old-fashioned style with a slow-moving plot. They became good writers. The reason is obvious. They were able to learn <span style="text-decoration: underline;">one hard and fast rule</span> from their teacher.<br>
 <br>
</div>
<input type="radio" name="q32" value="1">① Keep practicing if you want to get better at writing.</input><br>
<input type="radio" name="q32" value="2">② Maintain your readers’ attention from the start to the end.</input><br>
<input type="radio" name="q32" value="3">③ Say what you are going to say in a clear and concise way.</input><br>
<input type="radio" name="q32" value="4">④ Find someone who will give honest feedback on your writing.</input><br>
<input type="radio" name="q32" value="5">⑤ Believe that if you write it, your reader will read it with interest.<br>
 <br>
33. 다음 글의 요지로 가장 적절한 것은?<br>
<div class="q_body">
When the boat overturns a mile out to sea, optimism about one’s ability to swim to shore is deadly. When deciding whether to invade a foreign country, optimism about receiving a warm welcome can result in a catastrophe that changes the whole course of history for the worse. The tendency to view optimism as superior to pessimism is a deep-rooted illusion. Optimism is useful in favorable situations, but pessimism is useful in dangerous situations. For the fortunate, life now is vastly safer and more secure than it once was, so pessimism is less necessary. But unintended consequences of blocking pessimism are likely. The world will be better in many ways and worse in others that are hard to predict. Thus, pessimism is not a problem, but a useful emotional state.<br>
 <br>
</div>
<input type="radio" name="q33" value="1">① 낙관주의는 역경을 견디는 동기를 부여한다.</input><br>
<input type="radio" name="q33" value="2">② 어려운 상황에서는 비관주의가 더 유용하다.</input><br>
<input type="radio" name="q33" value="3">③ 낙관주의는 성공 가능성을 과대평가하기 쉽다.</input><br>
<input type="radio" name="q33" value="4">④ 현실성 없는 비관주의는 문제 해결을 어렵게 한다.</input><br>
<input type="radio" name="q33" value="5">⑤ 낙관주의와 비관주의의 균형이 역사를 발전시킨다.<br>
 <br>
34. 다음 글의 주제로 가장 적절한 것은?<br>
<div class="q_body">
Although certain types of events (such as the loss of a loved one) are probably viewed as stressful in virtually all human societies, cultures vary greatly in the predominant forms of stress their people experience. Obviously, the challenges of daily living encountered in modern, western cities like Montreal or Philadelphia are quite different from the day-to-day difficulties experienced in indigenous societies in Africa or South America. Indeed, culture sets the context in which people experience and appraise stress. In some cases, a specific cultural group may be exposed to pervasive stress that is unique to that group. For example, the ethnic cleansing of Albanians in Kosovo in 1999 and the devastating and widespread destruction from the tsunami in Indonesia and regions of Southeast Asia in 2004 were extraordinary forms of stress distinctive to these societies.<br>
<p style="text-align: right;">*indigenous: 토착의</p><br>
</div>
<input type="radio" name="q34" value="1">① influences of culture on sources of stress</input><br>
<input type="radio" name="q34" value="2">② unrealistic desires for a stress-free society</input><br>
<input type="radio" name="q34" value="3">③ universal characteristics of stressful events</input><br>
<input type="radio" name="q34" value="4">④ solutions to the stress specific to each society</input><br>
<input type="radio" name="q34" value="5">⑤ stress responses irrespective of the cultural context<br>
 <br>
35. 다음 글의 제목으로 가장 적절한 것은?<br>
<div class="q_body">
According to some scientists, humans can thank their primate ancestors, at least in part, for the existence of war. During earlier stages of human evolution, aggressive behavior may have improved the odds of survival and become encoded in the genes of an increasing number of individuals. Ethologists and sociobiologists believe that aggressive tendencies may have been transmitted genetically from one generation to the next. One of the most famous advocates of this view is the ethologist Konrad Lorenz. Like other ethologists, Lorenz has directed his research toward the behavior of animals other than humans. From this work he has concluded that aggression is an instinct in humans, as it is in lower animals. Lorenz links aggression with territoriality. Just as animals defend their nests, burrows, and ranges, humans fight wars to defend their nations. It follows from this theory that because war stems from a natural urge, it is likely inevitable.<br>
*ethologist: 생태학자<br>
 <br>
</div>
<input type="radio" name="q35" value="1">① Is War in Our Genes?</input><br>
<input type="radio" name="q35" value="2">② The Golden Age of Peace</input><br>
<input type="radio" name="q35" value="3">③ Imagine a World Without War</input><br>
<input type="radio" name="q35" value="4">④ Transformations of Aggression</input><br>
<input type="radio" name="q35" value="5">⑤ Coping with Aggressive Behavior<br>
 <br>
36. 다음 도표의 내용과 일치하지 <span style="text-decoration: underline;">않는</span> 것은?<br>
<div class="q_body">
<img src="../../../../resources/img/user/q36.png">
<br>
The above chart compares the overall unemployment rates with the unemployment rates for workers aged 15-29 over a five-year period. For the entire period, youth unemployment rates were much higher than overall unemployment rates. </div>
<input type="radio" name="q36" value="1">① The overall unemployment rates ranged from 3.1% to 3.7%, while the youth unemployment rates ranged from 7.3% to 8.3%. </input><br>
<input type="radio" name="q36" value="2">② The overall unemployment rate reached a record high in 2014 and 2015 and dropped to 3.1% in 2017. </input><br>
<input type="radio" name="q36" value="3">③ Meanwhile, the youth unemployment rate hit a record high in 2014 before dropping to its lowest point in 2017. </input><br>
<input type="radio" name="q36" value="4">④ While there was no change in the overall unemployment rate between 2014 and 2015, the youth unemployment rate dropped by 0.3%p. </input><br>
<input type="radio" name="q36" value="5">⑤ Also, the gap between the two unemployment rates was greatest in 2017, and smallest in 2014.<br>
 <br>
37. James Hubert Blake에 관한 다음 글의 내용과 일치하지 <span style="text-decoration: underline;">않는</span> 것은?<br>
<div class="q_body">
James Hubert Blake was born in Baltimore in 1883 to ex-slaves, their eighth child and the only one who survived infancy. When Blake began music lessons at age five, his deeply religious mother insisted he would never play “ungodly music,” but he ignored her rule the minute he discovered ragtime. At age 15, without his mother’s knowledge, he began playing the piano for money. It was known that he first composed the melody to his famous “Charleston Rag” when he was just 12, but didn’t put it down on paper for another 16 years. At 32, he met the singer Noble Sissle and together, they wrote “It’s All Your Fault.” When Sophie Tucker, a famous singer and comedian, incorporated the song into her show, Blake and Sissle were instantly transformed into major songwriters.<br>
<p style="text-align: right;">*ragtime: 래그타임 ((빠른 박자의 재즈 음악))</p><br>
 <br>
</div>
<input type="radio" name="q37" value="1">① 노예였던 부모 사이에서 여덟째로 태어났다.</input><br>
<input type="radio" name="q37" value="2">② 어머니의 원칙을 깨고 대중 음악가가 되었다.</input><br>
<input type="radio" name="q37" value="3">③ 15세 때 피아노를 연주하여 돈을 벌었다.</input><br>
<input type="radio" name="q37" value="4">④ 처음 작곡한 곡을 16년 후에야 악보에 옮겼다.</input><br>
<input type="radio" name="q37" value="5">⑤ Sophie Tucker와 함께 부른 노래로 유명해졌다.<br>
 <br>
38. Adams Farm에 관한 다음 안내문의 내용과 일치하지 <span style="text-decoration: underline;">않는</span> 것은?
<div class="q_body textbox">
  <p style="font-weight: bold; text-align: center;">Adams Farm</p>
Dear Parents,<br>
We are excited that your child will be visiting our farm for a field trip very soon! Adams Farm is a 40 acre agri-entertainment farm. We want to invite you to join your child on the field trip if your schedule allows. The field trip will begin at 10:00 and end at approximately 1:15. Admission is $6 per person. Please come into The Adams Market upon arrival to pay your admission and receive your required wristband. <br>
 <br>
 <span style="font-weight: bold;">Helpful Info:</span><br>
Please make sure that everyone dresses for the weather as all activities are outdoors. Don’t forget to bring your camera!<br>
 <br>
Coupon: Bring this letter into The Adams Market and receive 25% off one item.<br>
 <br>
 <p style="text-align: center;">WE HOPE TO SEE YOU</p>
 <p style="text-align: center;">DOWN ON THE FARM!</p>
 
<br>
 <br>
</div>
<input type="radio" name="q38" value="1">① 체험학습은 약 3시간 15분간 진행된다.</input><br>
<input type="radio" name="q38" value="2">② 입장료는 1인당 6달러이다.</input><br>
<input type="radio" name="q38" value="3">③ 입장료를 내면 손목 밴드를 받는다.</input><br>
<input type="radio" name="q38" value="4">④ 모든 활동은 야외에서 이뤄진다.</input><br>
<input type="radio" name="q38" value="5">⑤ 이 안내문을 가져가면 입장료를 할인받는다.<br>
 <br>
39. Fresh Fountain Pump에 관한 다음 안내문의 내용과 일치하는 것은?<br>
<div class="q_body textbox">
  <p style="font-weight: bold; text-align: center;">Fresh Fountain Pump</p>
<br>
Like people, pets require water for good health. The Fresh Fountain Pump responds to your pet’s need for a continuous supply of fresh and clean drinking water.<br>
<br>
<span style="font-weight: bold;">CAUTION:</span><br>
THIS IS A PET DRINKING FOUNTAIN PUMP.<br>
<br>
• Do not use the pump in swimming pools or other situations where people are immersed.<br>
• This pump is suitable for use in water temperatures up to 35℃.<br>
• Do not use this pump with inflammable liquids.<br>
• Do not install or store the appliance where it will be exposed to temperatures below freezing. Shelter the pump from direct sunlight.<br>
• Do not allow the pump to run dry. The pump must be immersed in water completely.
<br>
</div>
<input type="radio" name="q39" value="1">① 반려동물용 수영장에 물을 공급하는 기구이다.</input><br>
<input type="radio" name="q39" value="2">② 사람들이 이용하는 수영장에도 사용할 수 있다.</input><br>
<input type="radio" name="q39" value="3">③ 35도 수온에서는 사용하기 적절하지 않다.</input><br>
<input type="radio" name="q39" value="4">④ 영하의 온도와 직사광선에 노출되지 않게 해야 한다.</input><br>
<input type="radio" name="q39" value="5">⑤ 펌프를 물에 반 정도 담가 사용하는 것이 좋다.<br>
 <br>
40. 다음 글의 밑줄 친 부분 중, 어법상 <span style="text-decoration: underline;">틀린</span> 것은? [3점]<br>
<div class="q_body">
The experiment I conducted in graduate school explored the problem of the single perspective. It was a pilot study to examine the effectiveness of different requests for help. A fellow investigator stood on a busy sidewalk and told people </div>
<input type="radio" name="q40" value="1">① <span style="text-decoration: underline;">passing</span> by that she had sprained her knee and needed help. If someone stopped, she asked him or her </input><br>
<input type="radio" name="q40" value="2">② <span style="text-decoration: underline;">to get</span> an ACE bandage from the nearby drugstore. I stood inside the store and listened while the helpful person gave the request to the pharmacist, who had agreed earlier to say that he was out of ACE bandages. After </input><br>
<input type="radio" name="q40" value="3">③ <span style="text-decoration: underline;">telling</span> this, not one subject, out of the twenty-five we studied, thought to ask if the pharmacist could recommend something else. People left the drugstore and returned empty-handed to the “victim” and told her the news. We speculated that </input><br>
<input type="radio" name="q40" value="4">④ <span style="text-decoration: underline;">had</span> she asked for less specific help, she might have received it. But, acting on the single thought </input><br>
<input type="radio" name="q40" value="5">⑤ <span style="text-decoration: underline;">that</span> a sprained knee needs an ACE bandage, no one tried to find other kinds of help.<br>
 <br>
41. 다음 글의 밑줄 친 부분 중, 문맥상 낱말의 쓰임이 적절하지 <span style="text-decoration: underline;">않은</span> 것은? [3점]<br>
<div class="q_body">
Human cognition depends on change and movement in order to
<input type="radio" name="q41" value="1">① <span style="text-decoration: underline;">function</span>. Evolution has built us this way. Try staring at a blank wall for several seconds without blinking, and you will find the image eventually bleaching until you can see nothing. The eye’s visual workings respond to movement and change. So, too, do the other parts of our cognitive systems. Feed them the same inputs successively and they </input>
<input type="radio" name="q41" value="2">② <span style="text-decoration: underline;">cease</span> to produce very much worth having as output. Like the shark in water, we need to keep moving or, cognitively, we die. Science, too, represents the greatest advertisement for our </input>
<input type="radio" name="q41" value="3">③ <span style="text-decoration: underline;">restless</span> natures. For as soon as a theory becomes the established orthodoxy, creative minds begin to explore the possibility that we must begin from completely different starting assumptions and seek </input>
<input type="radio" name="q41" value="4">④ <span style="text-decoration: underline;">novel</span> interpretations of the data. Without this constant movement to </input>
<input type="radio" name="q41" value="5">⑤ <span style="text-decoration: underline;">encourage</span> acceptance and stasis, we would not have the advances or excitements that fundamental science can provide.<br>
<p style="text-align: right;">*orthodoxy: 통설, 정설</p>
 <br>
</div>
42. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
One way the media reinforces the justifications for eating meat is through __________. How often have you seen media exposes on the violent treatment of farm animals and the corrupt practices of the slaughter industry? Compare this with the amount of coverage afforded to fluctuating gas prices or Hollywood fashion blunders. Most of us are more outraged over having to pay five cents more for a gallon of gas than over the fact that billions of animals, millions of humans, and the entire ecosystem are systematically exploited by an industry that profits from such unjustified violence. And most of us know more about what the stars wore to the Oscars than we do about the animals we eat. The ten billion animals that are killed every year for meat and the destructive consequences of contemporary animal agricultural practices remain conspicuously absent from public discourse. [3점]<br>
<p style="text-align: right;">*exposÉ: 폭로(기사)</p>
</div>
<input type="radio" name="q42" value="1">① simplification </input><br>
<input type="radio" name="q42" value="2">② omission</input><br>
<input type="radio" name="q42" value="3">③ overemphasis </input><br>
<input type="radio" name="q42" value="4">④ transparency</input><br>
<input type="radio" name="q42" value="5">⑤ generalization<br>
 <br>
43. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
When the average person tells a lie, he or she becomes emotionally aroused and begins to fidget. However, we fidget not only when we are telling a lie, but also when we are feeling uncomfortable. Fidgeting, however, will make an observer sense that something isn’t right or that you are lying about something. Consider the televised presidential debate between Richard Milhous Nixon and John Fitzgerald Kennedy, broadcast on September 25, 1960. Political experts speculate that Nixon’s nervous movements, which included mopping his brow on camera, lost him the election. When what you are saying really counts and you want people to believe that you are reliable and trustworthy, try to __________. [3점]<br>
 <br>
</div>
<input type="radio" name="q43" value="1">① detect the listener’s mood</input><br>
<input type="radio" name="q43" value="2">② reveal your true emotions</input><br>
<input type="radio" name="q43" value="3">③ avoid unnecessary movements</input><br>
<input type="radio" name="q43" value="4">④ talk about the things you know well</input><br>
<input type="radio" name="q43" value="5">⑤ make eye contact with your audience<br>
 <br>
44. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
The themes of nightmares __________. In the few studies that have been done across different cultures, the most common scenario involves the dreamer being pursued, attacked or facing imminent death. Other different scenarios may involve the thought of being in a shameful situation ─ being paralyzed during a school presentation or even being naked in public ─ or finding oneself not in the right place ─ being late for an important meeting or an exam. While the storylines show immense similarities across cultures, the people that appear in our nightmares are nevertheless as varied as we are. Police officers, schoolteachers, friends, family members, and unknown scary and faceless authority figures can pop in and out of our communities, neighborhoods, and houses. But in the end, while a nightmare’s characters, settings, and plot twists can vary infinitely, people all over the world seem to possess the same unconscious metaphors for fear, shame, loss, mortality, and so on. [3점]<br>
 <br>
</div>
<input type="radio" name="q44" value="1">① seem to be surprisingly universal</input><br>
<input type="radio" name="q44" value="2">② deal with very scary subject matter</input><br>
<input type="radio" name="q44" value="3">③ show how powerful people scare us</input><br>
<input type="radio" name="q44" value="4">④ explain each person’s specific needs</input><br>
<input type="radio" name="q44" value="5">⑤ present both great simplicity and complexity<br>
 <br>
45. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
In the future chatty people __________. Scientists from Korea have turned the main ingredient of calamine lotion into a tiny material that converts sound waves into electricity. The researchers explained that just as speakers transform electric signals into sound, the opposite process ─ turning sound into a source of electrical power ─ is possible. The research could lead to the manufacturing of small sound panels. After they collect energy from a phone call, these panels could be used to charge any electrical device, including the cell phone the person had been talking on. Not only could this technology be used to invent a self-charging cell phone, but it could also provide a boost of energy to the nation’s electrical grid through the placement of large sound-collecting and energy-generating panels on the nation’s busiest and noisiest roads. [3점]<br>
<p style="text-align: right;">*calamine lotion: 칼라민 로션 ((피부 질환 치료제))</p>
 <br>
</div>
<input type="radio" name="q45" value="1">① will care much more about energy conservation</input><br>
<input type="radio" name="q45" value="2">② could be the world’s next renewable energy source</input><br>
<input type="radio" name="q45" value="3">③ will be the biggest users of electricity in the country</input><br>
<input type="radio" name="q45" value="4">④ could aid researchers in developing communication technologies</input><br>
<input type="radio" name="q45" value="5">⑤ will want to have the most recently released electronic devices<br>
 <br>
46. 다음 글에서 전체 흐름과 관계 없는 문장은?<br>
<div class="q_body">
Facebook has added a new security feature to increase levels of privacy and security on the website for its millions of users worldwide.
<input type="radio" name="q46" value="1">① The change came after mass complaints and negative public opinion about the lack of privacy protection on the world’s biggest social networking site. </input>
<input type="radio" name="q46" value="2">② With the addition of this new feature, users now have the option of security that’s of a similar level to that of online banking websites. </input>
<input type="radio" name="q46" value="3">③ Furthermore, online banking is an easy and safe way to manage your money and provides fast and easy access to all your accounts. </input>
<input type="radio" name="q46" value="4">④ Using this feature, a user can make their account accessible only through specific computers and mobile phones they’ve personally authorized. </input>
<input type="radio" name="q46" value="5">⑤ If access is attempted through an unauthorized device, the user is notified by e-mail or SMS and can block the attempt before it has a chance to succeed.
 <br>
</div>
47. 주어진 글 다음에 이어질 글의 순서로 가장 적절한 것을 고르시오.<br>
<div class="q_body textbox">
  A vibrant and active musical culture enriches life, making it more exciting, interesting, and meaningful for everyone around. Beauty is in the ear, and not just the eye, of the beholder, and enjoying a song or a piece of instrumental music depends to a certain extent on the listener’s personal taste and social  background.
</div>
<div class="q_body">
<br>
(A) By opening up their ears and mind’s eye to the “other,” people can more happily engage and interact with new and different cultures.<br>
 <br>
(B) To an average Westerner, for instance, the traditional music of East Asia would probably sound mysterious and may even be uncomfortably difficult to listen to, because its mode of expression is so unfamiliar.<br>
 <br>
(C) However, people who can set aside their preconceptions about musical conventions and make an effort to understand the context of the unfamiliar music will find it more accessible and enjoyable.<br>
 <br>
</div>
<input type="radio" name="q47" value="1">① (A) ─ (C) ─ (B) </input><br>
<input type="radio" name="q47" value="2">② (B) ─ (A) ─ (C)</input><br>
<input type="radio" name="q47" value="3">③ (B) ─ (C) ─ (A) </input><br>
<input type="radio" name="q47" value="4">④ (C) ─ (A) ─ (B)</input><br>
<input type="radio" name="q47" value="5">⑤ (C) ─ (B) ─ (A)<br>
 <br>
48. 주어진 글 다음에 이어질 글의 순서로 가장 적절한 것을 고르시오.<br>
<div class="q_body textbox">
  If you darken your kitchen, place a small amount of salt or soda on the end of a screwdriver or piece of tin, and hold the salt or soda in a gas flame, what will happen?
</div>
<div class="q_body">
<br>
(A) If you passed the light from this flame through a prism, you would find that this light has only one color from the spectrum ─ a narrow region in the yellow part of the spectrum and nothing else. Any chemical that contains sodium will give off light of this same color.<br>
 <br>
(B) Even the tiniest speck of salt will cause a colorless, almost invisible flame to take on a strong yellow glow. The yellow color is due to the vapor of the chemical element sodium, which is one of the components of common salt.<br>
 <br>
(C) In the same way, a little cream of tartar or saltpeter introduced into a gas flame gives the flame a peculiar lilac color. To sum up, the flame appears in a different color depending upon the chemical additives. If you know which chemicals result in what colors, you’ll be able to make fire burn in different colors whenever you want.<br>
<p style="text-align: right;">*tartar: 주석 **saltpeter: 초석</p><br>
 <br>
</div>
<input type="radio" name="q48" value="1">① (A) ─ (C) ─ (B) </input><br>
<input type="radio" name="q48" value="2">② (B) ─ (A) ─ (C)</input><br>
<input type="radio" name="q48" value="3">③ (B) ─ (C) ─ (A) </input><br>
<input type="radio" name="q48" value="4">④ (C) ─ (A) ─ (B)</input><br>
<input type="radio" name="q48" value="5">⑤ (C) ─ (B) ─ (A)<br>
 <br>
49. 글의 흐름으로 보아, 주어진 문장이 들어가기에 가장 적절한 곳을 고르시오.<br>
<div class="q_body textbox">
  To ensure that every research project has this protection, investigators must submit their proposed studies for formal review by a local panel of experts and community representatives prior to any data collection.
</div>
<div class="q_body">
<br>
Choosing a good research design requires more than just selecting a particular method. ( 
<input type="radio" name="q49" value="1">① ) Researchers must determine whether the methods they plan on using are ethical. ( </input>
<input type="radio" name="q49" value="2">② ) That is, when designing a research study, investigators must do so in a way that does not violate the rights of people who participate. ( </input>
<input type="radio" name="q49" value="3">③ ) Only with the approval of this panel can scientists begin their study. ( </input>
<input type="radio" name="q49" value="4">④ ) If the review panel doesn’t approve of some aspects of the proposed study, the researcher must revise those aspects and present them again for the panel’s approval. ( </input>
<input type="radio" name="q49" value="5">⑤ ) Likewise, each time a component of a study is altered, the review panel must be informed and give its approval.<br>
 <br>
50. 글의 흐름으로 보아, 주어진 문장이 들어가기에 가장 적절한 곳을 고르시오.<br>
<div class="q_body textbox">
  Then he glanced back at the tube and, apparently, at this moment the insight came to him.
</div>
<div class="q_body">
<br>
There are some reported examples of insight learning in apes. Lethmate Gebrauch describes the following sequence, suggesting insight in a young orangutan. The orangutan was given a long rod which could be inserted into a transparent plastic tube to reach a sweet and push it out. ( 
<input type="radio" name="q50" value="1">① ) The orangutan knew what the sweet was, but he did not know how to use the rod as a tool to obtain it. ( </input>
<input type="radio" name="q50" value="2">② ) He bit the tube and tried unsuccessfully to insert the tool. ( </input>
<input type="radio" name="q50" value="3">③ ) He then moved away and sat down, apparently in frustration as he began to perform stereotyped repetitive behaviors with the tool. ( </input>
<input type="radio" name="q50" value="4">④ ) He got up, walked over to the tube carrying the rod, inserted it into the tube and obtained the sweet. ( </input>
<input type="radio" name="q50" value="5">⑤ ) Although he was, of course, rewarded by eating the sweet, this was only at the end of the sequence, and the problem appeared to be solved in a flash of insight.<br>
 <br>
51. 다음 글의 내용을 한 문장으로 요약하고자 한다. 빈칸 (A), (B)에 들어갈 말로 가장 적절한 것은? [3점]<br>
<div class="q_body">
In one experiment, subjects were asked to read a short account of a series of interactions between two people. In these accounts, one person asked another person for a favor, such as a ride to work. In half the accounts, the recipient of the favor subsequently provided the same benefit to the other person (e.g., if they were given a ride to work, they offered the other person a ride to work), and in half the accounts the recipient of the favor subsequently provided a different kind of benefit to the other person (e.g., if they were given a ride to work, they offered to buy the other lunch). Subjects were asked to evaluate the quality of the friendship between the two individuals after they read these accounts. Subjects reported that individuals who exchanged the same benefits were less close than individuals who exchanged benefits of different types. Asked why they made these assessments, subjects said that they interpreted the exchange of the same benefits as a form of repayment, something that they evidently did not associate with close friendship.<br>
<p style="text-align: center;">=></p>
</div>
<div class="q_body textbox">
  In the situation of giving and receiving benefits, the perceived ____<span style="text-decoration: underline;">(A)</span>____ was greater when the benefits were ____<span style="text-decoration: underline;">(B)</span>____ .
</div>
 <br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(A)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(B)<br>
<input type="radio" name="q51" value="1">① availability …… tangible</input><br>
<input type="radio" name="q51" value="2">② availability …… unrelated</input><br>
<input type="radio" name="q51" value="3">③ closeness …… dissimilar</input><br>
<input type="radio" name="q51" value="4">④ closeness …… substantial</input><br>
<input type="radio" name="q51" value="5">⑤ impact ……… immediate<br>
 <br>
* 다음 글을 읽고, 물음에 답하시오.<br>
We are subjected to never-ending cascades of negative news from across the world: wars, famines, natural disasters, diseases, mass layoffs, acts of terror. Stories about gradual improvements (a) <span style="text-decoration: underline;">rarely</span> make the front page even when they occur on a dramatic scale and impact millions of people. And thanks to increasing press freedom and improving technology, we hear more, about more disasters, than ever before. This improved reporting is itself a sign of human progress, but it creates the impression of the exact opposite. At the same time, activists and lobbyists skillfully manage to make every dip in a trend appear to be the end of the world, even if the general trend is clearly improving, (b) <span style="text-decoration: underline;">scaring</span> us with alarmist exaggerations. For example, in the United States, the violent-crime rate has been on a (c) <span style="text-decoration: underline;">growing</span> trend since 1990. Just under 14.5 million crimes were reported in 1990. By 2016 that figure was well under 9.5 million. Each time something horrific or shocking happened, which was pretty much every year, a crisis was reported. The majority of people, the vast majority of the time, believe that violent crime is getting worse. The doom-laden feeling that this creates in us is then intensified by our (d) <span style="text-decoration: underline;">inability</span> to remember the past. But the news agenda actually misses the key point. Things are getting better. We fail to remember that, one year ago, or ten years ago, or 33 years ago, there was a much larger number of terrible events. This illusion of (e) <span style="text-decoration: underline;">deterioration</span> creates great stress for some people and makes other people lose hope. For no good reason.<br>
<p style="text-align: right;">*cascade: (한꺼번에 많이) 쏟아지는 것</p>
 <br>
52. 윗글의 제목으로 가장 적절한 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q52" value="1">① Journalism Ethics and Standards</input><br>
<input type="radio" name="q52" value="2">② How Freedom of the Press Works</input><br>
<input type="radio" name="q52" value="3">③ Big Technology Curbs Misinformation</input><br>
<input type="radio" name="q52" value="4">④ The Unending Stream of Bad News Is Itself Flawed</input><br>
<input type="radio" name="q52" value="5">⑤ Selective Reporting: Telling and Detecting Actual Lies<br>
 <br>
53. 밑줄 친 (a) ~ (e) 중에서 문맥상 낱말의 쓰임이 적절하지 <span style="text-decoration: underline;">않은</span> 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q53" value="1">① (a) </input><br>
<input type="radio" name="q53" value="2">② (b) </input><br>
<input type="radio" name="q53" value="3">③ (c) </input><br>
<input type="radio" name="q53" value="4">④ (d) </input><br>
<input type="radio" name="q53" value="5">⑤ (e)<br>
 <br>
* 다음 글을 읽고, 물음에 답하시오.<br>
<p style="text-align: center;">(A)</p>
Long ago in Egypt there lived a famous wise man named Zunnun. One day, a young man came to his house and said, “Teacher, I do not understand why you dress so simply and humbly. Isn’t it better to dress in the finest clothes you can afford?”<br>
 <br>
 <p style="text-align: center;">(B)</p>
The young man went quickly to the market. (a) <span style="text-decoration: underline;">He</span> offered the ring to the textile merchants, vegetable sellers, butchers, and fish traders. Nobody was willing to pay a piece of gold. So, (b) <span style="text-decoration: underline;">he</span> returned to Zunnun and reported “Teacher, nobody would offer more than one piece of silver.” Zunnun smiled and said, “Now, go to the gold trader’s shop at the end of the street and show the ring to the owner. Don’t give your price, just ask how much he will pay you for the ring.”<br>
 <br>
 <p style="text-align: center;">(C)</p>
The young man found the shop to which (c) <span style="text-decoration: underline;">he</span> was told to go. When he returned, he said, “Teacher, the gold trader offered me one thousand pieces of gold for your ring! (d) <span style="text-decoration: underline;">He</span> valued it two thousand times higher than what the other traders did!” Zunnun smiled again and spoke softly, “That was the answer to your question, my friend. Do not be swift to decide value by appearance. The traders in the market did that and saw brass, but the gold trader looked closer and saw diamonds and gold.”<br>
<p style="text-align: center;">(D)</p>
Zunnun simply smiled at (e) <span style="text-decoration: underline;">him</span>, took a ring from his finger, and said “I will answer your question, but first you must take this ring to the market and sell it for one piece of gold.” Taking the dull ring from the wise man’s hand, the young man thought to himself, “One piece of gold? It’s impossible to sell this worthless ring for that much! But I want to know the answer to my question, so I will try.”<br>
 <br>
54. 주어진 글 (A)에 이어질 내용을 순서에 맞게 배열한 것으로 가장 적절한 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q54" value="1">① (B) ― (D) ― (C) </input><br>
<input type="radio" name="q54" value="2">② (C) ― (B) ― (D)</input><br>
<input type="radio" name="q54" value="3">③ (C) ― (D) ― (B) </input><br>
<input type="radio" name="q54" value="4">④ (D) ― (B) ― (C)</input><br>
<input type="radio" name="q54" value="5">⑤ (D) ― (C) ― (B)<br>
 <br>
55. 밑줄 친 (a) ~ (e) 중에서 가리키는 대상이 나머지 넷과 다른것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q55" value="1">① (a) </input><br>
<input type="radio" name="q55" value="2">② (b) </input><br>
<input type="radio" name="q55" value="3">③ (c) </input><br>
<input type="radio" name="q55" value="4">④ (d) </input><br>
<input type="radio" name="q55" value="5">⑤ (e)<br>
 <br>
56. 윗글에 관한 내용으로 적절하지 <span style="text-decoration: underline;">않은</span> 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q56" value="1">① 현자(賢者)는 허름한 옷을 입고 있었다.</input><br>
<input type="radio" name="q56" value="2">② 젊은이는 시장 상인에게 금 한 덩이에 반지를 팔았다.</input><br>
<input type="radio" name="q56" value="3">③ 금을 파는 상인은 반지 값으로 금 천 덩이를 제안했다.</input><br>
<input type="radio" name="q56" value="4">④ 반지는 금과 다이아몬드로 만들어진 것이었다.</input><br>
<input type="radio" name="q56" value="5">⑤ 젊은이는 반지가 금 한 덩이의 가치가 없다고 생각했다.<br>
 <br>
 <br>
57. 다음 글의 목적으로 가장 적절한 것은?
<div class="q_body textbox">

Dear Mr. Simon,<br>
 <br>
The Oak Hill Voluntary Club gets together every month to plan ways to make life better here in San Francisco, and we are always looking for enthusiastic individuals who share our passion. As a member of our club, you will have the opportunity to participate in a variety of volunteer activities, such as volunteering at food banks, organizing community events, and providing additional support to those in need. We pay for everything we do by collecting $100 from each member every year and by obtaining donations from local businesses. If you’re interested in joining our club, please fill out the attached membership form and return it with the membership fee of $100. If you have any questions or would like more information, please don’t hesitate to contact us. We look forward to hearing from you soon.<br>
 <br>
Sincerely,<br>
Don Roberts
<br>
 <br>
</div>
<input type="radio" name="q57" value="1">① 클럽에 가입하는 방법을 문의하려고</input><br>
<input type="radio" name="q57" value="2">② 자원 봉사 시 주의해야 할 사항을 전달하려고</input><br>
<input type="radio" name="q57" value="3">③ 자원 봉사 클럽의 회비 납부 방법을 통보하려고</input><br>
<input type="radio" name="q57" value="4">④ 불우 이웃을 위한 기부를 요청하려고</input><br>
<input type="radio" name="q57" value="5">⑤ 클럽에 가입할 것을 권유하려고<br>
 <br>
58. 다음 글에 드러난 Cynthia의 심경 변화로 가장 적절한 것은?<br>
<div class="q_body">
Cynthia had been saving for months, with no small amount of sacrifice, to create a fund for her kids’ college. She had even given up going out to eat and buying new clothes. Despite her dedication, her husband, Dave, yearned to go on an expensive family trip. He told Cynthia, “The kids are going to be grown before we know it. If not now, when?” The discussion went back and forth. Cynthia yelled in the heat of argument, “Am I the only one who’s concerned about our children’s future?” The tension got even higher. Then Cynthia glanced down. “What happened to your socks?” she asked. David looked down, a little off guard, and examined his blackened feet as if for the first time. “I had to chase a raccoon out of the garden,” he said after a moment. “I didn’t have time to put on my shoes.” They looked at each other, and then they both began laughing suddenly, the tension between them breaking like a wave on the shore.<br>
 <br>
</div>
<input type="radio" name="q58" value="1">① grateful -> sorrowful</input><br>
<input type="radio" name="q58" value="2">② calm -> excited</input><br>
<input type="radio" name="q58" value="3">③ depressed -> hopeful</input><br>
<input type="radio" name="q58" value="4">④ encouraged -> angry</input><br>
<input type="radio" name="q58" value="5">⑤ frustrated -> relieved<br>
 <br>
59. 다음 글에서 필자가 주장하는 바로 가장 적절한 것은?<br>
<div class="q_body">
Many people turn to self-help books or courses to deal with their emotions, but a lot of these programs get self-help completely wrong. Those that tout positive thinking are particularly off base. Trying to impose happy thoughts is extremely difficult, if not impossible, because few people can just turn off negative thoughts and replace them with more pleasant ones. Also, this advice fails to consider an essential truth: your so-called ‘negative’ emotions are often actually working in your favour. In fact, negativity is normal. This is a fundamental fact. We are programmed to feel ‘negative’ at times not only to survive, but to flourish. It’s simply a part of the human condition. We need to acknowledge our negative emotions as a normal and necessary aspect of our lives. Rather than trying to suppress them, try to manage them in a healthy way.<br>
<p style="text-align: right;">*tout: 권유하다</p>
 <br>
</div>
<input type="radio" name="q59" value="1">① 곤경에 대처하는 자신만의 방법을 찾아야 한다.</input><br>
<input type="radio" name="q59" value="2">② 부정적인 감정을 억누르지 말고 잘 다스려야 한다.</input><br>
<input type="radio" name="q59" value="3">③ 스스로를 돌아보며 부정적인 감정을 조절해야 한다.</input><br>
<input type="radio" name="q59" value="4">④ 자신의 감정을 솔직하게 표현하는 방법을 배워야 한다.</input><br>
<input type="radio" name="q59" value="5">⑤ 긍정적인 감정을 유지하려면 능동적인 자세를 가져야 한다.<br>
 <br>
60. 밑줄 친 <span style="text-decoration: underline;">a handful of rocks thrown in over a wide pool</span>이 다음 글에서 의미하는 바로 가장 적절한 것은？ [3점]<br>
<div class="q_body">
We have long tracked the evolution of weight gain and social-network connections. When we began this work, we thought that we would see one person gain weight and then watch a wave of obesity spreading out from the affected person, over time and across social space. The image of the obesity epidemic in our heads was based on a physics experiment: a pebble is dropped in a still pool of water, and a concentric circle of waves moves away from it. Yet when we looked at the result of our work, the picture was much more complicated. Sure, obesity can spread, but it is not spreading from just one spot, and social contacts are not the only stimulus for weight gain. People take up eating, get distressed, stop exercising, or start drinking, and each one of these changes can form the epicenter of another tiny obesity epidemic. We then realized that the proper analogy was <span style="text-decoration: underline;">a handful of rocks thrown in over a wide pool</span>.<br>
<p style="text-align: right;">*epicenter: (전염병의) 발생지; 진원지</p>
 <br>
</div>
<input type="radio" name="q60" value="1">① intense emotions stirring up anxiety</input><br>
<input type="radio" name="q60" value="2">② numerous obstacles that must be overcome</input><br>
<input type="radio" name="q60" value="3">③ various factors interacting in unpredictable patterns</input><br>
<input type="radio" name="q60" value="4">④ potential risks of forming new relationships</input><br>
<input type="radio" name="q60" value="5">⑤ boundless curiosity causing distraction<br>
 <br>
61. 다음 글의 요지로 가장 적절한 것은?<br>
<div class="q_body">
Brainstorming is a commonly used method to generate creative ideas and solutions. A prominent advertising executive and author Alex Osborn argued that criticism during brainstorming would hinder people’s creativity and the generation of new ideas. This notion may be intuitively plausible, but as studies in the United States and France have concluded, the freedom to criticize aids rather than impedes the generation of ideas. It is worth noting that rules like “do not criticize” suggest that we are too fragile to handle any feedback or accept ideas that aren’t our own. Such rules also seem to detract from the issue at hand, which is to generate ideas that solve a problem. It is hard to stay confident when you are worried about what you say and how you say it, but the research shows that debate, and even criticism, can be a benefit to brainstorming.<br>
 <br>
</div>
<input type="radio" name="q61" value="1">① 브레인스토밍의 성패는 토론 분위기에 달려 있다.</input><br>
<input type="radio" name="q61" value="2">② 브레인스토밍의 방식은 상황에 따라 달라질 수 있다.</input><br>
<input type="radio" name="q61" value="3">③ 브레인스토밍에서 비판을 허용하는 것이 더 효과적이다.</input><br>
<input type="radio" name="q61" value="4">④ 최대한 많은 아이디어를 내는 것이 브레인스토밍의 목적이다.</input><br>
<input type="radio" name="q61" value="5">⑤ 브레인스토밍을 통해 얻은 아이디어는 대부분 실행되지 못한다.<br>
 <br>
62. 다음 글의 주제로 가장 적절한 것은?<br>
<div class="q_body">
Bacteria are able to develop resistances to antibiotics by acquiring rare mutations in their genes. This survival mechanism is driven by natural selection, favoring bacteria that can withstand the effects of antibiotics. This coevolutionary process between antibiotics and bacterial survival leads to a continuous arms race, where bacteria evolve more rapidly to combat the effects of antibiotics. As a result, the emergence of increasing antibiotic resistance is an inevitable and natural outcome of this process. While antibiotics continue to be developed to keep up with resistances, finding a perfect antibiotic that does not elicit resistance is unlikely. It’s like running on a treadmill; you must run as fast as you can to stay in the same place. Taking an evolutionary perspective on bacterial survival mechanisms, it is crucial to proactively search for new antibiotics before the current ones become ineffective.<br>
 <br>
</div>
<input type="radio" name="q62" value="1">① evolutionary relationship between antibiotics and bacterial survival</input><br>
<input type="radio" name="q62" value="2">② benefits of genetic diversity in bacterial population</input><br>
<input type="radio" name="q62" value="3">③ unintended consequences of antibiotic overuse</input><br>
<input type="radio" name="q62" value="4">④ difficulty of understanding bacterial survival mechanisms</input><br>
<input type="radio" name="q62" value="5">⑤ importance of preventing the development of resistant bacteria<br>
 <br>
63. 다음 글의 제목으로 가장 적절한 것은?<br>
<div class="q_body">
In a classic survey, the College Board asked high school test takers to rate themselves on a host of criteria. Eighty-five percent considered themselves above the median in getting along with others, 70 percent above the median in ability to lead others, and 60 percent above the median in sports. Also, more than 80 percent of people believed that they were more skillful than half of all drivers. Remarkably, the least capable people often have the largest gaps between what they think they can do and what they actually achieve. In another study, researchers asked subjects to rate their perceived ability and likely success on a grammar test. The result shows that the poorest performers dramatically overstated their ability, thinking that they would be in the second-highest quartile. However, they turned in results in the bottom quartile. Even when confronted with their actual results, many of these individuals still struggled to accurately assess their own abilities, often maintaining an inflated perception of their skills.<br>
<p style="text-align: right;">*quartile: 4분위수</p>
 <br>
</div>
<input type="radio" name="q63" value="1">① Ignore Your Weaknesses, Focus on Your Strengths</input><br>
<input type="radio" name="q63" value="2">② How We Can Discover the Truth About Our Abilities</input><br>
<input type="radio" name="q63" value="3">③ No Wonder Overestimating Your Abilities Leads to Success</input><br>
<input type="radio" name="q63" value="4">④ Between Perception and Reality: Overestimating Abilities</input><br>
<input type="radio" name="q63" value="5">⑤ The Inflated Self: The Perils of Overconfidence<br>
 <br>
64. 다음 도표의 내용과 일치하지 <span style="text-decoration: underline;">않는</span> 것은?<br>
<div class="q_body">
  <img src="../../../../resources/img/user/q64.png">
<br>
 <br>
The graph above shows the average time spent per day among the U.S. population on various social network platforms from 2018 to 2022. </div>
<input type="radio" name="q64" value="1">① From 2018 to 2020, there was an upward trend in the average time spent on social networks by U.S. adults. </input><br>
<input type="radio" name="q64" value="2">② In all the periods from 2018 to 2022, Facebook was the most popular social network platform among the U.S. populations, with an average time spent more than 20 minutes per day. </input><br>
<input type="radio" name="q64" value="3">③ TikTok experienced the most remarkable growth in usage time among the U.S. population, increasing seven times from an average of 1 minute per day in 2018 to 7 minutes per day from 2020 to 2022. </input><br>
<input type="radio" name="q64" value="4">④ Between 2018 and 2022, the average time spent by the U.S population on Facebook consistently remained more than double that of Instagram for each year. </input><br>
<input type="radio" name="q64" value="5">⑤ The usage time of Snapchat, TikTok, and Twitter by the U.S. population showed no significant changes from 2020 to 2022.<br>
 <br>
65. J. D. Salinger에 관한 다음 글의 내용과 일치하지 <span style="text-decoration: underline;">않는</span> 것은?<br>
<div class="q_body">
J. D. Salinger, born in Manhattan, New York in 1919, began writing short stories while in secondary school. Salinger’s early stories were published in the 1940s. While serving in the United States Army during World War II, he met Ernest Hemingway, the celebrated writer, who was working as a war correspondent in Paris at the time. After the war, Salinger was hospitalized for several weeks and diagnosed with combat stress reaction. His first novel, The Catcher in the Rye, was published in 1951, and it became an immediate popular success. Following the novel’s publication, Salinger became reclusive, rarely agreeing to interviews or public appearances. Eventually, he stopped publishing altogether in 1965. Salinger died in 2010, leaving behind a vast archive of unpublished work.<br>
 <br>
</div>
<input type="radio" name="q65" value="1">① 학창 시절에 단편 소설을 쓰기 시작했다.</input><br>
<input type="radio" name="q65" value="2">② 제2차 세계 대전 중에 Ernest Hemingway와 만났다.</input><br>
<input type="radio" name="q65" value="3">③ 전쟁 후에 몇 주간 입원했다.</input><br>
<input type="radio" name="q65" value="4">④ 1951년 출간된 첫 소설이 즉시 인기를 얻었다.</input><br>
<input type="radio" name="q65" value="5">⑤ 사망한 해에 여러 책을 출간했다.<br>
 <br>
66. Young Flyers’ Aviation Program에 관한 다음 안내문의 내용과 일치하지 <span style="text-decoration: underline;">않는</span> 것은?
<div class="q_body textbox">

  <p style="font-weight: bold; text-align: center;">Young Flyers’ Aviation Program</p>
Want to be an airline pilot? Then get started on your future in the skies with our Young Flyers’ Aviation Program. Come and get the opportunity to fly every day with a certified flight instructor now!<br>
 <br>
 <span style="font-weight: bold;">Requirements:</span><br>
& Ages 10 & 15<br>
& No experience required<br>
 <br>
 <span style="font-weight: bold;">Date:</span><br>
June 12-15, 9 a.m. & 4 p.m.<br>
 <br>
 <span style="font-weight: bold;">Program Activities:</span><br>
& Aircraft flights<br>
& Control tower tours<br>
& Airport tours<br>
& Flight simulators<br>
 <br>
 <span style="font-weight: bold;">Participation Fee:</span><br>
$689 per person<br>
 <br>
 <span style="font-weight: bold;">Notes:</span><br>
& Activities are subject to change without notice.<br>
& All payments are final and non-refundable.<br>
 <br>
Please visit our website at www.youngflyers.com to learn more.
<br>
 <br>
</div>
<input type="radio" name="q66" value="1">① 매일 전문 강사와 비행할 기회를 준다.</input><br>
<input type="radio" name="q66" value="2">② 10세에서 15세를 대상으로 한다.</input><br>
<input type="radio" name="q66" value="3">③ 6월 12일부터 4일간 진행된다.</input><br>
<input type="radio" name="q66" value="4">④ 활동 내용은 공지 없이 변경될 수 있다.</input><br>
<input type="radio" name="q66" value="5">⑤ 프로그램 시작 전에만 환불이 가능하다.<br>
 <br>
67. Sunny’s Cooking Class에 관한 다음 안내문의 내용과 일치하는 것은?
<div class="q_body textbox">

  <p style="font-weight: bold; text-align: center;">Sunny’s Cooking Class</p>
Are you tired of eating the same thing every day? Do you want to feel like a master chef? Then don’t miss this great opportunity!<br>
 <br>
• Dates: 2nd and 4th Saturday of every month (March to August)<br>
• Time: 11:00 a.m. & 1:00 p.m.<br>
• Place: Curtis Community Center<br>
• Tuition Fee: $50 (per class)<br>
• Level: Beginner<br>
• Topics to Be Covered:<br>
- Basic Cooking Techniques (grilling, roasting, frying, etc.)<br>
- Food safety and hygiene<br>
- Healthy eating habits and nutrition<br>
- Making sauces and dressings from scratch<br>
• Registration is limited to eight students per class, so book early!<br>
 <br>
Visit our web site at www.sunnyckclass.com to register.
<br>
 <br>
</div>
<input type="radio" name="q67" value="1">① 매주 토요일에 진행된다.</input><br>
<input type="radio" name="q67" value="2">② 오후에 시작된다.</input><br>
<input type="radio" name="q67" value="3">③ 중급자 수준이다.</input><br>
<input type="radio" name="q67" value="4">④ 다루는 주제 중 하나는 위생이다.</input><br>
<input type="radio" name="q67" value="5">⑤ 수강 학생 수에는 제한이 없다.<br>
 <br>
68 다음 글의 밑줄 친 부분 중, 어법상 <span style="text-decoration: underline;">틀린</span> 것은? [3점]<br>
<div class="q_body">
Compared to large societies of modern industrial civilization, particularly
<input type="radio" name="q68" value="1">① <span style="text-decoration: underline;">those</span> in the developed world, little inequality is found in most hunter-gatherer groups. Hunters and gatherers do not accumulate material wealth beyond what is needed to fulfill their basic needs for survival such as food, shelter, and clothing. The material goods they need </input>
<input type="radio" name="q68" value="2">② <span style="text-decoration: underline;">consist</span> only of weapons for hunting animals, tools for digging and building, traps, and cooking utensils. But hunters and gatherers are not merely “primitive” peoples </input>
<input type="radio" name="q68" value="3">③ <span style="text-decoration: underline;">whose</span> ways of life no longer hold any value. Studying their cultures allows us to see more clearly the extent </input>
<input type="radio" name="q68" value="4">④ <span style="text-decoration: underline;">to which</span> modern institutions are not “natural” features of human societies, but rather social constructs that have emerged over time. Of course, we should not idealize the circumstance in which hunters and gatherers have lived. However, the absence of war, the lack of major wealth and power inequalities, and the emphasis on cooperation rather han competition </input>
<input type="radio" name="q68" value="5">⑤ <span style="text-decoration: underline;">is</span> all instructive reminders that modern industrial civilization does not equate to more advanced or better ways of living.
</div> 
<br>

69. 다음 글의 밑줄 친 부분 중, 문맥상 낱말의 쓰임이 적절하지 <span style="text-decoration: underline;">않은</span> 것은?<br>
<div class="q_body">
Avoiding stress is impossible, but what we can do is adjust our relationship to stress. It doesn’t have to own us. We can own it. The first step is to simply accept that it exists; to show up to it by 
<input type="radio" name="q69" value="1">① <span style="text-decoration: underline;">acknowledging</span>that it’s not going away any time soon. The second, vitally important step is to understand that ‘stressed’ is not who you are. Saying “I am stressed” can merge your identity with that feeling, making the experience </input><br>
<input type="radio" name="q69" value="2">② <span style="text-decoration: underline;">overwhelming</span>. Recognizing a feeling or thought for what it truly is is an effective method of stepping away from it. Saying “I am noticing that I’m feeling stressed,” immediately creates </input><br>
<input type="radio" name="q69" value="3">③ <span style="text-decoration: underline;">distance</span> between you and he feeling. To effectively manage your feelings, you need to be aware of what you’re experiencing. you may think you’re stressed, but it could be exhaustion because you’ve </input><br>
<input type="radio" name="q69" value="4">④ <span style="text-decoration: underline;">abandoned</span> too many responsibilities. When you get a clear understanding f what you’re truly feeling and why, it may </input><br>
<input type="radio" name="q69" value="5">⑤ <span style="text-decoration: underline;">lead</span> you to adjust your workload.<br>
 <br>
</div>
 <br>

70. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
Social psychologist Elliot Aronson and his graduate students at the University of Texas designedlearning technique called the “jigsaw classroom.” he teacher divides students into five-person “jigsaw roups.” Then the teacher divides that day’s lesson into five segments. For instance, if the class is studying the life of Abraham Lincoln, those sections might be Lincoln’s childhood, his early political career, his becoming president at the dawn of the U.S. Civil War, his signing of the Emancipation Proclamation, and his assassination. Each student is responsible for researching one of these segments. he students then go off to study their piece, forming “expert groups” with students from the class’s other ive-person groups who share the same assignment. hen the research is finished, each student returns o his original jigsaw group and teaches the other our classmates. By promoting __________, this earning strategy helps to break down barriers between students and create a supportive learning environment.<br>
 <br>
</div>
<input type="radio" name="q70" value="1">① cultural understanding</input><br>
<input type="radio" name="q70" value="2">② desirable consensus</input><br>
<input type="radio" name="q70" value="3">③ unfamiliar connections</input><br>
<input type="radio" name="q70" value="4">④ continuous change</input><br>
<input type="radio" name="q70" value="5">⑤ structured interdependence<br>
 <br>
71. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
A Stanford University marketing professor tracked more than a quarter of a million airline passengers and proved that you’re a whopping 30 percent more likely to make an in-flight purchase if your seatmate does. If you travel regularly, that 30 percent can add up to a lot of bad films and snacks you could just as easily have done without. These kinds of choices are based on mindless decisionmaking, an approach in which there is no space between impulse and action, thinker and thought, or where the herd instinct comes into play. Sometimes, this behaviour is okay. But if you make too many mindless, autopilot decisions, over the long haul you will eventually find yourself living what feels like somebody else’s life & a life aligned with values you don’t necessarily subscribe to (Not to mention that you might be carrying several extra kilograms worth 
of in-flight snacks you didn’t really want). So, the next time you find yourself reaching for that overpriced bag of airline snack mix, take a moment to consider your actions to avoid the regretful question of “__________”<br>
<p style="text-align: right;">*whopping: 엄청 큰</p>
 <br>
</div>
<input type="radio" name="q71" value="1">① Did I really do my best?</input><br>
<input type="radio" name="q71" value="2">② How can I make up for lost time?</input><br>
<input type="radio" name="q71" value="3">③ When can I trust that person?</input><br>
<input type="radio" name="q71" value="4">④ Who can I turn to for help?</input><br>
<input type="radio" name="q71" value="5">⑤ How did I get here?<br>
 <br>
72. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
Perhaps what makes a work of literature exceptional is its action and narrative. Certainly Aristotle thought that a solid, well-wrought action was central to at least one species of literary writing, tragedy. In his analysis of tragedy, Aristotle emphasized the importance of plot. He argued that a good plot must have a beginning, middle, and an end. Yet nothing much happens in one of the greatest plays of the twentieth century, Waiting for Godot, one of the finest novels,Ulysses, and one of the most masterly poems, The Waste Land. If a sturdy plot and a strong narrative were vital to literary status, British author Virginia Woolf would sink to a dismally low place in the league tables. Woolf’s writing style often prioritized the inner lives and subjective experiences of her characters over traditional plot and narrative structure. We no longer rate a substantial plot as highly as Aristotle did. We are drawn to works that __________. [3점]<br>
 <br>
</div>
<input type="radio" name="q72" value="1">① transport us to different worlds and times</input><br>
<input type="radio" name="q72" value="2">② provide an opportunity for emotional release</input><br>
<input type="radio" name="q72" value="3">③ challenge our traditional moral boundaries</input><br>
<input type="radio" name="q72" value="4">④ explore through the lens of personal experience</input><br>
<input type="radio" name="q72" value="5">⑤ question our perceptions and understanding of ourselves<br>
 <br>
73. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br>
<div class="q_body">
Many of us struggle with productivity, whether it’s at work or when pursuing personal goals. We set out with good intentions and a clear plan, but often find ourselves getting sidetracked, distracted, or simply unmotivated. However, there’s a psychological hack that can help overcome this problem. Jerry Seinfeld, best known for his stand-up comedy, makes a habit of writing every day. Whether he feels inspired or not, Seinfeld sits down and writes something, even if it’s just a few lines. So how exactly does he achieve such a feat? According to Seinfeld, “It starts with getting a calendar and a big red marker. Each day I complete my task of writing, I make a big red X on the date. After a few days you’ll have a chain of Xs. Just keep at it and you’ll see the chain grow longer every day. Now your only job is not to break the chain.” The psychological rationale here is rather simple: __________ outweighs the challenge of summoning motivation to work. The result is a surge in productivity. [3점] <br>
</div>
<input type="radio" name="q73" value="1">① the discomfort of writing in different settings</input><br>
<input type="radio" name="q73" value="2">② the difficulty of focusing on a task every day</input><br>
<input type="radio" name="q73" value="3">③ the frustration of seeing your sequence fragmented</input><br>
<input type="radio" name="q73" value="4">④ the joy of expressing your thoughts creatively</input><br>
<input type="radio" name="q73" value="5">⑤ the reward of being able to take a break<br>
 <br>
74. 다음 글에서 전체 흐름과 관계 <span style="text-decoration: underline;">없는</span> 문장은? [3점]<br>
<div class="q_body">
How far a literary work speaks to more than its own historical context may depend on the situation. </div>
<input type="radio" name="q74" value="1">① If, for example, it springs from a momentous era in human history, one in which men and women are living through some world-shaking transition, it might be animated by this fact to the point where it also appeals to readers in very different times and places. </input>
<input type="radio" name="q74" value="2">② Works of the Renaissance and the Romantic period, such as William Shakespeare’s plays and John Keats’ poems, are obvious examples. </input>
<input type="radio" name="q74" value="3">③ These works transcend their historical moment because of the nature of that moment, as well as the specific way they belong to it. </input>
<input type="radio" name="q74" value="4">④ The fact that a work of literature addresses permanent features of the human condition, such as death, suffering, or love, does not guarantee it major status. </input>
<input type="radio" name="q74" value="5">⑤ The writings of Shakespeare, Milton, Blake and Keats resonate so deeply of their own times and places that they can echo across the centuries and around the globe.
 <br>
 <br>
75. 주어진 글 다음에 이어질 글의 순서로 가장 적절한 것을 고르시오.
<div class="q_body textbox">
  The majority of workers competed for jobs with other workers in their area, and when they competed more broadly, it was mostly with workers in other parts of the country.
</div>
<div class="q_body">
(A) Recently, a major accounting firm audited a client company in London by bringing in a team of accountants from India, putting them up in a hotel for three weeks, and flying them back; it was much cheaper than using British accountants.<br>
 <br>
(B) We’re all familiar with some of the results: workers in other countries answering our customer service calls, reading our X-rays, and writing our software. In addition, other developments benefit from cost-effective labor by outsourcing to workers in other countries.<br>
 <br>
(C) Today, however, many millions of workers in developed economies compete for jobs with workers around the world. The reason is that a growing proportion of work is information-based and doesn’t involve moving or processing anything physical at all.<br>
 <br>
</div>
<input type="radio" name="q75" value="1">① (A) & (C) & (B) </input><br>
<input type="radio" name="q75" value="2">② (B) & (A) & (C)</input><br>
<input type="radio" name="q75" value="3">③ (B) & (C) & (A) </input><br>
<input type="radio" name="q75" value="4">④ (C) & (A) & (B)</input><br>
<input type="radio" name="q75" value="5">⑤ (C) & (B) & (A)<br>
 <br>
76. 주어진 글 다음에 이어질 글의 순서로 가장 적절한 것을 고르시오.
<div class="q_body textbox">
  We’ve all heard the saying, “Music is the universal language.” This notion expresses that two individuals can enjoy music even if they don’t speak the same language.
</div>
<div class="q_body">
(A) People from the West often struggle to appreciate the complex details and nuances of Indian classical music or traditional Chinese opera due to a lack of exposure. Similarly, people from non-Western cultures may not fully understand Western classical music or jazz.<br>
 <br>
(B) This indicates how cultural familiarity with different musical traditions significantly impacts our appreciation of music. Since we process music from different cultures through the framework of our culturally defined music categories, cross-cultural appreciation of music is not always guaranteed.<br>
 <br>
(C) However, this statement is only partially true. Although all humans possess the same<br>
physiological mechanisms for hearing, it is an individual’s culture that influences how he or she actually perceives and interprets sounds.<br>
 <br>
</div>
<input type="radio" name="q76" value="1">① (A) & (C) & (B) </input><br>
<input type="radio" name="q76" value="2">② (B) & (A) & (C)</input><br>
<input type="radio" name="q76" value="3">③ (B) & (C) & (A) </input><br>
<input type="radio" name="q76" value="4">④ (C) & (A) & (B)</input><br>
<input type="radio" name="q76" value="5">⑤ (C) & (B) & (A)<br>
 <br>
 <br>
77. 글의 흐름으로 보아, 주어진 문장이 들어가기에 가장 적절한 곳을 고르시오.
<div class="q_body textbox">
  By implementing anonymous channels through which dissent can be expressed, organizations can create an environment that values dissent and encourages open communication. 
</div>

<div class="q_body">
Sometimes, people are hesitant to dissent due to the potential to irritate their friends and allies or to undermine the effectiveness and reputation of their group. ( 
<input type="radio" name="q77" value="1">① ) This reluctance is even evident during times of war or when national security is at risk. ( </input>
<input type="radio" name="q77" value="2">② ) While silence may seem like the easier option, it can actually cause more harm than good, especially when dealing with issues that require dialogue and discussion. ( </input>
<input type="radio" name="q77" value="3">③ ) Such an environment, in turn, fosters a culture that rewards members who challenge the prevailing norms, without penalizing them. ( </input>
<input type="radio" name="q77" value="4">④ ) This culture of open communication and constructive dissent contributes to the overall success and sustainability of the organization, as it is better equipped to navigate complex situations and adapt to unforeseen circumstances. ( </input>
<input type="radio" name="q77" value="5">⑤ ) Moreover, it fosters a sense of trust and cohesion among members, as they feel comfortable sharing their thoughts without fear of retribution.<br>
 <br>
78. 글의 흐름으로 보아, 주어진 문장이 들어가기에 가장 적절한 곳을 고르시오.
<div class="q_body textbox">
  The motion creates a strong circulation of air around the polar vortex, which plays a key role in regulating the Earth’s climate.
</div>

<div class="q_body">
Within the stratosphere, there are powerful winds that are capable of reaching speeds of nearly 220km/h. ( 
<input type="radio" name="q78" value="1">① ) These winds are found high in the atmosphere, at an altitude between 10 and 50 kilometers. ( </input>
<input type="radio" name="q78" value="2">② ) During the winter season, they form a massive cyclone called the stratospheric polar vortex that revolves around the poles. ( </input>
<input type="radio" name="q78" value="3">③ ) It is caused by the temperature differences between the colder air at the poles sinking towards the surface and the warmer air rising at lower latitudes. ( </input>
<input type="radio" name="q78" value="4">④ ) To be specific, this dynamic weather phenomenon helps to maintain the crucial temperature balance on our planet, as it effectively isolates and confines frigid polar air within the vortex. ( </input>
<input type="radio" name="q78" value="5">⑤ ) When the polar vortex is disrupted, it can lead to extreme weather events and unpredictable temperature fluctuations around the world. [3점]<br>
<p style="text-align: right;">*vortex: 소용돌이 **stratosphere: 성층권</p><br>
 <br>
79. 다음 글의 내용을 한 문장으로 요약하고자 한다. 빈칸 (A), (B)에 들어갈 말로 가장 적절한 것은?<br>
<div class="q_body">
In general, experts & or people who are highly regarded in any field & are often hooked on their own self-importance. But sometimes status or accomplishment in one realm has no relevance in another. A group of stockbrokers I once met at a conference all agreed surgeons were notoriously bad investors because they would only listen to investment advice from another surgeon. The irony is that the stockbrokers in their consensus of the surgeons’ poor investment ability were also using a very blunt rule of thumb, which was not very accurate or reliable. And CEOs on corporate team-building workshops out in the wild often assume that they should be in charge, failing to consider that a young mailroom worker might be better equipped to lead an exercise that involves climbing rocks and dangling from ropes. The more familiar experts are with a particular kind of problem, the more likely they are to apply a preconceived solution instead of responding to the specific case at hand.<br>
<p style="text-align: center;">=></p>
<div class="q_body textbox">
  Experts who are (A) in their thinking may become (B) to a situation’s context and act solely on their assumptions.
</div>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(A)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(B)<br>
<input type="radio" name="q79" value="1">① rigid …………… attentive</input><br>
<input type="radio" name="q79" value="2">② flexible ………… attentive</input><br>
<input type="radio" name="q79" value="3">③ fixed …………… insensitive</input><br>
<input type="radio" name="q79" value="4">④ imaginative …… insensitive</input><br>
<input type="radio" name="q79" value="5">⑤ impartial ……… adaptable<br>
 <br>
* 다음 글을 읽고, 물음에 답하시오.<br>
<div class="q_body textbox">
  The ancient Greek master of paradox, Heraclitus, said that you can never step into the same river twice. It means that the world is constantly changing and thus always presenting us with new opportunities and situations. To make the most of it, we must continually break down old categories and (a) <span style="text-decoration: underline;">formulate</span> new ones. The most original and interesting solutions often come when we embrace “the beginner’s mind”, approaching novel experiences with (b) <span style="text-decoration: underline;">fresh</span> eyes. This is a cornerstone of emotional flexibility. <br>
  Some of us tend to limit ourselves to narrow, predefined categories or identities, failing to recognize our own worth as an individual, seeing ourselves (c) <span style="text-decoration: underline;">exclusively</span> as a rich person, or a fat person. If we self-categorize based on a particular identity, such as being a “CEO”, “Olympic athlete”, or “the smartest kid in the class”, we can become trapped in that identity and lose sight of other aspects of ourselves. This can also occur when we (d) <span style="text-decoration: underline;">liberate</span> ourselves to specific roles like “the responsible one” in a family or “the funny one” in a group of friends. <br>
  We need adaptability to ensure that we can change too. In fact, emotional flexibility means the ability to regulate your emotions and respond adaptively to changing situations, rather than being controlled by conditioned or mindless emotional reactions. By practicing it, you can respond more effectively to present circumstances and act in (e) <span style="text-decoration: underline;">accordance</span> with your values and goals, helping you lead a more fulfilling and authentic life.
</div>
<br>
 <br>
80. 윗글의 제목으로 가장 적절한 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q80" value="1">① Learn from Difficult Emotions and Respond with Clarity</input><br>
<input type="radio" name="q80" value="2">② Emotional Rigidity: How to Live in a Changing World</input><br>
<input type="radio" name="q80" value="3">③ Maximize Your Potential through Self-Discovery</input><br>
<input type="radio" name="q80" value="4">④ How to Let Go of Old Identities and Move Forward</input><br>
<input type="radio" name="q80" value="5">⑤ Embracing Change: The Power of Emotional Flexibility<br>
 <br>
81. 밑줄 친 (a)~(e) 중에서 문맥상 낱말의 쓰임이 적절하지 <span style="text-decoration: underline;">않은</span> 것은? [3점]<br>
<div class="q_body">
</div>
<input type="radio" name="q81" value="1">① (a)</input><br>
<input type="radio" name="q81" value="2">② (b)</input><br>
<input type="radio" name="q81" value="3">③ (c)</input><br>
<input type="radio" name="q81" value="4">④ (d)</input><br>
<input type="radio" name="q81" value="5">⑤ (e)<br>
 <br>
*다음 글을 읽고, 물음에 답하시오.<br>
<p style="text-align: center;">(A)</p>
<div class="q_body textbox">
Startled by the loud ringing of the telephone, Liam woke up abruptly. It was midnight. He wondered who would be calling him at this hour. He reached for the phone. “Hello?” he asked. However, the caller had already hung up. Curious, Liam checked (a) hisaddress book and found that the number belonged to his brother, Pete. They hadn’t spoken to each other in almost a year due to their different lifestyles.
</div>
 <br>
 <p style="text-align: center;">(B)</p>
 <div class="q_body textbox">
Upon arrival, Liam saw Pete standing by the swing. Pete walked over and greeted (b) himwith a smile. They played soccer until they were both tired and out of breath, and then sat down on the grass, catching up on each other’s lives. Liam asked Pete<br>
about his life as a long-haul truck driver, and Pete shared stories of (c) histravels. They also reminisced about the countless hours they had spent playing in the park as kids.
</div>
 <br>
 <p style="text-align: center;">(C)</p>
 <div class="q_body textbox">
Liam remembered the countless hours they had spent at that park, playing soccer and simply enjoying each other’s company. Liam suggested, “Why don’t we meet there right now? I’ll bring a soccer ball.” Pete agreed, and they decided to meet at the park in 20 minutes. Liam grabbed his soccer ball and hurriedly headed out the door to meet (d) hisbrother at the park.
</div>
 <br>
 <p style="text-align: center;">(D)</p>
 <div class="q_body textbox">
Pete loved being on the road and exploring new places. Now he was a long-haul truck driver, traveling all throughout the Northeast. But Liam was more of a homebody, still living in (e) hishometown. Hesitating for a moment, Liam finally called him back. Pete answered, apologizing for the late call. “I was driving by our childhood park and felt nostalgic,” he said.
</div>
 <br>
82. 주어진 글 (A)에 이어질 내용을 순서에 맞게 배열한 것으로 가장 적절한 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q82" value="1">① (B) & (D) & (C) </input><br>
<input type="radio" name="q82" value="2">② (C) & (B) & (D)</input><br>
<input type="radio" name="q82" value="3">③ (C) & (D) & (B) </input><br>
<input type="radio" name="q82" value="4">④ (D) & (B) & (C)</input><br>
<input type="radio" name="q82" value="5">⑤ (D) & (C) & (B)<br>
 <br>
83. 밑줄 친 (a)~(e) 중에서 가리키는 대상이 나머지 넷과 다른것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q83" value="1">① (a)</input><br>
<input type="radio" name="q83" value="2">② (b)</input><br>
<input type="radio" name="q83" value="3">③ (c)</input><br>
<input type="radio" name="q83" value="4">④ (d)</input><br>
<input type="radio" name="q83" value="5">⑤ (e)<br>
 <br>
84. 윗글에 관한 내용으로 적절하지 <span style="text-decoration: underline;">않은</span> 것은?<br>
<div class="q_body">
</div>
<input type="radio" name="q84" value="1">① Liam은 전화벨 소리에 잠에서 깼다.</input><br>
<input type="radio" name="q84" value="2">② Liam과 Pete는 거의 1년간 서로 연락이 없었다.</input><br>
<input type="radio" name="q84" value="3">③ Pete는 공원에 도착해서 그네에 앉아 있었다.</input><br>
<input type="radio" name="q84" value="4">④ Liam과 Pete는 숨이 찰 때까지 축구를 했다.</input><br>
<input type="radio" name="q84" value="5">⑤ Liam이 Pete에게 만나자고 제안했다.<br><br>

      <input type="submit" value="제출">
    </form>
  </div>
</body>

<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<script>
  $(document).ready(function(){
    console.log("jQuery ready");
  });
</script>
</body>
</html>