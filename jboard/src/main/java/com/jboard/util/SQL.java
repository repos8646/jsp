package com.jboard.util;

public class SQL {

	public static final String SELECT_TERMS = "select * from terms";
	
	public static final String SELECT_COUNT_USER = "SELECT COUNT(*) FROM `user` ";
	public static final String WHERE_UID  = "WHERE `uid`=?";
	public static final String WHERE_NICK = "WHERE `nick`=?";
	public static final String WHERE_EMAIL = "WHERE `email`=?";
	public static final String WHERE_HP = "WHERE `hp`=?";
	
	
	public static final String SELECT_USER = "select * from `user` where `uid`=? and `pass`=SHA2(?, 256)";
	public static final String INSERT_USER = "insert into user set "
											+ "`uid`=?,"
											+ "`pass`=SHA2(?, 256),"
											+ "`name`=?,"
											+ "`nick`=?,"
											+ "`email`=?,"
											+ "`hp`=?,"
											+ "`zip`=?,"
											+ "`addr1`=?,"
											+ "`addr2`=?,"
											+ "`regip`=?,"
											+ "`regDate`=NOW()";
	
	// article
	public static final String SELECT_COUNT_TOTAL = "SELECT COUNT(*) FROM `article`";
	public static final String SELECT_ARTICLE = "SELECT * FROM `article` AS a "
												+ "left JOIN `file` AS b ON a.`no`=b.ano "
												+ "WHERE `no`=?";
	public static final String SELECT_ARTICLEES = "SELECT a.*, b.nick FROM `article` AS a "
												+ "JOIN `user` AS b "
												+ "ON a.writer = b.uid "
												+ "ORDER BY `no` DESC "
												+ "LIMIT ?, 10";
	public static final String SELECT_MAX_NO = "SELECT MAX(`no`) FROM `article`";
	public static final String INSERT_ARTICLE = "insert into article set "
											//+ "`no`=?,"
											//+ "`cate`=?,"
											+ "`title`=?,"
											+ "`content`=?,"
											//+ "`comment`=?,"
											+ "`file`=?,"
											//+ "`hit`=?,"
											+ "`writer`=?,"
											+ "`regip`=?,"
											+ "`rdate`=NOW()";
	
	// comment
	public static final String SELECT_COMMENT = "SELECT a.*, b.nick from `comment` AS a "
												+ "JOIN `user` AS b ON a.writer = b.uid "
												+ "where `no`=? "
												+ "order by no";
	public static final String SELECT_COMMENTS = "SELECT a.*, b.nick from `comment` AS a "
												+ "JOIN `user` AS b ON a.writer = b.uid "
												+ "where `parent`=? "
												+ "order by no";
	public static final String INSERT_COMMENT = "insert into `comment` set "
												+ "`parent`=?,"
												+ "`content`=?,"
												+ "`writer`=?,"
												+ "`regip`=?,"
												+ "`rdate`=NOW()";
	
	public static final String UPDATE_COMMENT = "update `comment` set `content`=? where `no`=?";
	public static final String DELETE_COMMENT = "delete from `comment` where `no`=?";
	
	// file
	public static final String SELECT_FILE = "select * from file where fno=?";
	public static final String INSERT_FILE = "insert into file set "
												+ "`ano`=?,"
												+ "`oName`=?,"
												+ "`sName`=?,"
												+ "`rdate`=NOW()";
	
	public static final String UPDATE_FILE_DOWNLOAD_COUNT = "update file set `download` = `download` + 1 where `fno`=?";
	
	
}
