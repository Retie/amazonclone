package clone.amazon.web;

import clone.amazon.service.MemberService;
import org.junit.Test;
import org.junit.jupiter.api.DisplayName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

public class MemberControllerTest {

    @Autowired MemberService memberService;

    @Test
    @DisplayName("로그인 확인")
    public void 로그인() throws Exception {
        //GivenMember member = new Member("");
        //When

        //then

    }
}
