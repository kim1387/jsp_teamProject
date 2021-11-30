package cham10jyo.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cham10jyo.user.dto.UserEditDto;
import cham10jyo.user.dto.UserJoinDto;
import cham10jyo.user.dto.UserLoginDto;
import cham10jyo.util.DbUtil;

public class UserDao {

	private Connection connection;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public UserDao() { // 의존성 주입
		connection = DbUtil.getConnection();
	}

	/**
	 * 유저 검증 - 로그인, 회원탈퇴, 회원 수정의 공통 로직
	 * @param email
	 * @param pw
	 * @return
	 */
	public boolean userCheck(String email, String pw) {
		try {
			pstmt = connection.prepareStatement("SELECT password from USER where email = ?");
			pstmt.setString(1,  email);
			rs = pstmt.executeQuery();
			if(rs.getString(1).equals(pw)) {
				return true; //성공
			}
			return false; //실패
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean login(UserLoginDto userLoginDto) {
		return userCheck(userLoginDto.getEmail(), userLoginDto.getPassword());
	}

	/**
	 * 회원 가입
	 * @param userJoinDto
	 * @return 성공 실패
	 */
	public boolean join(UserJoinDto userJoinDto) {
		try {
			connection = DbUtil.getConnection();
			pstmt = connection.prepareStatement("insert into user values ( ?, ?, ?, ?, ?)");
			pstmt.setString(1, userJoinDto.getEmail());
			pstmt.setString(2, userJoinDto.getPassword());
			pstmt.setString(3, userJoinDto.getName());
			pstmt.setString(4, userJoinDto.getGender());
			pstmt.setString(5, userJoinDto.getAuthority());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * //ToDo 비밀번호 검증 메서드 분리 하기
	 * 회원 탈퇴 메서드
	 * @param id
	 * @param pw_confirm 확인용 비밀번호
	 * @return 1 - 성공, 0 - 비밀번호 오류, -1 - db오류
	 */
	public int Withdrawal(String id, String pw_confirm) {
		try {
			if (userCheck(id, pw_confirm)){
				pstmt = connection.prepareStatement("delete from user where id = ?");
				pstmt.setString(1, id);
				pstmt.executeUpdate();
				return 1;
			}
			return 0; // 비밀번호 오류
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	/**
	 * //ToDO 회원정보 수정 전에 인증 과정 거치기 jsp에서
	 * 회원 정보 수정 메서드
	 * @param userEditDto 변경되는 정보들 저장 + PK 값
	 * @return 성공여부
	 */
	public boolean edit(UserEditDto userEditDto) {
		try {
			pstmt = connection.prepareStatement("update user set password=?, name=? where id=?");
			pstmt.setString(1, userEditDto.getPassword());
			pstmt.setString(2, userEditDto.getName());
			pstmt.setString(3, userEditDto.getEmail());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}


}
