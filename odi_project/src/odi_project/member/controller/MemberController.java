package odi_project.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.text.ParseException;

import odi_project.common.filter.HashUtil;
import odi_project.member.model.service.MemberServiceImpl;
import odi_project.member.model.vo.Member;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/insert.me")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			/*
			private String memberId;	// 아이디
			private String memberPwd;	//비밀번호
			private String email;		//이메일 
			private String memberNo;	//주민등록번호
			private String address;		//주소
			private String gender;		//성별  M-남자, F-여자 
			private byte[] memberProfile;// 프로필 이미지 
			private String aboutMe;		//
			private int memberAccess;	// 회원권환
			private Date createDate;	//회원가입일
			private String status;		//회원삭제여부
			private String memberName;  // 회원이름
			private String phone; 		// 핸드폰
				 * */
			
		
		// 프로필 이미지를 받기 위해 Part를 사용
	    Part profilePart = request.getPart("memberProfile");
	    InputStream profileInputStream = profilePart.getInputStream();
	    byte[] memberProfile = profileInputStream.readAllBytes();
		
		// 아이디
			String memberId = request.getParameter("memberId");
		// 비밀번호    
			String memberPwd = null;
			
			String password = request.getParameter("memberPwd");
			String passwordCheck = request.getParameter("memberPwdCheck");
			if(password != null && password.equals(passwordCheck)) {
				memberPwd = password;
			} else {
				request.setAttribute("error", "비밀번호가 일치하지 않습니다.");
			}
			
		// 이름	
			 String memberName = request.getParameter("memberName");
			 
		// 휴대폰 
			 String phone = request.getParameter("phone");
			 
		// 이메일    
		    String emailPrefix = request.getParameter("emailPrefix"); // 이메일 앞부분
		    String emailSuffix = request.getParameter("emailSuffix"); //이메일 뒷부분
		    String email = null;
		    
		    //이메일이 null이 아닌 경우에만 처리
		    if(emailPrefix != null && emailSuffix != null) {
		    	email = emailPrefix + "@" + emailSuffix;
		    }else {
		    	// 이메일이 null일 경우에 조취
		    	request.setAttribute("error", "이메일을 입력하세요");
		    }
		    
		 // 주민등록번호의 앞자리와 뒷자리를 가져오기
            String ssnPrefix = request.getParameter("ssnPrefix");
            String ssnSuffix = request.getParameter("ssnSuffix");
            
            String memberNo = null;

            // 주민등록번호의 뒷자리를 해싱
            try {
            	String hashedSSNSuffix = HashUtil.hashString(ssnSuffix);
				memberNo = ssnPrefix + hashedSSNSuffix;
			} catch (NoSuchAlgorithmException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		    
		// 주소    
		    String postcode = request.getParameter("postcode");
	        String basicAddress = request.getParameter("address");
	        String detailAddress = request.getParameter("detailAddress");
	        String extraAddress = request.getParameter("extraAddress");
		    	    
		 // StringBuilder를 사용하여 주소를 조합
		    StringBuilder addressBuilder = new StringBuilder();

		    if (postcode != null && !postcode.isEmpty()) {
		        addressBuilder.append(postcode).append(" ");
		    }

		    if (basicAddress != null && !basicAddress.isEmpty()) {
		        addressBuilder.append(basicAddress).append(" ");
		    }

		    if (detailAddress != null && !detailAddress.isEmpty()) {
		        addressBuilder.append(detailAddress).append(" ");
		    }

		    if (extraAddress != null && !extraAddress.isEmpty()) {
		        addressBuilder.append(extraAddress);
		    }
		    // 주소 변수에 저장
		    String address = addressBuilder.toString().trim();
		    
		    
		    String gender = request.getParameter("gender");

		    String aboutMe = request.getParameter("aboutMe");

		    // aboutMe와 memberAccess에 대한 형 변환 추가
//		    int memberAccess = Integer.parseInt(request.getParameter("memberAccess"));

//		    Date createDate = null;  // createDate 변수를 미리 선언 및 초기화
//
//		    try {
//		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//		        createDate = dateFormat.parse(request.getParameter("createDate"));
//		        // 여기에서 createDate를 사용할 수 있습니다.
//		    } catch (ParseException e) {
//		        e.printStackTrace(); // 또는 로깅을 통해 예외를 확인할 수 있습니다.
//		    }

//		    String status = request.getParameter("status");
		   
		    

		    Member m = Member.builder()
		            .memberId(memberId)
		            .memberPwd(memberPwd)
		            .memberNo(memberNo)
		            .email(email)
		            .address(address)
		            .gender(gender)
		            .memberProfile(memberProfile)
		            .aboutMe(aboutMe)
		            .memberName(memberName)
		            .phone(phone)
		            .build();

		    int result = new MemberServiceImpl().insertMember(m);

		    HttpSession session = request.getSession();

		    if (result > 0) { // 성공
		        session.setAttribute("alert", "회원가입 성공");
		    } else {
		        session.setAttribute("alertMsg", "회원가입 실패");
		    }

		    response.sendRedirect(request.getContextPath()); // 메인페이지로 이동시키기
		}


	}
