DROP TABLE USER IF exists;
CREATE TABLE USER(ID INTEGER NOT NULL AUTO_INCREMENT,
              username VARCHAR(255) NOT NULL, -- everyone has a first name
              fname VARCHAR(255) NOT NULL,  -- everyone has a last name
              lname VARCHAR(255) NOT NULL,  -- everyone has a last name
              DOB DATE Not null,
              password VARCHAR(255) NOT NULL,   -- everyone has a password
              type BOOLEAN DEFAULT 0,
              admin BOOLEAN DEFAULT 0,
              email varchar(255) NOT NULL, 
              color varchar(255), 
              bio varchar(255),
              points INTEGER,
              PRIMARY KEY(ID)
              );

DROP TABLE Post IF exists;
CREATE TABLE Post(
    pUserID INTEGER NOT NULL,
    postID INTEGER NOT NULL AUTO_INCREMENT, 
    title VARCHAR(255) NOT NULL, 
    pContent varchar(255) NOT NULL, 
    useful INTEGER, 
    PRIMARY KEY(postID), 
    FOREIGN KEY(pUserID) REFERENCES USER(ID)
);

DROP TABLE Comment IF exists; 
CREATE TABLE Comment(
    cUserID INTEGER NOT NULL, 
    cPostID INTEGER NOT NULL, 
    commentID INTEGER NOT NULL AUTO_INCREMENT,
    cContent varchar(255) NOT NULL, 
    useful INTEGER, 
    primary Key(commentID), 
    FOREIGN KEY(cUserID) REFERENCES USER(ID),
    FOREIGN KEY(cPostID) REFERENCES Post(postID)
);



