CREATE PROCEDURE sp_Select_User_By_Username(username varchar(50))
BEGIN
	SELECT * FROM MomAndPop.USER u WHERE u.username = username;
END
