package kr.co.soccer.member;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.soccer.code.CodeVO;
import kr.co.soccer.code.ICommonCodeService;
import kr.co.soccer.exception.BizNotEffectedException;
import kr.co.soccer.exception.BizNotFoundException;

@Controller
public class MemberController { 
	
	@Inject
	private IMemberService memberService; 
	
	@Inject
	private ICommonCodeService codeService ; 
	
	private final Logger logger = LoggerFactory.getLogger(getClass()); 
	
	
	@ModelAttribute("memRegionList") 
	public List<CodeVO> getCodeListByParent() {
		 List<CodeVO> memRegionList = codeService.getCodeListByParent("RG00"); 
		 return memRegionList;
	}
	
	
	@RequestMapping("/member/memberList.sc")
	public void memberList( ModelMap model) {
		
		List<MemberVO> members = memberService.getMemberList();
		model.addAttribute("members", members);
	}
	
	@RequestMapping("/member/memberForm.sc")
	public void memberForm(@ModelAttribute("mem") MemberVO member) {
	}
	
	@PostMapping("/member/memberRegist.sc")
	public String memberRegist(@ModelAttribute("mem") MemberVO member) throws Exception {
		memberService.registMember(member);
		return "redirect:/login.sc";
	}
	
	@RequestMapping(path = "/member/memberView.sc",params="memId")
	public String memberView( String memId, ModelMap model ) {
		logger.debug("memId={}",memId);
		try {
			MemberVO mem = memberService.getMember(memId);
			model.addAttribute("mem", mem);
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(),ex);
		}
		return "member/memberView";
	}
	
	@RequestMapping(path = "/member/memberView.ajax",params="memId")
	@ResponseBody
	public MemberVO memberViewAjax(String memId, ModelMap model ) {
		logger.debug("memId={}",memId);
		MemberVO mem = null;
		try {
//			model.addAttribute("mem", mem);
			mem = memberService.getMember(memId);
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(),ex);
		}
		return mem;
	}
	
	@RequestMapping(path = "/member/memberEdit.sc" ,params="memId")
	public String memberEdit( String memId, ModelMap model) {
		logger.debug("memId={}",memId);
		try {
			MemberVO mem = memberService.getMember(memId);
			model.addAttribute("mem", mem);
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(),ex);
		}
		return "member/memberEdit";
	}
	
	@RequestMapping(path = "/member/memberModify.sc", method = RequestMethod.POST ,params = "memId")
	public String memberModify(@ModelAttribute("mem") @Valid MemberVO member, BindingResult errors, ModelMap model) {
		logger.debug("member={}",member);
		
		try {
			memberService.modifyMember(member);
		} catch (BizNotEffectedException ex) {
			logger.error(ex.getMessage(),ex);
		} catch (BizNotFoundException ex) {
			logger.error(ex.getMessage(),ex);
		}
		return "mypage/memberMypage";
	}
	
	@PostMapping(path = "/member/memberDelete.sc", params = "memId")
	public String memberDelete(@RequestParam(name="memId")String memId, ModelMap model) throws Exception {
		
		logger.debug("member={}",memId);
		try {
			memberService.removeMember(memId);
			}catch(BizNotFoundException ex) {
				logger.error(ex.getMessage(),ex);
			}catch (BizNotEffectedException ex) {
				logger.error(ex.getMessage(),ex);
		}
			return "redirect:/mypage/managerMypage.sc";
	}
	
	@RequestMapping(path = "/member/memberCheckedDelete.wow", params = "memId")
	public String memberCheckedDelete(@RequestParam(name="memId") String[] memIds, ModelMap model) {
		memberService.checkedMemberDelete(memIds);
		return "member/memberView";
	}
	
	
}
