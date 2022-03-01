package project4.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import project4.domain.UrReplyVO;
import project4.service.UrReplyService;

@RestController
@Log4j
@AllArgsConstructor
public class UrReplyContoller {
	private UrReplyService service;

	@PostMapping(value = "urReplies/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody UrReplyVO vo) {
		log.info("UrReplyVO: " + vo);
		int insertCount = service.register(vo);
		log.info("Reply INSERT COUNT: " + insertCount);
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@GetMapping(value = "urReplies/{rno}", produces = { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<UrReplyVO> get(@PathVariable("rno") int rno) {

		log.info("get: " + rno);

		return new ResponseEntity<>(service.get(rno), HttpStatus.OK);
	}

	@RequestMapping(method = { RequestMethod.PUT,
			RequestMethod.PATCH }, value = "/{rno}", consumes = "application/json", produces = {
					MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> modify(@RequestBody UrReplyVO vo, @PathVariable("rno") int rno) {
		vo.setRno(rno);
		log.info("rno: " + rno);
		log.info("modify: " + vo);
		return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}

	@DeleteMapping(value = "urReplies/{rno}", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> remove(@PathVariable("rno") int rno) {
		log.info("remove: " + rno);
		return service.remove(rno) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@GetMapping(value = "/project4/urReplies/pages/{urkey}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<UrReplyVO>> getList(@PathVariable("urkey") int urkey) {

		log.info("getList.................");
		//Criteria cri = new Criteria(page, 10);
		//log.info(cri);

		return new ResponseEntity<>(service.getList(urkey), HttpStatus.OK);
	}

}
