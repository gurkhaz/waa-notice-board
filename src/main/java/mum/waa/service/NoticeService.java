package mum.waa.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mum.waa.model.Notice;
import mum.waa.repository.NoticeRepository;

@Service
public class NoticeService {

	@Autowired
	NoticeRepository noticeRepository;

	public List<Notice> getAllNotices() {

		List<Notice> notices = new ArrayList<>();
		noticeRepository.findAll().forEach(notices::add);
		return notices;
	}

	public Notice getNotice(String id) {

		return noticeRepository.findOne(id);

	}

	public void addNotice(Notice notice) {

		noticeRepository.save(notice);
	}

	public void updateNotice(Notice notice) {

		noticeRepository.save(notice);
	}

	public void deleteNotice(String id) {

		noticeRepository.delete(id);
	}
}
