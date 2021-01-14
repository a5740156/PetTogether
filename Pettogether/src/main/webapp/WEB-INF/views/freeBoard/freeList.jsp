<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<section class="category_set">
	

	<div class="category">

		<ul>
			<li><a href="#">진웅</a></li>
			<li><a href="#">계환</a></li>
			<li><a href="#">동건</a></li>
			<li><a href="#">대영</a></li>
		</ul>
	</div>

</section>

<section class="content">
        <div class="container">
            <div class="row">
                <h3 style="text-align: center;">여기는 리뷰 top4</h3>


                <div class="col-md-3 col-sm-6 col-xs-12 content-img ">

                    <div class="list">
                        <div class="list-img">
                            
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/resources/img/freeBoard/img_02.jpg" alt="">
                                </a>
                            

                        </div>
                            
                         
                    
                        <div class="list-content">
                            
                            <p >청남대 애견동반 버스패키지</p>
                            <div class="content-reivew">
                                <p id="star_grade" class="content-left">
                                   <i>★</i>
                                   <i>★</i>
                                   <i>★</i>
                                   <i>★</i>
                                   <i>★</i>
                                </p>
                                <p class="content-left">리뷰수 120</p>
                            </div>
                            	
                            	<p>
                                    
                                <span class="bad"  id="bad" >
                                    
                                    <img  src="${pageContext.request.contextPath }/resources/img/freeBoard/love.png" alt=""  onclick="changeImg()">
                                   
                                </span>
                       			</p>
                            
                           
                        </div>
                        
                    </div>



                </div>

				
                
              

                
                
            </div>
        </div>
                
                <div class="container page-nav">
                    <ul class="pagination">
                        <li class="previous"><a href="#">Previous</a></li>
                        <li><a href="#">1</a></li>
                        <li class="active"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li class="next"><a href="#">Next</a></li>
                    </ul>
                  </div>
        
    </section>



<script>
			function changeImg() {
				
				
				if(event.target.attributes[0].nodeValue === "/project/resources/img/freeBoard/love2.png"){
					event.target.attributes[0].nodeValue = "/project/resources/img/freeBoard/love.png";
                }else if(event.target.attributes[0].nodeValue === "/project/resources/img/freeBoard/love.png") {
                	event.target.attributes[0].nodeValue = "/project/resources/img/freeBoard/love2.png";
                    
                }else{
                    return ;
                }

				
			}
			
			

            
            
           



    </script>




