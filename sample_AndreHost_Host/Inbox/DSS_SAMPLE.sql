CREATE VIEW DSS_LOAD AS SELECT F2727,F2728,F2729,F2730,F2731,F2732,F253,F2733 FROM DSS_DCT;

INSERT INTO DSS_LOAD VALUES
(30,Portal,sample_AndreHost_Host\FirstLoad,INBOX,Application_sample.sql,2021252 08:19:48,@DJSF @FMT(T6F,@NOW),20304F2B),
(30,Portal,sample_AndreHost_Host,ROOT,INSTALL.sql,2019034 17:25:44,@DJSF @FMT(T6F,@NOW),08BB7C9C),
(30,Portal,sample_AndreHost_Host,OFFICE,Samples.ini,2021276 17:54:26,@DJSF @FMT(T6F,@NOW),631837F8),

DELETE FROM DSS_TAB WHERE F2729 IN (SELECT F2729 FROM DSS_LOAD);
@UPDATE_BATCH(JOB=ADDRPL,TAR=DSS_TAB,KEY=F2729=:F2729 AND F2730=:F2730 AND F2731=:F2731,
SRC=SELECT * FROM DSS_LOAD);
DROP TABLE DSS_LOAD;

