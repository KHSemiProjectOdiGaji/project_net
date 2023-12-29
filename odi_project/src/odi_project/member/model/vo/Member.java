package odi_project.member.model.vo;

import java.sql.Date;

import lombok.Getter;

@Getter
public class Member {
	
	/*
	 *  CREATE TABLE MEMBER (
        MEMBER_ID VARCHAR2(20) PRIMARY KEY,  -- ���̵� 
      	MEMBER_PWD VARCHAR2(20) NOT NULL,   -- ��й�ȣ
    	EMAIL VARCHAR2(20) NOT NULL,        -- �̸��� 
    	MEMBER_NO VARCHAR2(20) NOT NULL,    -- �ֹε�Ϲ�ȣ 
    	ADDRESS VARCHAR2(50) NOT NULL,      -- �ּ�
    	GENDER VARCHAR2(1) NOT NULL,        -- ����  M-����, F-���� 
    	MEMBER_PROFILE BLOB,                -- ������ �̹��� 
    	ABOUT_ME VARCHAR2(500),             -- �ڱ�Ұ� 
    	MEMBER_ACCESS NUMBER DEFAULT 1,     -- ȸ����ȯ 0-������, 1-ȸ�� 
    	CREATE_DATE DATE DEFAULT SYSDATE,   -- ȸ�������� 
    	STATUS VARCHAR2(1) DEFAULT 'Y');      -- ȸ���������� DEFAULT :Y
	 * 
	 * */
	private String memberId;	// ���̵�
	private String memberPwd;	//��й�ȣ
	private String email;		//�̸��� 
	private String memberNo;	//�ֹε�Ϲ�ȣ
	private String address;		//�ּ�
	private String gender;		//����  M-����, F-���� 
	private byte[] memberProfile;// ������ �̹��� 
	private String aboutMe;		//
	private int memberAccess;	// ȸ����ȯ
	private Date createDate;	//ȸ��������
	private String status;		//ȸ����������
	private String memberName;  // ȸ���̸�
	private String phone; 		// �ڵ���
	

}
