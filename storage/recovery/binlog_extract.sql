# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#260731 11:24:02 server id 1  end_log_pos 126 CRC32 0x746fde32 	Start: binlog v 4, server v 8.0.30 created 260731 11:24:02 at startup
# Warning: this binlog is either in use or was not closed properly.
ROLLBACK/*!*/;
BINLOG '
YiNsag8BAAAAegAAAH4AAAABAAQAOC4wLjMwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAABiI2xqEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAATLeb3Q=
'/*!*/;
# at 126
#260731 11:24:02 server id 1  end_log_pos 157 CRC32 0xa4e93f11 	Previous-GTIDs
# [empty]
# at 157
#260731 11:24:16 server id 1  end_log_pos 236 CRC32 0x6cac5420 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1785471856955981	immediate_commit_timestamp=1785471856955981	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471856955981 (2026-07-31 11:24:16.955981 SE Asia Standard Time)
# immediate_commit_timestamp=1785471856955981 (2026-07-31 11:24:16.955981 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471856955981*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#260731 11:24:16 server id 1  end_log_pos 311 CRC32 0x62c5a45d 	Query	thread_id=8	exec_time=0	error_code=0
SET TIMESTAMP=1785471856/*!*/;
SET @@session.pseudo_thread_id=8/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=224,@@session.collation_connection=224,@@session.collation_server=255/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 311
#260731 11:24:16 server id 1  end_log_pos 370 CRC32 0xc31c5f01 	Table_map: `news`.`cache` mapped to number 88
# at 370
#260731 11:24:16 server id 1  end_log_pos 486 CRC32 0xadb80f58 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
cCNsahMBAAAAOwAAAHIBAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4AFf
HMM=
cCNsah4BAAAAdAAAAOYBAAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjAyMWQzZjgzMDhlOGQ3YzJiZjk4OGY3Zjg4Y2IxZTU3NzcwZWRmYTEEAABpOjE7rCNsalgP
uK0=
'/*!*/;
# at 486
#260731 11:24:16 server id 1  end_log_pos 517 CRC32 0x17bc72ef 	Xid = 14
COMMIT/*!*/;
# at 517
#260731 11:24:19 server id 1  end_log_pos 596 CRC32 0x388123e5 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=yes	original_committed_timestamp=1785471859696747	immediate_commit_timestamp=1785471859696747	transaction_length=473
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471859696747 (2026-07-31 11:24:19.696747 SE Asia Standard Time)
# immediate_commit_timestamp=1785471859696747 (2026-07-31 11:24:19.696747 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471859696747*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 596
#260731 11:24:19 server id 1  end_log_pos 679 CRC32 0x86e83352 	Query	thread_id=8	exec_time=0	error_code=0
SET TIMESTAMP=1785471859/*!*/;
SET @@session.time_zone='SYSTEM'/*!*/;
BEGIN
/*!*/;
# at 679
#260731 11:24:19 server id 1  end_log_pos 757 CRC32 0x2c49948a 	Table_map: `news`.`activity_logs` mapped to number 101
# at 757
#260731 11:24:19 server id 1  end_log_pos 959 CRC32 0xb83aa5c3 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
cyNsahMBAAAATgAAAPUCAAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeCKlEks
cyNsah4BAAAAygAAAL8DAAAAAGUAAAAAAAEAAgAI/wodAwAAAAAAAAoAcGFnZV92aXNpdBEAaHR0
cHM6Ly9uZXdzLnRlc3QJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBX
aW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUv
MTUwLjAuMC4wIFNhZmFyaS81MzcuMzZqa8EDw6U6uA==
'/*!*/;
# at 959
#260731 11:24:19 server id 1  end_log_pos 990 CRC32 0x0b726a63 	Xid = 95
COMMIT/*!*/;
# at 990
#260731 11:24:19 server id 1  end_log_pos 1069 CRC32 0x48157e25 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=yes	original_committed_timestamp=1785471859710479	immediate_commit_timestamp=1785471859710479	transaction_length=726
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471859710479 (2026-07-31 11:24:19.710479 SE Asia Standard Time)
# immediate_commit_timestamp=1785471859710479 (2026-07-31 11:24:19.710479 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471859710479*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1069
#260731 11:24:19 server id 1  end_log_pos 1144 CRC32 0xbf5ab0aa 	Query	thread_id=8	exec_time=0	error_code=0
SET TIMESTAMP=1785471859/*!*/;
BEGIN
/*!*/;
# at 1144
#260731 11:24:19 server id 1  end_log_pos 1212 CRC32 0x890cc6f9 	Table_map: `news`.`sessions` mapped to number 83
# at 1212
#260731 11:24:19 server id 1  end_log_pos 1685 CRC32 0x023c378f 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
cyNsahMBAAAARAAAALwEAAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4PnGDIk=
cyNsah4BAAAA2QEAAJUGAAAAAFMAAAAAAAEAAgAG/wIoAHE5WVZTOXFHZk9lQmhKeGNhVGdJZGMz
djlqMnBOVlJBT0R5dFR5N08JMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4w
OyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJv
bWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYIAQAAWVRvek9udHpPalk2SWw5MGIydGxiaUk3Y3pv
ME1Eb2llbHBtUmpKRWRqazVWR2RZZDNkVGEwVmhabXhpWTFKbE0yMWtkVlZUTVhOU1FVZDBVMHQw
VWlJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRjNkltaDBk
SEJ6T2k4dmJtVjNjeTUwWlhOMElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1VpTzMxek9q
WTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJF
Nk1EcDdmWDE5cyNsao83PAI=
'/*!*/;
# at 1685
#260731 11:24:19 server id 1  end_log_pos 1716 CRC32 0xa44bfca6 	Xid = 113
COMMIT/*!*/;
# at 1716
#260731 11:24:31 server id 1  end_log_pos 1795 CRC32 0x10724b17 	Anonymous_GTID	last_committed=3	sequence_number=4	rbr_only=yes	original_committed_timestamp=1785471871380977	immediate_commit_timestamp=1785471871380977	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471871380977 (2026-07-31 11:24:31.380977 SE Asia Standard Time)
# immediate_commit_timestamp=1785471871380977 (2026-07-31 11:24:31.380977 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471871380977*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1795
#260731 11:24:31 server id 1  end_log_pos 1870 CRC32 0xba0fb7dd 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1785471871/*!*/;
BEGIN
/*!*/;
# at 1870
#260731 11:24:31 server id 1  end_log_pos 1929 CRC32 0x2a085b0b 	Table_map: `news`.`cache` mapped to number 88
# at 1929
#260731 11:24:31 server id 1  end_log_pos 2045 CRC32 0xe4664137 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
fyNsahMBAAAAOwAAAIkHAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Atb
CCo=
fyNsah4BAAAAdAAAAP0HAAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjliNjIyYTlmMjM5YTY4NzMyODhjZDMwYmQyOWRhYWU4ODUxZTMwOGIEAABpOjE7uyNsajdB
ZuQ=
'/*!*/;
# at 2045
#260731 11:24:31 server id 1  end_log_pos 2076 CRC32 0xb3e1d001 	Xid = 128
COMMIT/*!*/;
# at 2076
#260731 11:24:31 server id 1  end_log_pos 2155 CRC32 0xb37a4a4a 	Anonymous_GTID	last_committed=4	sequence_number=5	rbr_only=yes	original_committed_timestamp=1785471871756448	immediate_commit_timestamp=1785471871756448	transaction_length=491
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471871756448 (2026-07-31 11:24:31.756448 SE Asia Standard Time)
# immediate_commit_timestamp=1785471871756448 (2026-07-31 11:24:31.756448 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471871756448*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2155
#260731 11:24:31 server id 1  end_log_pos 2238 CRC32 0xa2adfcfa 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1785471871/*!*/;
BEGIN
/*!*/;
# at 2238
#260731 11:24:31 server id 1  end_log_pos 2316 CRC32 0x3807e439 	Table_map: `news`.`activity_logs` mapped to number 101
# at 2316
#260731 11:24:31 server id 1  end_log_pos 2536 CRC32 0xaa74da63 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
fyNsahMBAAAATgAAAAwJAAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeA55Ac4
fyNsah4BAAAA3AAAAOgJAAAAAGUAAAAAAAEAAgAI/woeAwAAAAAAAAoAcGFnZV92aXNpdCMAaHR0
cHM6Ly9uZXdzLnRlc3QvY2F0ZWdvcnkvb2xhaHJhZ2EJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAo
V2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBs
aWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZqa8EPY9p0qg==
'/*!*/;
# at 2536
#260731 11:24:31 server id 1  end_log_pos 2567 CRC32 0x285524f9 	Xid = 188
COMMIT/*!*/;
# at 2567
#260731 11:24:31 server id 1  end_log_pos 2646 CRC32 0x67dc19e6 	Anonymous_GTID	last_committed=5	sequence_number=6	rbr_only=yes	original_committed_timestamp=1785471871766860	immediate_commit_timestamp=1785471871766860	transaction_length=1214
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471871766860 (2026-07-31 11:24:31.766860 SE Asia Standard Time)
# immediate_commit_timestamp=1785471871766860 (2026-07-31 11:24:31.766860 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471871766860*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2646
#260731 11:24:31 server id 1  end_log_pos 2730 CRC32 0x65826ff2 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1785471871/*!*/;
BEGIN
/*!*/;
# at 2730
#260731 11:24:31 server id 1  end_log_pos 2798 CRC32 0x2306669a 	Table_map: `news`.`sessions` mapped to number 83
# at 2798
#260731 11:24:31 server id 1  end_log_pos 3750 CRC32 0x7047878b 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
fyNsahMBAAAARAAAAO4KAAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4JpmBiM=
fyNsah8BAAAAuAMAAKYOAAAAAFMAAAAAAAEAAgAG//8CKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRj
M3Y5ajJwTlZSQU9EeXRUeTdPCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2CAEAAFlUb3pPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pZWxwbVJqSkVkams1VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0
MFVpSTdjem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1UYzZJbWgw
ZEhCek9pOHZibVYzY3k1MFpYTjBJanR6T2pVNkluSnZkWFJsSWp0ek9qUTZJbWh2YldVaU8zMXpP
alk2SWw5bWJHRnphQ0k3WVRveU9udHpPak02SW05c1pDSTdZVG93T250OWN6b3pPaUp1WlhjaU8y
RTZNRHA3ZlgxOXMjbGoCKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRjM3Y5ajJwTlZSQU9EeXRUeTdP
CTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBw
bGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZh
cmkvNTM3LjM2MAEAAFlUb3pPbnR6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pZWxwbVJqSkVkams1
VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0MFVpSTdjem81T2lKZmNISmxk
bWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk16VTZJbWgwZEhCek9pOHZibVYzY3k1MFpY
TjBMMk5oZEdWbmIzSjVMMjlzWVdoeVlXZGhJanR6T2pVNkluSnZkWFJsSWp0ek9qRXpPaUp1Wlhk
ekxtTmhkR1ZuYjNKNUlqdDljem8yT2lKZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2
TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWZRPT1/I2xqi4dHcA==
'/*!*/;
# at 3750
#260731 11:24:31 server id 1  end_log_pos 3781 CRC32 0x6ddd0a58 	Xid = 203
COMMIT/*!*/;
# at 3781
#260731 11:24:35 server id 1  end_log_pos 3860 CRC32 0xbda76a53 	Anonymous_GTID	last_committed=6	sequence_number=7	rbr_only=yes	original_committed_timestamp=1785471875974298	immediate_commit_timestamp=1785471875974298	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471875974298 (2026-07-31 11:24:35.974298 SE Asia Standard Time)
# immediate_commit_timestamp=1785471875974298 (2026-07-31 11:24:35.974298 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471875974298*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3860
#260731 11:24:35 server id 1  end_log_pos 3935 CRC32 0x85bcf908 	Query	thread_id=10	exec_time=0	error_code=0
SET TIMESTAMP=1785471875/*!*/;
BEGIN
/*!*/;
# at 3935
#260731 11:24:35 server id 1  end_log_pos 3994 CRC32 0x54e40648 	Table_map: `news`.`cache` mapped to number 88
# at 3994
#260731 11:24:35 server id 1  end_log_pos 4192 CRC32 0xad342ab5 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
gyNsahMBAAAAOwAAAJoPAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4EgG
5FQ=
gyNsah8BAAAAxgAAAGAQAAAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDowMjFkM2Y4MzA4ZThkN2MyYmY5ODhmN2Y4OGNiMWU1Nzc3MGVkZmExBAAAaToxO6wjbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDowMjFkM2Y4MzA4ZThkN2MyYmY5ODhmN2Y4OGNi
MWU1Nzc3MGVkZmExBAAAaToyO78jbGq1KjSt
'/*!*/;
# at 4192
#260731 11:24:35 server id 1  end_log_pos 4223 CRC32 0x14745b04 	Xid = 218
COMMIT/*!*/;
# at 4223
#260731 11:24:36 server id 1  end_log_pos 4302 CRC32 0xe30db959 	Anonymous_GTID	last_committed=7	sequence_number=8	rbr_only=yes	original_committed_timestamp=1785471876039048	immediate_commit_timestamp=1785471876039048	transaction_length=473
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471876039048 (2026-07-31 11:24:36.039048 SE Asia Standard Time)
# immediate_commit_timestamp=1785471876039048 (2026-07-31 11:24:36.039048 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471876039048*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4302
#260731 11:24:36 server id 1  end_log_pos 4385 CRC32 0x8109745c 	Query	thread_id=10	exec_time=0	error_code=0
SET TIMESTAMP=1785471876/*!*/;
BEGIN
/*!*/;
# at 4385
#260731 11:24:36 server id 1  end_log_pos 4463 CRC32 0x7186d819 	Table_map: `news`.`activity_logs` mapped to number 101
# at 4463
#260731 11:24:36 server id 1  end_log_pos 4665 CRC32 0x18dde3eb 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
hCNsahMBAAAATgAAAG8RAAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeAZ2IZx
hCNsah4BAAAAygAAADkSAAAAAGUAAAAAAAEAAgAI/wofAwAAAAAAAAoAcGFnZV92aXNpdBEAaHR0
cHM6Ly9uZXdzLnRlc3QJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBX
aW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUv
MTUwLjAuMC4wIFNhZmFyaS81MzcuMzZqa8EU6+PdGA==
'/*!*/;
# at 4665
#260731 11:24:36 server id 1  end_log_pos 4696 CRC32 0x9be265b1 	Xid = 299
COMMIT/*!*/;
# at 4696
#260731 11:24:36 server id 1  end_log_pos 4775 CRC32 0x1a8de0f0 	Anonymous_GTID	last_committed=8	sequence_number=9	rbr_only=yes	original_committed_timestamp=1785471876049504	immediate_commit_timestamp=1785471876049504	transaction_length=1214
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471876049504 (2026-07-31 11:24:36.049504 SE Asia Standard Time)
# immediate_commit_timestamp=1785471876049504 (2026-07-31 11:24:36.049504 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471876049504*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4775
#260731 11:24:36 server id 1  end_log_pos 4859 CRC32 0x7be0fef4 	Query	thread_id=10	exec_time=0	error_code=0
SET TIMESTAMP=1785471876/*!*/;
BEGIN
/*!*/;
# at 4859
#260731 11:24:36 server id 1  end_log_pos 4927 CRC32 0xf91a910b 	Table_map: `news`.`sessions` mapped to number 83
# at 4927
#260731 11:24:36 server id 1  end_log_pos 5879 CRC32 0xca6630e6 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
hCNsahMBAAAARAAAAD8TAAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4AuRGvk=
hCNsah8BAAAAuAMAAPcWAAAAAFMAAAAAAAEAAgAG//8CKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRj
M3Y5ajJwTlZSQU9EeXRUeTdPCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2MAEAAFlUb3pPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pZWxwbVJqSkVkams1VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0
MFVpSTdjem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk16VTZJbWgw
ZEhCek9pOHZibVYzY3k1MFpYTjBMMk5oZEdWbmIzSjVMMjlzWVdoeVlXZGhJanR6T2pVNkluSnZk
WFJsSWp0ek9qRXpPaUp1WlhkekxtTmhkR1ZuYjNKNUlqdDljem8yT2lKZlpteGhjMmdpTzJFNk1q
cDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWZRPT1/I2xqAigA
cTlZVlM5cUdmT2VCaEp4Y2FUZ0lkYzN2OWoycE5WUkFPRHl0VHk3TwkxMjcuMC4wLjFvAE1vemls
bGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAo
S0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNggBAABZVG96
T250ek9qWTZJbDkwYjJ0bGJpSTdjem8wTURvaWVscG1SakpFZGprNVZHZFlkM2RUYTBWaFpteGlZ
MUpsTTIxa2RWVlRNWE5TUVVkMFUwdDBVaUk3Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6
b3pPaUoxY213aU8zTTZNVGM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wSWp0ek9qVTZJbkp2ZFhS
bElqdHpPalE2SW1odmJXVWlPMzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNaQ0k3
WVRvd09udDljem96T2lKdVpYY2lPMkU2TURwN2ZYMTmEI2xq5jBmyg==
'/*!*/;
# at 5879
#260731 11:24:36 server id 1  end_log_pos 5910 CRC32 0xbcfe4566 	Xid = 314
COMMIT/*!*/;
# at 5910
#260731 11:25:30 server id 1  end_log_pos 5989 CRC32 0x8aed7ce5 	Anonymous_GTID	last_committed=9	sequence_number=10	rbr_only=yes	original_committed_timestamp=1785471930844502	immediate_commit_timestamp=1785471930844502	transaction_length=1302
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471930844502 (2026-07-31 11:25:30.844502 SE Asia Standard Time)
# immediate_commit_timestamp=1785471930844502 (2026-07-31 11:25:30.844502 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471930844502*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5989
#260731 11:25:30 server id 1  end_log_pos 6073 CRC32 0x90937d84 	Query	thread_id=19	exec_time=0	error_code=0
SET TIMESTAMP=1785471930/*!*/;
BEGIN
/*!*/;
# at 6073
#260731 11:25:30 server id 1  end_log_pos 6141 CRC32 0x7c2397eb 	Table_map: `news`.`sessions` mapped to number 83
# at 6141
#260731 11:25:30 server id 1  end_log_pos 7181 CRC32 0xc77daee8 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
uiNsahMBAAAARAAAAP0XAAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4OuXI3w=
uiNsah8BAAAAEAQAAA0cAAAAAFMAAAAAAAEAAgAG//8CKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRj
M3Y5ajJwTlZSQU9EeXRUeTdPCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2CAEAAFlUb3pPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pZWxwbVJqSkVkams1VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0
MFVpSTdjem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1UYzZJbWgw
ZEhCek9pOHZibVYzY3k1MFpYTjBJanR6T2pVNkluSnZkWFJsSWp0ek9qUTZJbWh2YldVaU8zMXpP
alk2SWw5bWJHRnphQ0k3WVRveU9udHpPak02SW05c1pDSTdZVG93T250OWN6b3pPaUp1WlhjaU8y
RTZNRHA3ZlgxOYQjbGoCKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRjM3Y5ajJwTlZSQU9EeXRUeTdP
CTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBw
bGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZh
cmkvNTM3LjM2iAEAAFlUbzBPbnR6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pZWxwbVJqSkVkams1
VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0MFVpSTdjem81T2lKZmNISmxk
bWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qTTZJbWgwZEhCek9pOHZibVYzY3k1MFpY
TjBMMkZrYldsdUlqdHpPalU2SW5KdmRYUmxJanR6T2pNd09pSm1hV3hoYldWdWRDNWhaRzFwYmk1
d1lXZGxjeTVrWVhOb1ltOWhjbVFpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlz
WkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pNNkluVnliQ0k3WVRveE9udHpP
amc2SW1sdWRHVnVaR1ZrSWp0ek9qSXpPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJp
STdmWDA9uiNsauiufcc=
'/*!*/;
# at 7181
#260731 11:25:30 server id 1  end_log_pos 7212 CRC32 0x8fd8e005 	Xid = 407
COMMIT/*!*/;
# at 7212
#260731 11:25:35 server id 1  end_log_pos 7291 CRC32 0x58a619ae 	Anonymous_GTID	last_committed=10	sequence_number=11	rbr_only=yes	original_committed_timestamp=1785471935790970	immediate_commit_timestamp=1785471935790970	transaction_length=1430
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471935790970 (2026-07-31 11:25:35.790970 SE Asia Standard Time)
# immediate_commit_timestamp=1785471935790970 (2026-07-31 11:25:35.790970 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471935790970*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7291
#260731 11:25:35 server id 1  end_log_pos 7375 CRC32 0xaeb1b690 	Query	thread_id=20	exec_time=0	error_code=0
SET TIMESTAMP=1785471935/*!*/;
BEGIN
/*!*/;
# at 7375
#260731 11:25:35 server id 1  end_log_pos 7443 CRC32 0x6e2342f2 	Table_map: `news`.`sessions` mapped to number 83
# at 7443
#260731 11:25:35 server id 1  end_log_pos 8611 CRC32 0xc0fd1884 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
vyNsahMBAAAARAAAABMdAAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4PJCI24=
vyNsah8BAAAAkAQAAKMhAAAAAFMAAAAAAAEAAgAG//8CKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRj
M3Y5ajJwTlZSQU9EeXRUeTdPCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2iAEAAFlUbzBPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pZWxwbVJqSkVkams1VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0
MFVpSTdjem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qTTZJbWgw
ZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUlqdHpPalU2SW5KdmRYUmxJanR6T2pNd09pSm1h
V3hoYldWdWRDNWhaRzFwYmk1d1lXZGxjeTVrWVhOb1ltOWhjbVFpTzMxek9qWTZJbDltYkdGemFD
STdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pN
NkluVnliQ0k3WVRveE9udHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSXpPaUpvZEhSd2N6b3ZMMjVs
ZDNNdWRHVnpkQzloWkcxcGJpSTdmWDA9uiNsagIoAHE5WVZTOXFHZk9lQmhKeGNhVGdJZGMzdjlq
MnBOVlJBT0R5dFR5N08JMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBX
aW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUv
MTUwLjAuMC4wIFNhZmFyaS81MzcuMzaIAQAAWVRvME9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1E
b2llbHBtUmpKRWRqazVWR2RZZDNkVGEwVmhabXhpWTFKbE0yMWtkVlZUTVhOU1FVZDBVMHQwVWlJ
N2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWprNkltaDBkSEJ6
T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNkluSnZkWFJsSWp0ek9qSTFP
aUptYVd4aGJXVnVkQzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5Y3pvMk9pSmZabXhoYzJnaU8y
RTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lK
MWNtd2lPMkU2TVRwN2N6bzRPaUpwYm5SbGJtUmxaQ0k3Y3pveU16b2lhSFIwY0hNNkx5OXVaWGR6
TG5SbGMzUXZZV1J0YVc0aU8zMTm/I2xqhBj9wA==
'/*!*/;
# at 8611
#260731 11:25:35 server id 1  end_log_pos 8642 CRC32 0x05f2759c 	Xid = 419
COMMIT/*!*/;
# at 8642
#260731 11:25:45 server id 1  end_log_pos 8721 CRC32 0x13619216 	Anonymous_GTID	last_committed=11	sequence_number=12	rbr_only=yes	original_committed_timestamp=1785471945318439	immediate_commit_timestamp=1785471945318439	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471945318439 (2026-07-31 11:25:45.318439 SE Asia Standard Time)
# immediate_commit_timestamp=1785471945318439 (2026-07-31 11:25:45.318439 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471945318439*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8721
#260731 11:25:45 server id 1  end_log_pos 8796 CRC32 0xd7b67f48 	Query	thread_id=21	exec_time=0	error_code=0
SET TIMESTAMP=1785471945/*!*/;
BEGIN
/*!*/;
# at 8796
#260731 11:25:45 server id 1  end_log_pos 8855 CRC32 0x11b88c5d 	Table_map: `news`.`cache` mapped to number 88
# at 8855
#260731 11:25:45 server id 1  end_log_pos 8971 CRC32 0x123756c4 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
ySNsahMBAAAAOwAAAJciAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4F2M
uBE=
ySNsah4BAAAAdAAAAAsjAAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjFmMjU2OTJlOTA3MTg4NmQ3ZDRiMzgyMDE5MGIwOTYwMmY3NDgwMjIEAABpOjE7BSRsasRW
NxI=
'/*!*/;
# at 8971
#260731 11:25:45 server id 1  end_log_pos 9002 CRC32 0x152f84b2 	Xid = 434
COMMIT/*!*/;
# at 9002
#260731 11:25:45 server id 1  end_log_pos 9081 CRC32 0x01b47612 	Anonymous_GTID	last_committed=12	sequence_number=13	rbr_only=yes	original_committed_timestamp=1785471945401365	immediate_commit_timestamp=1785471945401365	transaction_length=384
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471945401365 (2026-07-31 11:25:45.401365 SE Asia Standard Time)
# immediate_commit_timestamp=1785471945401365 (2026-07-31 11:25:45.401365 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471945401365*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9081
#260731 11:25:45 server id 1  end_log_pos 9156 CRC32 0x8fb45ef3 	Query	thread_id=21	exec_time=0	error_code=0
SET TIMESTAMP=1785471945/*!*/;
BEGIN
/*!*/;
# at 9156
#260731 11:25:45 server id 1  end_log_pos 9215 CRC32 0x9a815f2f 	Table_map: `news`.`cache` mapped to number 88
# at 9215
#260731 11:25:45 server id 1  end_log_pos 9355 CRC32 0x85a45279 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
ySNsahMBAAAAOwAAAP8jAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4C9f
gZo=
ySNsah4BAAAAjAAAAIskAAAAAFgAAAAAAAEAAgAD/wBSAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTY6dGlt
ZXINAABpOjE3ODU0NzIwMDU7BSRsanlSpIU=
'/*!*/;
# at 9355
#260731 11:25:45 server id 1  end_log_pos 9386 CRC32 0xc9f0fb7b 	Xid = 449
COMMIT/*!*/;
# at 9386
#260731 11:25:45 server id 1  end_log_pos 9465 CRC32 0xc4f433e2 	Anonymous_GTID	last_committed=13	sequence_number=14	rbr_only=yes	original_committed_timestamp=1785471945403478	immediate_commit_timestamp=1785471945403478	transaction_length=369
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471945403478 (2026-07-31 11:25:45.403478 SE Asia Standard Time)
# immediate_commit_timestamp=1785471945403478 (2026-07-31 11:25:45.403478 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471945403478*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9465
#260731 11:25:45 server id 1  end_log_pos 9540 CRC32 0xd01fda99 	Query	thread_id=21	exec_time=0	error_code=0
SET TIMESTAMP=1785471945/*!*/;
BEGIN
/*!*/;
# at 9540
#260731 11:25:45 server id 1  end_log_pos 9599 CRC32 0x1ed07d5a 	Table_map: `news`.`cache` mapped to number 88
# at 9599
#260731 11:25:45 server id 1  end_log_pos 9724 CRC32 0xa7ee61c1 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
ySNsahMBAAAAOwAAAH8lAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Fp9
0B4=
ySNsah4BAAAAfQAAAPwlAAAAAFgAAAAAAAEAAgAD/wBMAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTYEAABp
OjA7BSRsasFh7qc=
'/*!*/;
# at 9724
#260731 11:25:45 server id 1  end_log_pos 9755 CRC32 0xda690d97 	Xid = 455
COMMIT/*!*/;
# at 9755
#260731 11:25:45 server id 1  end_log_pos 9834 CRC32 0x8c874df1 	Anonymous_GTID	last_committed=14	sequence_number=15	rbr_only=yes	original_committed_timestamp=1785471945406697	immediate_commit_timestamp=1785471945406697	transaction_length=469
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471945406697 (2026-07-31 11:25:45.406697 SE Asia Standard Time)
# immediate_commit_timestamp=1785471945406697 (2026-07-31 11:25:45.406697 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471945406697*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9834
#260731 11:25:45 server id 1  end_log_pos 9918 CRC32 0xbf15b880 	Query	thread_id=21	exec_time=0	error_code=0
SET TIMESTAMP=1785471945/*!*/;
BEGIN
/*!*/;
# at 9918
#260731 11:25:45 server id 1  end_log_pos 9977 CRC32 0x145d976e 	Table_map: `news`.`cache` mapped to number 88
# at 9977
#260731 11:25:45 server id 1  end_log_pos 10193 CRC32 0xadd96237 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
ySNsahMBAAAAOwAAAPkmAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4G6X
XRQ=
ySNsah8BAAAA2AAAANEnAAAAAFgAAAAAAAEAAgAD//8ATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJl
LXJhdGUtbGltaXRlcjoxNmQzNmRmZjlhYmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAA
aTowOwUkbGoATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJlLXJhdGUtbGltaXRlcjoxNmQzNmRmZjlh
YmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAAaToxOwUkbGo3Ytmt
'/*!*/;
# at 10193
#260731 11:25:45 server id 1  end_log_pos 10224 CRC32 0x10c69a7b 	Xid = 459
COMMIT/*!*/;
# at 10224
#260731 11:25:45 server id 1  end_log_pos 10303 CRC32 0xa66d67c1 	Anonymous_GTID	last_committed=15	sequence_number=16	rbr_only=yes	original_committed_timestamp=1785471945514317	immediate_commit_timestamp=1785471945514317	transaction_length=505
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471945514317 (2026-07-31 11:25:45.514317 SE Asia Standard Time)
# immediate_commit_timestamp=1785471945514317 (2026-07-31 11:25:45.514317 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471945514317*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 10303
#260731 11:25:45 server id 1  end_log_pos 10386 CRC32 0x0b97b3dd 	Query	thread_id=21	exec_time=0	error_code=0
SET TIMESTAMP=1785471945/*!*/;
BEGIN
/*!*/;
# at 10386
#260731 11:25:45 server id 1  end_log_pos 10464 CRC32 0x4730664d 	Table_map: `news`.`activity_logs` mapped to number 101
# at 10464
#260731 11:25:45 server id 1  end_log_pos 10698 CRC32 0x50a4aed9 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
ySNsahMBAAAATgAAAOAoAAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeBNZjBH
ySNsah4BAAAA6gAAAMopAAAAAGUAAAAAAAEAAgAI/wIgAwAAAAAAAAwAZmFpbGVkX2xvZ2luAwBs
b3cqAGh0dHBzOi8vbmV3cy50ZXN0L2xpdmV3aXJlLWU2MDQ0NzRiL3VwZGF0ZQkxMjcuMC4wLjFv
AE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUz
Ny4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmpr
wVnZrqRQ
'/*!*/;
# at 10698
#260731 11:25:45 server id 1  end_log_pos 10729 CRC32 0x4bf576fe 	Xid = 469
COMMIT/*!*/;
# at 10729
#260731 11:25:45 server id 1  end_log_pos 10808 CRC32 0x2db6ae80 	Anonymous_GTID	last_committed=16	sequence_number=17	rbr_only=yes	original_committed_timestamp=1785471945564200	immediate_commit_timestamp=1785471945564200	transaction_length=1430
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471945564200 (2026-07-31 11:25:45.564200 SE Asia Standard Time)
# immediate_commit_timestamp=1785471945564200 (2026-07-31 11:25:45.564200 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471945564200*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 10808
#260731 11:25:45 server id 1  end_log_pos 10892 CRC32 0xb0fa1961 	Query	thread_id=21	exec_time=0	error_code=0
SET TIMESTAMP=1785471945/*!*/;
BEGIN
/*!*/;
# at 10892
#260731 11:25:45 server id 1  end_log_pos 10960 CRC32 0xb2d0eead 	Table_map: `news`.`sessions` mapped to number 83
# at 10960
#260731 11:25:45 server id 1  end_log_pos 12128 CRC32 0x6333cbd6 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
ySNsahMBAAAARAAAANAqAAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4K3u0LI=
ySNsah8BAAAAkAQAAGAvAAAAAFMAAAAAAAEAAgAG//8CKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRj
M3Y5ajJwTlZSQU9EeXRUeTdPCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2iAEAAFlUbzBPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pZWxwbVJqSkVkams1VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0
MFVpSTdjem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qazZJbWgw
ZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyeHZaMmx1SWp0ek9qVTZJbkp2ZFhSbElqdHpP
akkxT2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTVoZFhSb0xteHZaMmx1SWp0OWN6bzJPaUpmWm14aGMy
Z2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3ZlhNNk16b2libVYzSWp0aE9qQTZlMzE5Y3pv
ek9pSjFjbXdpTzJFNk1UcDdjem80T2lKcGJuUmxibVJsWkNJN2N6b3lNem9pYUhSMGNITTZMeTl1
WlhkekxuUmxjM1F2WVdSdGFXNGlPMzE5vyNsagIoAHE5WVZTOXFHZk9lQmhKeGNhVGdJZGMzdjlq
MnBOVlJBT0R5dFR5N08JMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBX
aW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUv
MTUwLjAuMC4wIFNhZmFyaS81MzcuMzaIAQAAWVRvME9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1E
b2llbHBtUmpKRWRqazVWR2RZZDNkVGEwVmhabXhpWTFKbE0yMWtkVlZUTVhOU1FVZDBVMHQwVWlJ
N2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWprNkltaDBkSEJ6
T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNkluSnZkWFJsSWp0ek9qSTFP
aUptYVd4aGJXVnVkQzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5Y3pvMk9pSmZabXhoYzJnaU8y
RTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lK
MWNtd2lPMkU2TVRwN2N6bzRPaUpwYm5SbGJtUmxaQ0k3Y3pveU16b2lhSFIwY0hNNkx5OXVaWGR6
TG5SbGMzUXZZV1J0YVc0aU8zMTnJI2xq1sszYw==
'/*!*/;
# at 12128
#260731 11:25:45 server id 1  end_log_pos 12159 CRC32 0xbf7462f8 	Xid = 484
COMMIT/*!*/;
# at 12159
#260731 11:26:23 server id 1  end_log_pos 12238 CRC32 0x2a6c8718 	Anonymous_GTID	last_committed=17	sequence_number=18	rbr_only=yes	original_committed_timestamp=1785471983535428	immediate_commit_timestamp=1785471983535428	transaction_length=552
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471983535428 (2026-07-31 11:26:23.535428 SE Asia Standard Time)
# immediate_commit_timestamp=1785471983535428 (2026-07-31 11:26:23.535428 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471983535428*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 12238
#260731 11:26:23 server id 1  end_log_pos 12324 CRC32 0x6605de9e 	Query	thread_id=46	exec_time=0	error_code=0
SET TIMESTAMP=1785471983/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=45,@@session.collation_connection=224,@@session.collation_server=255/*!*/;
BEGIN
/*!*/;
# at 12324
#260731 11:26:23 server id 1  end_log_pos 12400 CRC32 0xe5fb0634 	Table_map: `news`.`users` mapped to number 110
# at 12400
#260731 11:26:23 server id 1  end_log_pos 12680 CRC32 0x1ece2efb 	Update_rows: table id 110 flags: STMT_END_F

BINLOG '
7yNsahMBAAAATAAAAHAwAAAAAG4AAAAAAAMABG5ld3MABXVzZXJzAAkIDw8RDw8PEREN/AP8AwD8
A/wDkAEAAOgBAQGAAgHgNAb75Q==
7yNsah8BAAAAGAEAAIgxAAAAAG4AAAAAAAEAAgAJ/////2gACgAAAAAAAAARAFN1cGVyIEFkbWlu
IFV0YW1hFABhZG1pbkBzdXBlcmFkbWluLmNvbTwAJDJ5JDEwJDBjUTFXcFZ5UFVsa1EwVi9XaXBE
TE8wS25OdFNwem80LllGMldIRnJJSENzV1dpTkt6c3lxamu3OWprtzloAAoAAAAAAAAAEQBTdXBl
ciBBZG1pbiBVdGFtYRQAYWRtaW5Ac3VwZXJhZG1pbi5jb208ACQyeSQxMCRHTTlQZkkuVXJybjlz
ME1wRjgvNWUuWmQ1a015YmdnM1VON3FlMVBEVkFRcUJrT3ptUWdaLmprtzlqa7c5+y7OHg==
'/*!*/;
# at 12680
#260731 11:26:23 server id 1  end_log_pos 12711 CRC32 0x9ac1be32 	Xid = 721
COMMIT/*!*/;
# at 12711
#260731 11:26:38 server id 1  end_log_pos 12790 CRC32 0x99f9e7b5 	Anonymous_GTID	last_committed=18	sequence_number=19	rbr_only=yes	original_committed_timestamp=1785471998408161	immediate_commit_timestamp=1785471998408161	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471998408161 (2026-07-31 11:26:38.408161 SE Asia Standard Time)
# immediate_commit_timestamp=1785471998408161 (2026-07-31 11:26:38.408161 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471998408161*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 12790
#260731 11:26:38 server id 1  end_log_pos 12865 CRC32 0x0188db76 	Query	thread_id=50	exec_time=0	error_code=0
SET TIMESTAMP=1785471998/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=224,@@session.collation_connection=224,@@session.collation_server=255/*!*/;
BEGIN
/*!*/;
# at 12865
#260731 11:26:38 server id 1  end_log_pos 12924 CRC32 0xb11d62a0 	Table_map: `news`.`cache` mapped to number 88
# at 12924
#260731 11:26:38 server id 1  end_log_pos 13122 CRC32 0x1fb467bb 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
/iNsahMBAAAAOwAAAHwyAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4KBi
HbE=
/iNsah8BAAAAxgAAAEIzAAAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaToxOwUkbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaToyOzokbGq7Z7Qf
'/*!*/;
# at 13122
#260731 11:26:38 server id 1  end_log_pos 13153 CRC32 0x1222921d 	Xid = 771
COMMIT/*!*/;
# at 13153
#260731 11:26:38 server id 1  end_log_pos 13232 CRC32 0xef762111 	Anonymous_GTID	last_committed=19	sequence_number=20	rbr_only=yes	original_committed_timestamp=1785471998515128	immediate_commit_timestamp=1785471998515128	transaction_length=469
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471998515128 (2026-07-31 11:26:38.515128 SE Asia Standard Time)
# immediate_commit_timestamp=1785471998515128 (2026-07-31 11:26:38.515128 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471998515128*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 13232
#260731 11:26:38 server id 1  end_log_pos 13316 CRC32 0xac5502cb 	Query	thread_id=50	exec_time=0	error_code=0
SET TIMESTAMP=1785471998/*!*/;
BEGIN
/*!*/;
# at 13316
#260731 11:26:38 server id 1  end_log_pos 13375 CRC32 0xd81d256e 	Table_map: `news`.`cache` mapped to number 88
# at 13375
#260731 11:26:38 server id 1  end_log_pos 13591 CRC32 0xdb8fad8d 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
/iNsahMBAAAAOwAAAD80AAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4G4l
Hdg=
/iNsah8BAAAA2AAAABc1AAAAAFgAAAAAAAEAAgAD//8ATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJl
LXJhdGUtbGltaXRlcjoxNmQzNmRmZjlhYmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAA
aToxOwUkbGoATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJlLXJhdGUtbGltaXRlcjoxNmQzNmRmZjlh
YmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAAaToyOwUkbGqNrY/b
'/*!*/;
# at 13591
#260731 11:26:38 server id 1  end_log_pos 13622 CRC32 0xc45a13d2 	Xid = 790
COMMIT/*!*/;
# at 13622
#260731 11:26:38 server id 1  end_log_pos 13701 CRC32 0xe83cdba9 	Anonymous_GTID	last_committed=20	sequence_number=21	rbr_only=yes	original_committed_timestamp=1785471998657369	immediate_commit_timestamp=1785471998657369	transaction_length=505
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471998657369 (2026-07-31 11:26:38.657369 SE Asia Standard Time)
# immediate_commit_timestamp=1785471998657369 (2026-07-31 11:26:38.657369 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471998657369*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 13701
#260731 11:26:38 server id 1  end_log_pos 13784 CRC32 0x8c86ee33 	Query	thread_id=50	exec_time=0	error_code=0
SET TIMESTAMP=1785471998/*!*/;
BEGIN
/*!*/;
# at 13784
#260731 11:26:38 server id 1  end_log_pos 13862 CRC32 0x6a08ffd6 	Table_map: `news`.`activity_logs` mapped to number 101
# at 13862
#260731 11:26:38 server id 1  end_log_pos 14096 CRC32 0xfd30dd8c 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
/iNsahMBAAAATgAAACY2AAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeDW/whq
/iNsah4BAAAA6gAAABA3AAAAAGUAAAAAAAEAAgAI/wIhAwAAAAAAAAwAZmFpbGVkX2xvZ2luAwBs
b3cqAGh0dHBzOi8vbmV3cy50ZXN0L2xpdmV3aXJlLWU2MDQ0NzRiL3VwZGF0ZQkxMjcuMC4wLjFv
AE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUz
Ny4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmpr
wY6M3TD9
'/*!*/;
# at 14096
#260731 11:26:38 server id 1  end_log_pos 14127 CRC32 0x2f403f4f 	Xid = 800
COMMIT/*!*/;
# at 14127
#260731 11:26:38 server id 1  end_log_pos 14206 CRC32 0x10da309a 	Anonymous_GTID	last_committed=21	sequence_number=22	rbr_only=yes	original_committed_timestamp=1785471998727555	immediate_commit_timestamp=1785471998727555	transaction_length=1430
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785471998727555 (2026-07-31 11:26:38.727555 SE Asia Standard Time)
# immediate_commit_timestamp=1785471998727555 (2026-07-31 11:26:38.727555 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785471998727555*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 14206
#260731 11:26:38 server id 1  end_log_pos 14290 CRC32 0x1678342d 	Query	thread_id=50	exec_time=0	error_code=0
SET TIMESTAMP=1785471998/*!*/;
BEGIN
/*!*/;
# at 14290
#260731 11:26:38 server id 1  end_log_pos 14358 CRC32 0x042294c1 	Table_map: `news`.`sessions` mapped to number 83
# at 14358
#260731 11:26:38 server id 1  end_log_pos 15526 CRC32 0x51199c71 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
/iNsahMBAAAARAAAABY4AAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4MGUIgQ=
/iNsah8BAAAAkAQAAKY8AAAAAFMAAAAAAAEAAgAG//8CKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRj
M3Y5ajJwTlZSQU9EeXRUeTdPCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2iAEAAFlUbzBPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pZWxwbVJqSkVkams1VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0
MFVpSTdjem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qazZJbWgw
ZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyeHZaMmx1SWp0ek9qVTZJbkp2ZFhSbElqdHpP
akkxT2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTVoZFhSb0xteHZaMmx1SWp0OWN6bzJPaUpmWm14aGMy
Z2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3ZlhNNk16b2libVYzSWp0aE9qQTZlMzE5Y3pv
ek9pSjFjbXdpTzJFNk1UcDdjem80T2lKcGJuUmxibVJsWkNJN2N6b3lNem9pYUhSMGNITTZMeTl1
WlhkekxuUmxjM1F2WVdSdGFXNGlPMzE5ySNsagIoAHE5WVZTOXFHZk9lQmhKeGNhVGdJZGMzdjlq
MnBOVlJBT0R5dFR5N08JMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBX
aW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUv
MTUwLjAuMC4wIFNhZmFyaS81MzcuMzaIAQAAWVRvME9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1E
b2llbHBtUmpKRWRqazVWR2RZZDNkVGEwVmhabXhpWTFKbE0yMWtkVlZUTVhOU1FVZDBVMHQwVWlJ
N2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWprNkltaDBkSEJ6
T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNkluSnZkWFJsSWp0ek9qSTFP
aUptYVd4aGJXVnVkQzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5Y3pvMk9pSmZabXhoYzJnaU8y
RTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lK
MWNtd2lPMkU2TVRwN2N6bzRPaUpwYm5SbGJtUmxaQ0k3Y3pveU16b2lhSFIwY0hNNkx5OXVaWGR6
TG5SbGMzUXZZV1J0YVc0aU8zMTn+I2xqcZwZUQ==
'/*!*/;
# at 15526
#260731 11:26:38 server id 1  end_log_pos 15557 CRC32 0xcc302810 	Xid = 815
COMMIT/*!*/;
# at 15557
#260731 11:26:43 server id 1  end_log_pos 15636 CRC32 0x343b94f6 	Anonymous_GTID	last_committed=22	sequence_number=23	rbr_only=yes	original_committed_timestamp=1785472003707226	immediate_commit_timestamp=1785472003707226	transaction_length=1430
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472003707226 (2026-07-31 11:26:43.707226 SE Asia Standard Time)
# immediate_commit_timestamp=1785472003707226 (2026-07-31 11:26:43.707226 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472003707226*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 15636
#260731 11:26:43 server id 1  end_log_pos 15720 CRC32 0x515e85f9 	Query	thread_id=51	exec_time=0	error_code=0
SET TIMESTAMP=1785472003/*!*/;
BEGIN
/*!*/;
# at 15720
#260731 11:26:43 server id 1  end_log_pos 15788 CRC32 0x9596009e 	Table_map: `news`.`sessions` mapped to number 83
# at 15788
#260731 11:26:43 server id 1  end_log_pos 16956 CRC32 0xe94bfc8e 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
AyRsahMBAAAARAAAAKw9AAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4J4AlpU=
AyRsah8BAAAAkAQAADxCAAAAAFMAAAAAAAEAAgAG//8CKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRj
M3Y5ajJwTlZSQU9EeXRUeTdPCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2iAEAAFlUbzBPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pZWxwbVJqSkVkams1VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0
MFVpSTdjem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qazZJbWgw
ZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyeHZaMmx1SWp0ek9qVTZJbkp2ZFhSbElqdHpP
akkxT2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTVoZFhSb0xteHZaMmx1SWp0OWN6bzJPaUpmWm14aGMy
Z2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3ZlhNNk16b2libVYzSWp0aE9qQTZlMzE5Y3pv
ek9pSjFjbXdpTzJFNk1UcDdjem80T2lKcGJuUmxibVJsWkNJN2N6b3lNem9pYUhSMGNITTZMeTl1
WlhkekxuUmxjM1F2WVdSdGFXNGlPMzE5/iNsagIoAHE5WVZTOXFHZk9lQmhKeGNhVGdJZGMzdjlq
MnBOVlJBT0R5dFR5N08JMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBX
aW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUv
MTUwLjAuMC4wIFNhZmFyaS81MzcuMzaIAQAAWVRvME9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1E
b2llbHBtUmpKRWRqazVWR2RZZDNkVGEwVmhabXhpWTFKbE0yMWtkVlZUTVhOU1FVZDBVMHQwVWlJ
N2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWprNkltaDBkSEJ6
T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNkluSnZkWFJsSWp0ek9qSTFP
aUptYVd4aGJXVnVkQzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5Y3pvMk9pSmZabXhoYzJnaU8y
RTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lK
MWNtd2lPMkU2TVRwN2N6bzRPaUpwYm5SbGJtUmxaQ0k3Y3pveU16b2lhSFIwY0hNNkx5OXVaWGR6
TG5SbGMzUXZZV1J0YVc0aU8zMTkDJGxqjvxL6Q==
'/*!*/;
# at 16956
#260731 11:26:43 server id 1  end_log_pos 16987 CRC32 0x910d3ad2 	Xid = 827
COMMIT/*!*/;
# at 16987
#260731 11:27:28 server id 1  end_log_pos 17066 CRC32 0x91cb9488 	Anonymous_GTID	last_committed=23	sequence_number=24	rbr_only=yes	original_committed_timestamp=1785472048367156	immediate_commit_timestamp=1785472048367156	transaction_length=1430
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472048367156 (2026-07-31 11:27:28.367156 SE Asia Standard Time)
# immediate_commit_timestamp=1785472048367156 (2026-07-31 11:27:28.367156 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472048367156*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 17066
#260731 11:27:28 server id 1  end_log_pos 17150 CRC32 0x1a41551d 	Query	thread_id=52	exec_time=0	error_code=0
SET TIMESTAMP=1785472048/*!*/;
BEGIN
/*!*/;
# at 17150
#260731 11:27:28 server id 1  end_log_pos 17218 CRC32 0xdd9b5c89 	Table_map: `news`.`sessions` mapped to number 83
# at 17218
#260731 11:27:28 server id 1  end_log_pos 18386 CRC32 0xf3ebcf50 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
MCRsahMBAAAARAAAAEJDAAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4Ilcm90=
MCRsah8BAAAAkAQAANJHAAAAAFMAAAAAAAEAAgAG//8CKABxOVlWUzlxR2ZPZUJoSnhjYVRnSWRj
M3Y5ajJwTlZSQU9EeXRUeTdPCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2iAEAAFlUbzBPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pZWxwbVJqSkVkams1VkdkWWQzZFRhMFZoWm14aVkxSmxNMjFrZFZWVE1YTlNRVWQwVTB0
MFVpSTdjem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qazZJbWgw
ZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyeHZaMmx1SWp0ek9qVTZJbkp2ZFhSbElqdHpP
akkxT2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTVoZFhSb0xteHZaMmx1SWp0OWN6bzJPaUpmWm14aGMy
Z2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3ZlhNNk16b2libVYzSWp0aE9qQTZlMzE5Y3pv
ek9pSjFjbXdpTzJFNk1UcDdjem80T2lKcGJuUmxibVJsWkNJN2N6b3lNem9pYUhSMGNITTZMeTl1
WlhkekxuUmxjM1F2WVdSdGFXNGlPMzE5AyRsagIoAHE5WVZTOXFHZk9lQmhKeGNhVGdJZGMzdjlq
MnBOVlJBT0R5dFR5N08JMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBX
aW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUv
MTUwLjAuMC4wIFNhZmFyaS81MzcuMzaIAQAAWVRvME9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1E
b2llbHBtUmpKRWRqazVWR2RZZDNkVGEwVmhabXhpWTFKbE0yMWtkVlZUTVhOU1FVZDBVMHQwVWlJ
N2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWprNkltaDBkSEJ6
T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNkluSnZkWFJsSWp0ek9qSTFP
aUptYVd4aGJXVnVkQzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5Y3pvMk9pSmZabXhoYzJnaU8y
RTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lK
MWNtd2lPMkU2TVRwN2N6bzRPaUpwYm5SbGJtUmxaQ0k3Y3pveU16b2lhSFIwY0hNNkx5OXVaWGR6
TG5SbGMzUXZZV1J0YVc0aU8zMTkwJGxqUM/r8w==
'/*!*/;
# at 18386
#260731 11:27:28 server id 1  end_log_pos 18417 CRC32 0x21f18552 	Xid = 842
COMMIT/*!*/;
# at 18417
#260731 11:27:59 server id 1  end_log_pos 18496 CRC32 0xc128d087 	Anonymous_GTID	last_committed=24	sequence_number=25	rbr_only=yes	original_committed_timestamp=1785472079995263	immediate_commit_timestamp=1785472079995263	transaction_length=440
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472079995263 (2026-07-31 11:27:59.995263 SE Asia Standard Time)
# immediate_commit_timestamp=1785472079995263 (2026-07-31 11:27:59.995263 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472079995263*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 18496
#260731 11:27:59 server id 1  end_log_pos 18581 CRC32 0xadf09bc6 	Query	thread_id=53	exec_time=0	error_code=0
SET TIMESTAMP=1785472079/*!*/;
BEGIN
/*!*/;
# at 18581
#260731 11:27:59 server id 1  end_log_pos 18657 CRC32 0xdf067693 	Table_map: `news`.`users` mapped to number 110
# at 18657
#260731 11:27:59 server id 1  end_log_pos 18826 CRC32 0x12d6cfbf 	Write_rows: table id 110 flags: STMT_END_F

BINLOG '
TyRsahMBAAAATAAAAOFIAAAAAG4AAAAAAAMABG5ld3MABXVzZXJzAAkIDw8RDw8PEREN/AP8AwD8
A/wDkAEAAOgBAQGAAgHgk3YG3w==
TyRsah4BAAAAqQAAAIpJAAAAAG4AAAAAAAEAAgAJ//9gAAwAAAAAAAAAGQBGdWxsIEFjY2VzcyBB
ZG1pbmlzdHJhdG9yFABmdWxsYWNjZXNzQGFkbWluLmNvbWprwd88ACQyeSQxMiRGZmxHY2s2TkQx
MjM0aVJJdHFsSWkuVzZsYUc4UGpRamtEbzEvSUU3eC83N2xWZDRWS0pwU2prwd9qa8Hfv8/WEg==
'/*!*/;
# at 18826
#260731 11:27:59 server id 1  end_log_pos 18857 CRC32 0xfcd8b0af 	Xid = 851
COMMIT/*!*/;
# at 18857
#260731 11:28:00 server id 1  end_log_pos 18936 CRC32 0x25f471b5 	Anonymous_GTID	last_committed=25	sequence_number=26	rbr_only=yes	original_committed_timestamp=1785472080049204	immediate_commit_timestamp=1785472080049204	transaction_length=3619
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472080049204 (2026-07-31 11:28:00.049204 SE Asia Standard Time)
# immediate_commit_timestamp=1785472080049204 (2026-07-31 11:28:00.049204 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472080049204*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 18936
#260731 11:28:00 server id 1  end_log_pos 19011 CRC32 0xfd88f1f2 	Query	thread_id=53	exec_time=0	error_code=0
SET TIMESTAMP=1785472080/*!*/;
BEGIN
/*!*/;
# at 19011
#260731 11:28:00 server id 1  end_log_pos 19078 CRC32 0xf7d42c02 	Table_map: `news`.`role_has_permissions` mapped to number 117
# at 19078
#260731 11:28:00 server id 1  end_log_pos 22445 CRC32 0xb2a92fbe 	Delete_rows: table id 117 flags: STMT_END_F

BINLOG '
UCRsahMBAAAAQwAAAIZKAAAAAHUAAAAAAAEABG5ld3MAFHJvbGVfaGFzX3Blcm1pc3Npb25zAAII
CAAAAQHAAizU9w==
UCRsaiABAAAAJw0AAK1XAAAAAHUAAAAAAAEAAgAC/wABAAAAAAAAAAUAAAAAAAAAAAIAAAAAAAAA
BQAAAAAAAAAAAwAAAAAAAAAFAAAAAAAAAAAEAAAAAAAAAAUAAAAAAAAAAAUAAAAAAAAABQAAAAAA
AAAABgAAAAAAAAAFAAAAAAAAAAAHAAAAAAAAAAUAAAAAAAAAAAgAAAAAAAAABQAAAAAAAAAACQAA
AAAAAAAFAAAAAAAAAAAKAAAAAAAAAAUAAAAAAAAAAAsAAAAAAAAABQAAAAAAAAAADAAAAAAAAAAF
AAAAAAAAAAANAAAAAAAAAAUAAAAAAAAAAA4AAAAAAAAABQAAAAAAAAAADwAAAAAAAAAFAAAAAAAA
AAAQAAAAAAAAAAUAAAAAAAAAABEAAAAAAAAABQAAAAAAAAAAEgAAAAAAAAAFAAAAAAAAAAATAAAA
AAAAAAUAAAAAAAAAABQAAAAAAAAABQAAAAAAAAAAFQAAAAAAAAAFAAAAAAAAAAAWAAAAAAAAAAUA
AAAAAAAAABcAAAAAAAAABQAAAAAAAAAAGAAAAAAAAAAFAAAAAAAAAAAZAAAAAAAAAAUAAAAAAAAA
ABoAAAAAAAAABQAAAAAAAAAAGwAAAAAAAAAFAAAAAAAAAAAcAAAAAAAAAAUAAAAAAAAAAB0AAAAA
AAAABQAAAAAAAAAAHgAAAAAAAAAFAAAAAAAAAAAfAAAAAAAAAAUAAAAAAAAAACAAAAAAAAAABQAA
AAAAAAAAIQAAAAAAAAAFAAAAAAAAAAAiAAAAAAAAAAUAAAAAAAAAACMAAAAAAAAABQAAAAAAAAAA
JAAAAAAAAAAFAAAAAAAAAAAlAAAAAAAAAAUAAAAAAAAAACYAAAAAAAAABQAAAAAAAAAAJwAAAAAA
AAAFAAAAAAAAAAAoAAAAAAAAAAUAAAAAAAAAACkAAAAAAAAABQAAAAAAAAAAKgAAAAAAAAAFAAAA
AAAAAAArAAAAAAAAAAUAAAAAAAAAACwAAAAAAAAABQAAAAAAAAAALQAAAAAAAAAFAAAAAAAAAAAu
AAAAAAAAAAUAAAAAAAAAAC8AAAAAAAAABQAAAAAAAAAAMAAAAAAAAAAFAAAAAAAAAAAxAAAAAAAA
AAUAAAAAAAAAADIAAAAAAAAABQAAAAAAAAAAMwAAAAAAAAAFAAAAAAAAAAA0AAAAAAAAAAUAAAAA
AAAAADUAAAAAAAAABQAAAAAAAAAANgAAAAAAAAAFAAAAAAAAAAA3AAAAAAAAAAUAAAAAAAAAADgA
AAAAAAAABQAAAAAAAAAAOQAAAAAAAAAFAAAAAAAAAAA6AAAAAAAAAAUAAAAAAAAAADsAAAAAAAAA
BQAAAAAAAAAAPAAAAAAAAAAFAAAAAAAAAAA9AAAAAAAAAAUAAAAAAAAAAD4AAAAAAAAABQAAAAAA
AAAAPwAAAAAAAAAFAAAAAAAAAABAAAAAAAAAAAUAAAAAAAAAAEEAAAAAAAAABQAAAAAAAAAAQgAA
AAAAAAAFAAAAAAAAAABDAAAAAAAAAAUAAAAAAAAAAEQAAAAAAAAABQAAAAAAAAAARQAAAAAAAAAF
AAAAAAAAAABGAAAAAAAAAAUAAAAAAAAAAEcAAAAAAAAABQAAAAAAAAAASAAAAAAAAAAFAAAAAAAA
AABJAAAAAAAAAAUAAAAAAAAAAEoAAAAAAAAABQAAAAAAAAAASwAAAAAAAAAFAAAAAAAAAABMAAAA
AAAAAAUAAAAAAAAAAE0AAAAAAAAABQAAAAAAAAAATgAAAAAAAAAFAAAAAAAAAABPAAAAAAAAAAUA
AAAAAAAAAFAAAAAAAAAABQAAAAAAAAAAUQAAAAAAAAAFAAAAAAAAAABSAAAAAAAAAAUAAAAAAAAA
AFMAAAAAAAAABQAAAAAAAAAAVAAAAAAAAAAFAAAAAAAAAABVAAAAAAAAAAUAAAAAAAAAAFYAAAAA
AAAABQAAAAAAAAAAVwAAAAAAAAAFAAAAAAAAAABYAAAAAAAAAAUAAAAAAAAAAFkAAAAAAAAABQAA
AAAAAAAAWgAAAAAAAAAFAAAAAAAAAABbAAAAAAAAAAUAAAAAAAAAAFwAAAAAAAAABQAAAAAAAAAA
XQAAAAAAAAAFAAAAAAAAAABeAAAAAAAAAAUAAAAAAAAAAF8AAAAAAAAABQAAAAAAAAAAYAAAAAAA
AAAFAAAAAAAAAABhAAAAAAAAAAUAAAAAAAAAAGIAAAAAAAAABQAAAAAAAAAAYwAAAAAAAAAFAAAA
AAAAAABkAAAAAAAAAAUAAAAAAAAAAGUAAAAAAAAABQAAAAAAAAAAZgAAAAAAAAAFAAAAAAAAAABn
AAAAAAAAAAUAAAAAAAAAAGgAAAAAAAAABQAAAAAAAAAAaQAAAAAAAAAFAAAAAAAAAABqAAAAAAAA
AAUAAAAAAAAAAGsAAAAAAAAABQAAAAAAAAAAbAAAAAAAAAAFAAAAAAAAAABtAAAAAAAAAAUAAAAA
AAAAAG4AAAAAAAAABQAAAAAAAAAAbwAAAAAAAAAFAAAAAAAAAABwAAAAAAAAAAUAAAAAAAAAAHEA
AAAAAAAABQAAAAAAAAAAcgAAAAAAAAAFAAAAAAAAAABzAAAAAAAAAAUAAAAAAAAAAHQAAAAAAAAA
BQAAAAAAAAAAdQAAAAAAAAAFAAAAAAAAAAB2AAAAAAAAAAUAAAAAAAAAAHcAAAAAAAAABQAAAAAA
AAAAeAAAAAAAAAAFAAAAAAAAAAB5AAAAAAAAAAUAAAAAAAAAAHoAAAAAAAAABQAAAAAAAAAAewAA
AAAAAAAFAAAAAAAAAAB8AAAAAAAAAAUAAAAAAAAAAH0AAAAAAAAABQAAAAAAAAAAfgAAAAAAAAAF
AAAAAAAAAAB/AAAAAAAAAAUAAAAAAAAAAIAAAAAAAAAABQAAAAAAAAAAgQAAAAAAAAAFAAAAAAAA
AACCAAAAAAAAAAUAAAAAAAAAAIMAAAAAAAAABQAAAAAAAAAAhAAAAAAAAAAFAAAAAAAAAACFAAAA
AAAAAAUAAAAAAAAAAIYAAAAAAAAABQAAAAAAAAAAhwAAAAAAAAAFAAAAAAAAAACIAAAAAAAAAAUA
AAAAAAAAAIkAAAAAAAAABQAAAAAAAAAAigAAAAAAAAAFAAAAAAAAAACLAAAAAAAAAAUAAAAAAAAA
AIwAAAAAAAAABQAAAAAAAAAAjQAAAAAAAAAFAAAAAAAAAACOAAAAAAAAAAUAAAAAAAAAAI8AAAAA
AAAABQAAAAAAAAAAkAAAAAAAAAAFAAAAAAAAAACRAAAAAAAAAAUAAAAAAAAAAJIAAAAAAAAABQAA
AAAAAAAAkwAAAAAAAAAFAAAAAAAAAACUAAAAAAAAAAUAAAAAAAAAAJUAAAAAAAAABQAAAAAAAAAA
lgAAAAAAAAAFAAAAAAAAAACXAAAAAAAAAAUAAAAAAAAAAJgAAAAAAAAABQAAAAAAAAAAmQAAAAAA
AAAFAAAAAAAAAACaAAAAAAAAAAUAAAAAAAAAAJsAAAAAAAAABQAAAAAAAAAAnAAAAAAAAAAFAAAA
AAAAAACdAAAAAAAAAAUAAAAAAAAAAJ4AAAAAAAAABQAAAAAAAAAAnwAAAAAAAAAFAAAAAAAAAACg
AAAAAAAAAAUAAAAAAAAAAKEAAAAAAAAABQAAAAAAAAAAogAAAAAAAAAFAAAAAAAAAACjAAAAAAAA
AAUAAAAAAAAAAKQAAAAAAAAABQAAAAAAAAAApQAAAAAAAAAFAAAAAAAAAACmAAAAAAAAAAUAAAAA
AAAAAKcAAAAAAAAABQAAAAAAAAAAqAAAAAAAAAAFAAAAAAAAAACpAAAAAAAAAAUAAAAAAAAAAKoA
AAAAAAAABQAAAAAAAAAAqwAAAAAAAAAFAAAAAAAAAACsAAAAAAAAAAUAAAAAAAAAAK0AAAAAAAAA
BQAAAAAAAAAArgAAAAAAAAAFAAAAAAAAAACvAAAAAAAAAAUAAAAAAAAAALAAAAAAAAAABQAAAAAA
AAAAsQAAAAAAAAAFAAAAAAAAAACyAAAAAAAAAAUAAAAAAAAAALMAAAAAAAAABQAAAAAAAAAAtAAA
AAAAAAAFAAAAAAAAAAC1AAAAAAAAAAUAAAAAAAAAALYAAAAAAAAABQAAAAAAAAAAtwAAAAAAAAAF
AAAAAAAAAAC4AAAAAAAAAAUAAAAAAAAAALkAAAAAAAAABQAAAAAAAAAAugAAAAAAAAAFAAAAAAAA
AAC7AAAAAAAAAAUAAAAAAAAAALwAAAAAAAAABQAAAAAAAAAAvQAAAAAAAAAFAAAAAAAAAAC+AAAA
AAAAAAUAAAAAAAAAAL8AAAAAAAAABQAAAAAAAAAAwAAAAAAAAAAFAAAAAAAAAADBAAAAAAAAAAUA
AAAAAAAAAMIAAAAAAAAABQAAAAAAAAAAwwAAAAAAAAAFAAAAAAAAAADEAAAAAAAAAAUAAAAAAAAA
vi+psg==
'/*!*/;
# at 22445
#260731 11:28:00 server id 1  end_log_pos 22476 CRC32 0x2d44d274 	Xid = 860
COMMIT/*!*/;
# at 22476
#260731 11:28:00 server id 1  end_log_pos 22555 CRC32 0x9122a5a7 	Anonymous_GTID	last_committed=26	sequence_number=27	rbr_only=yes	original_committed_timestamp=1785472080062984	immediate_commit_timestamp=1785472080062984	transaction_length=3619
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472080062984 (2026-07-31 11:28:00.062984 SE Asia Standard Time)
# immediate_commit_timestamp=1785472080062984 (2026-07-31 11:28:00.062984 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472080062984*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 22555
#260731 11:28:00 server id 1  end_log_pos 22630 CRC32 0xc9069bc9 	Query	thread_id=53	exec_time=0	error_code=0
SET TIMESTAMP=1785472080/*!*/;
BEGIN
/*!*/;
# at 22630
#260731 11:28:00 server id 1  end_log_pos 22697 CRC32 0x262857f9 	Table_map: `news`.`role_has_permissions` mapped to number 117
# at 22697
#260731 11:28:00 server id 1  end_log_pos 26064 CRC32 0x2065d2f7 	Write_rows: table id 117 flags: STMT_END_F

BINLOG '
UCRsahMBAAAAQwAAAKlYAAAAAHUAAAAAAAEABG5ld3MAFHJvbGVfaGFzX3Blcm1pc3Npb25zAAII
CAAAAQHA+VcoJg==
UCRsah4BAAAAJw0AANBlAAAAAHUAAAAAAAEAAgAC/wABAAAAAAAAAAUAAAAAAAAAAAIAAAAAAAAA
BQAAAAAAAAAAAwAAAAAAAAAFAAAAAAAAAAAEAAAAAAAAAAUAAAAAAAAAAAUAAAAAAAAABQAAAAAA
AAAABgAAAAAAAAAFAAAAAAAAAAAHAAAAAAAAAAUAAAAAAAAAAAgAAAAAAAAABQAAAAAAAAAACQAA
AAAAAAAFAAAAAAAAAAAKAAAAAAAAAAUAAAAAAAAAAAsAAAAAAAAABQAAAAAAAAAADAAAAAAAAAAF
AAAAAAAAAAANAAAAAAAAAAUAAAAAAAAAAA4AAAAAAAAABQAAAAAAAAAADwAAAAAAAAAFAAAAAAAA
AAAQAAAAAAAAAAUAAAAAAAAAABEAAAAAAAAABQAAAAAAAAAAEgAAAAAAAAAFAAAAAAAAAAATAAAA
AAAAAAUAAAAAAAAAABQAAAAAAAAABQAAAAAAAAAAFQAAAAAAAAAFAAAAAAAAAAAWAAAAAAAAAAUA
AAAAAAAAABcAAAAAAAAABQAAAAAAAAAAGAAAAAAAAAAFAAAAAAAAAAAZAAAAAAAAAAUAAAAAAAAA
ABoAAAAAAAAABQAAAAAAAAAAGwAAAAAAAAAFAAAAAAAAAAAcAAAAAAAAAAUAAAAAAAAAAB0AAAAA
AAAABQAAAAAAAAAAHgAAAAAAAAAFAAAAAAAAAAAfAAAAAAAAAAUAAAAAAAAAACAAAAAAAAAABQAA
AAAAAAAAIQAAAAAAAAAFAAAAAAAAAAAiAAAAAAAAAAUAAAAAAAAAACMAAAAAAAAABQAAAAAAAAAA
JAAAAAAAAAAFAAAAAAAAAAAlAAAAAAAAAAUAAAAAAAAAACYAAAAAAAAABQAAAAAAAAAAJwAAAAAA
AAAFAAAAAAAAAAAoAAAAAAAAAAUAAAAAAAAAACkAAAAAAAAABQAAAAAAAAAAKgAAAAAAAAAFAAAA
AAAAAAArAAAAAAAAAAUAAAAAAAAAACwAAAAAAAAABQAAAAAAAAAALQAAAAAAAAAFAAAAAAAAAAAu
AAAAAAAAAAUAAAAAAAAAAC8AAAAAAAAABQAAAAAAAAAAMAAAAAAAAAAFAAAAAAAAAAAxAAAAAAAA
AAUAAAAAAAAAADIAAAAAAAAABQAAAAAAAAAAMwAAAAAAAAAFAAAAAAAAAAA0AAAAAAAAAAUAAAAA
AAAAADUAAAAAAAAABQAAAAAAAAAANgAAAAAAAAAFAAAAAAAAAAA3AAAAAAAAAAUAAAAAAAAAADgA
AAAAAAAABQAAAAAAAAAAOQAAAAAAAAAFAAAAAAAAAAA6AAAAAAAAAAUAAAAAAAAAADsAAAAAAAAA
BQAAAAAAAAAAPAAAAAAAAAAFAAAAAAAAAAA9AAAAAAAAAAUAAAAAAAAAAD4AAAAAAAAABQAAAAAA
AAAAPwAAAAAAAAAFAAAAAAAAAABAAAAAAAAAAAUAAAAAAAAAAEEAAAAAAAAABQAAAAAAAAAAQgAA
AAAAAAAFAAAAAAAAAABDAAAAAAAAAAUAAAAAAAAAAEQAAAAAAAAABQAAAAAAAAAARQAAAAAAAAAF
AAAAAAAAAABGAAAAAAAAAAUAAAAAAAAAAEcAAAAAAAAABQAAAAAAAAAASAAAAAAAAAAFAAAAAAAA
AABJAAAAAAAAAAUAAAAAAAAAAEoAAAAAAAAABQAAAAAAAAAASwAAAAAAAAAFAAAAAAAAAABMAAAA
AAAAAAUAAAAAAAAAAE0AAAAAAAAABQAAAAAAAAAATgAAAAAAAAAFAAAAAAAAAABPAAAAAAAAAAUA
AAAAAAAAAFAAAAAAAAAABQAAAAAAAAAAUQAAAAAAAAAFAAAAAAAAAABSAAAAAAAAAAUAAAAAAAAA
AFMAAAAAAAAABQAAAAAAAAAAVAAAAAAAAAAFAAAAAAAAAABVAAAAAAAAAAUAAAAAAAAAAFYAAAAA
AAAABQAAAAAAAAAAVwAAAAAAAAAFAAAAAAAAAABYAAAAAAAAAAUAAAAAAAAAAFkAAAAAAAAABQAA
AAAAAAAAWgAAAAAAAAAFAAAAAAAAAABbAAAAAAAAAAUAAAAAAAAAAFwAAAAAAAAABQAAAAAAAAAA
XQAAAAAAAAAFAAAAAAAAAABeAAAAAAAAAAUAAAAAAAAAAF8AAAAAAAAABQAAAAAAAAAAYAAAAAAA
AAAFAAAAAAAAAABhAAAAAAAAAAUAAAAAAAAAAGIAAAAAAAAABQAAAAAAAAAAYwAAAAAAAAAFAAAA
AAAAAABkAAAAAAAAAAUAAAAAAAAAAGUAAAAAAAAABQAAAAAAAAAAZgAAAAAAAAAFAAAAAAAAAABn
AAAAAAAAAAUAAAAAAAAAAGgAAAAAAAAABQAAAAAAAAAAaQAAAAAAAAAFAAAAAAAAAABqAAAAAAAA
AAUAAAAAAAAAAGsAAAAAAAAABQAAAAAAAAAAbAAAAAAAAAAFAAAAAAAAAABtAAAAAAAAAAUAAAAA
AAAAAG4AAAAAAAAABQAAAAAAAAAAbwAAAAAAAAAFAAAAAAAAAABwAAAAAAAAAAUAAAAAAAAAAHEA
AAAAAAAABQAAAAAAAAAAcgAAAAAAAAAFAAAAAAAAAABzAAAAAAAAAAUAAAAAAAAAAHQAAAAAAAAA
BQAAAAAAAAAAdQAAAAAAAAAFAAAAAAAAAAB2AAAAAAAAAAUAAAAAAAAAAHcAAAAAAAAABQAAAAAA
AAAAeAAAAAAAAAAFAAAAAAAAAAB5AAAAAAAAAAUAAAAAAAAAAHoAAAAAAAAABQAAAAAAAAAAewAA
AAAAAAAFAAAAAAAAAAB8AAAAAAAAAAUAAAAAAAAAAH0AAAAAAAAABQAAAAAAAAAAfgAAAAAAAAAF
AAAAAAAAAAB/AAAAAAAAAAUAAAAAAAAAAIAAAAAAAAAABQAAAAAAAAAAgQAAAAAAAAAFAAAAAAAA
AACCAAAAAAAAAAUAAAAAAAAAAIMAAAAAAAAABQAAAAAAAAAAhAAAAAAAAAAFAAAAAAAAAACFAAAA
AAAAAAUAAAAAAAAAAIYAAAAAAAAABQAAAAAAAAAAhwAAAAAAAAAFAAAAAAAAAACIAAAAAAAAAAUA
AAAAAAAAAIkAAAAAAAAABQAAAAAAAAAAigAAAAAAAAAFAAAAAAAAAACLAAAAAAAAAAUAAAAAAAAA
AIwAAAAAAAAABQAAAAAAAAAAjQAAAAAAAAAFAAAAAAAAAACOAAAAAAAAAAUAAAAAAAAAAI8AAAAA
AAAABQAAAAAAAAAAkAAAAAAAAAAFAAAAAAAAAACRAAAAAAAAAAUAAAAAAAAAAJIAAAAAAAAABQAA
AAAAAAAAkwAAAAAAAAAFAAAAAAAAAACUAAAAAAAAAAUAAAAAAAAAAJUAAAAAAAAABQAAAAAAAAAA
lgAAAAAAAAAFAAAAAAAAAACXAAAAAAAAAAUAAAAAAAAAAJgAAAAAAAAABQAAAAAAAAAAmQAAAAAA
AAAFAAAAAAAAAACaAAAAAAAAAAUAAAAAAAAAAJsAAAAAAAAABQAAAAAAAAAAnAAAAAAAAAAFAAAA
AAAAAACdAAAAAAAAAAUAAAAAAAAAAJ4AAAAAAAAABQAAAAAAAAAAnwAAAAAAAAAFAAAAAAAAAACg
AAAAAAAAAAUAAAAAAAAAAKEAAAAAAAAABQAAAAAAAAAAogAAAAAAAAAFAAAAAAAAAACjAAAAAAAA
AAUAAAAAAAAAAKQAAAAAAAAABQAAAAAAAAAApQAAAAAAAAAFAAAAAAAAAACmAAAAAAAAAAUAAAAA
AAAAAKcAAAAAAAAABQAAAAAAAAAAqAAAAAAAAAAFAAAAAAAAAACpAAAAAAAAAAUAAAAAAAAAAKoA
AAAAAAAABQAAAAAAAAAAqwAAAAAAAAAFAAAAAAAAAACsAAAAAAAAAAUAAAAAAAAAAK0AAAAAAAAA
BQAAAAAAAAAArgAAAAAAAAAFAAAAAAAAAACvAAAAAAAAAAUAAAAAAAAAALAAAAAAAAAABQAAAAAA
AAAAsQAAAAAAAAAFAAAAAAAAAACyAAAAAAAAAAUAAAAAAAAAALMAAAAAAAAABQAAAAAAAAAAtAAA
AAAAAAAFAAAAAAAAAAC1AAAAAAAAAAUAAAAAAAAAALYAAAAAAAAABQAAAAAAAAAAtwAAAAAAAAAF
AAAAAAAAAAC4AAAAAAAAAAUAAAAAAAAAALkAAAAAAAAABQAAAAAAAAAAugAAAAAAAAAFAAAAAAAA
AAC7AAAAAAAAAAUAAAAAAAAAALwAAAAAAAAABQAAAAAAAAAAvQAAAAAAAAAFAAAAAAAAAAC+AAAA
AAAAAAUAAAAAAAAAAL8AAAAAAAAABQAAAAAAAAAAwAAAAAAAAAAFAAAAAAAAAADBAAAAAAAAAAUA
AAAAAAAAAMIAAAAAAAAABQAAAAAAAAAAwwAAAAAAAAAFAAAAAAAAAADEAAAAAAAAAAUAAAAAAAAA
99JlIA==
'/*!*/;
# at 26064
#260731 11:28:00 server id 1  end_log_pos 26095 CRC32 0x75ebd0f0 	Xid = 863
COMMIT/*!*/;
# at 26095
#260731 11:28:00 server id 1  end_log_pos 26174 CRC32 0xf0b22465 	Anonymous_GTID	last_committed=27	sequence_number=28	rbr_only=yes	original_committed_timestamp=1785472080073192	immediate_commit_timestamp=1785472080073192	transaction_length=322
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472080073192 (2026-07-31 11:28:00.073192 SE Asia Standard Time)
# immediate_commit_timestamp=1785472080073192 (2026-07-31 11:28:00.073192 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472080073192*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 26174
#260731 11:28:00 server id 1  end_log_pos 26249 CRC32 0x5d97df96 	Query	thread_id=53	exec_time=0	error_code=0
SET TIMESTAMP=1785472080/*!*/;
BEGIN
/*!*/;
# at 26249
#260731 11:28:00 server id 1  end_log_pos 26317 CRC32 0xf6ab1cda 	Table_map: `news`.`model_has_roles` mapped to number 118
# at 26317
#260731 11:28:00 server id 1  end_log_pos 26386 CRC32 0x8e39131d 	Write_rows: table id 118 flags: STMT_END_F

BINLOG '
UCRsahMBAAAARAAAAM1mAAAAAHYAAAAAAAEABG5ld3MAD21vZGVsX2hhc19yb2xlcwADCA8IAvwD
AAEBwAIB4Nocq/Y=
UCRsah4BAAAARQAAABJnAAAAAHYAAAAAAAEAAgAD/wAFAAAAAAAAAA8AQXBwXE1vZGVsc1xVc2Vy
DAAAAAAAAAAdEzmO
'/*!*/;
# at 26386
#260731 11:28:00 server id 1  end_log_pos 26417 CRC32 0x7bd349c3 	Xid = 875
COMMIT/*!*/;
# at 26417
#260731 11:28:21 server id 1  end_log_pos 26496 CRC32 0xd66475dc 	Anonymous_GTID	last_committed=28	sequence_number=29	rbr_only=yes	original_committed_timestamp=1785472101884435	immediate_commit_timestamp=1785472101884435	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472101884435 (2026-07-31 11:28:21.884435 SE Asia Standard Time)
# immediate_commit_timestamp=1785472101884435 (2026-07-31 11:28:21.884435 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472101884435*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 26496
#260731 11:28:21 server id 1  end_log_pos 26571 CRC32 0xe0997dcf 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472101/*!*/;
BEGIN
/*!*/;
# at 26571
#260731 11:28:21 server id 1  end_log_pos 26630 CRC32 0x700fda5d 	Table_map: `news`.`cache` mapped to number 88
# at 26630
#260731 11:28:21 server id 1  end_log_pos 26746 CRC32 0x5191eb23 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
ZSRsahMBAAAAOwAAAAZoAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4F3a
D3A=
ZSRsaiABAAAAdAAAAHpoAAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjFmMjU2OTJlOTA3MTg4NmQ3ZDRiMzgyMDE5MGIwOTYwMmY3NDgwMjIEAABpOjI7OiRsaiPr
kVE=
'/*!*/;
# at 26746
#260731 11:28:21 server id 1  end_log_pos 26777 CRC32 0x9c88a6d5 	Xid = 899
COMMIT/*!*/;
# at 26777
#260731 11:28:21 server id 1  end_log_pos 26856 CRC32 0xeae91af2 	Anonymous_GTID	last_committed=29	sequence_number=30	rbr_only=yes	original_committed_timestamp=1785472101886752	immediate_commit_timestamp=1785472101886752	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472101886752 (2026-07-31 11:28:21.886752 SE Asia Standard Time)
# immediate_commit_timestamp=1785472101886752 (2026-07-31 11:28:21.886752 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472101886752*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 26856
#260731 11:28:21 server id 1  end_log_pos 26931 CRC32 0xde1e9d9d 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472101/*!*/;
BEGIN
/*!*/;
# at 26931
#260731 11:28:21 server id 1  end_log_pos 26990 CRC32 0xfb36092f 	Table_map: `news`.`cache` mapped to number 88
# at 26990
#260731 11:28:21 server id 1  end_log_pos 27106 CRC32 0x4f78dcc3 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
ZSRsahMBAAAAOwAAAG5pAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4C8J
Nvs=
ZSRsah4BAAAAdAAAAOJpAAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjFmMjU2OTJlOTA3MTg4NmQ3ZDRiMzgyMDE5MGIwOTYwMmY3NDgwMjIEAABpOjE7oSRsasPc
eE8=
'/*!*/;
# at 27106
#260731 11:28:21 server id 1  end_log_pos 27137 CRC32 0x62acd042 	Xid = 902
COMMIT/*!*/;
# at 27137
#260731 11:28:21 server id 1  end_log_pos 27216 CRC32 0x6a4a9201 	Anonymous_GTID	last_committed=30	sequence_number=31	rbr_only=yes	original_committed_timestamp=1785472101950929	immediate_commit_timestamp=1785472101950929	transaction_length=369
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472101950929 (2026-07-31 11:28:21.950929 SE Asia Standard Time)
# immediate_commit_timestamp=1785472101950929 (2026-07-31 11:28:21.950929 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472101950929*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 27216
#260731 11:28:21 server id 1  end_log_pos 27291 CRC32 0x2eb22d34 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472101/*!*/;
BEGIN
/*!*/;
# at 27291
#260731 11:28:21 server id 1  end_log_pos 27350 CRC32 0xbd0d7af8 	Table_map: `news`.`cache` mapped to number 88
# at 27350
#260731 11:28:21 server id 1  end_log_pos 27475 CRC32 0x9106e3d6 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
ZSRsahMBAAAAOwAAANZqAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Ph6
Db0=
ZSRsaiABAAAAfQAAAFNrAAAAAFgAAAAAAAEAAgAD/wBMAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTYEAABp
OjI7BSRsatbjBpE=
'/*!*/;
# at 27475
#260731 11:28:21 server id 1  end_log_pos 27506 CRC32 0xd1c5a088 	Xid = 914
COMMIT/*!*/;
# at 27506
#260731 11:28:21 server id 1  end_log_pos 27585 CRC32 0x65dd48b1 	Anonymous_GTID	last_committed=31	sequence_number=32	rbr_only=yes	original_committed_timestamp=1785472101953225	immediate_commit_timestamp=1785472101953225	transaction_length=384
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472101953225 (2026-07-31 11:28:21.953225 SE Asia Standard Time)
# immediate_commit_timestamp=1785472101953225 (2026-07-31 11:28:21.953225 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472101953225*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 27585
#260731 11:28:21 server id 1  end_log_pos 27660 CRC32 0x296b6d50 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472101/*!*/;
BEGIN
/*!*/;
# at 27660
#260731 11:28:21 server id 1  end_log_pos 27719 CRC32 0x8b53b50d 	Table_map: `news`.`cache` mapped to number 88
# at 27719
#260731 11:28:21 server id 1  end_log_pos 27859 CRC32 0x0b753513 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
ZSRsahMBAAAAOwAAAEdsAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4A21
U4s=
ZSRsaiABAAAAjAAAANNsAAAAAFgAAAAAAAEAAgAD/wBSAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTY6dGlt
ZXINAABpOjE3ODU0NzIwMDU7BSRsahM1dQs=
'/*!*/;
# at 27859
#260731 11:28:21 server id 1  end_log_pos 27890 CRC32 0xbe0555fa 	Xid = 920
COMMIT/*!*/;
# at 27890
#260731 11:28:21 server id 1  end_log_pos 27969 CRC32 0xc039cfff 	Anonymous_GTID	last_committed=32	sequence_number=33	rbr_only=yes	original_committed_timestamp=1785472101954702	immediate_commit_timestamp=1785472101954702	transaction_length=384
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472101954702 (2026-07-31 11:28:21.954702 SE Asia Standard Time)
# immediate_commit_timestamp=1785472101954702 (2026-07-31 11:28:21.954702 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472101954702*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 27969
#260731 11:28:21 server id 1  end_log_pos 28044 CRC32 0x3d94d606 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472101/*!*/;
BEGIN
/*!*/;
# at 28044
#260731 11:28:21 server id 1  end_log_pos 28103 CRC32 0xfaf76edc 	Table_map: `news`.`cache` mapped to number 88
# at 28103
#260731 11:28:21 server id 1  end_log_pos 28243 CRC32 0xd8ca6e1f 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
ZSRsahMBAAAAOwAAAMdtAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Nxu
9/o=
ZSRsah4BAAAAjAAAAFNuAAAAAFgAAAAAAAEAAgAD/wBSAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTY6dGlt
ZXINAABpOjE3ODU0NzIxNjE7oSRsah9uytg=
'/*!*/;
# at 28243
#260731 11:28:21 server id 1  end_log_pos 28274 CRC32 0xd3a508b0 	Xid = 923
COMMIT/*!*/;
# at 28274
#260731 11:28:21 server id 1  end_log_pos 28353 CRC32 0x4b1d1ca9 	Anonymous_GTID	last_committed=33	sequence_number=34	rbr_only=yes	original_committed_timestamp=1785472101956583	immediate_commit_timestamp=1785472101956583	transaction_length=369
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472101956583 (2026-07-31 11:28:21.956583 SE Asia Standard Time)
# immediate_commit_timestamp=1785472101956583 (2026-07-31 11:28:21.956583 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472101956583*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 28353
#260731 11:28:21 server id 1  end_log_pos 28428 CRC32 0x00941bfc 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472101/*!*/;
BEGIN
/*!*/;
# at 28428
#260731 11:28:21 server id 1  end_log_pos 28487 CRC32 0x681a02af 	Table_map: `news`.`cache` mapped to number 88
# at 28487
#260731 11:28:21 server id 1  end_log_pos 28612 CRC32 0xd94cb6c5 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
ZSRsahMBAAAAOwAAAEdvAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4K8C
Gmg=
ZSRsah4BAAAAfQAAAMRvAAAAAFgAAAAAAAEAAgAD/wBMAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTYEAABp
OjA7oSRsasW2TNk=
'/*!*/;
# at 28612
#260731 11:28:21 server id 1  end_log_pos 28643 CRC32 0x62f0ac78 	Xid = 929
COMMIT/*!*/;
# at 28643
#260731 11:28:21 server id 1  end_log_pos 28722 CRC32 0x47b1f0a3 	Anonymous_GTID	last_committed=34	sequence_number=35	rbr_only=yes	original_committed_timestamp=1785472101960222	immediate_commit_timestamp=1785472101960222	transaction_length=469
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472101960222 (2026-07-31 11:28:21.960222 SE Asia Standard Time)
# immediate_commit_timestamp=1785472101960222 (2026-07-31 11:28:21.960222 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472101960222*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 28722
#260731 11:28:21 server id 1  end_log_pos 28806 CRC32 0x857d9b74 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472101/*!*/;
BEGIN
/*!*/;
# at 28806
#260731 11:28:21 server id 1  end_log_pos 28865 CRC32 0x03a20289 	Table_map: `news`.`cache` mapped to number 88
# at 28865
#260731 11:28:21 server id 1  end_log_pos 29081 CRC32 0x05491df1 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
ZSRsahMBAAAAOwAAAMFwAAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4IkC
ogM=
ZSRsah8BAAAA2AAAAJlxAAAAAFgAAAAAAAEAAgAD//8ATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJl
LXJhdGUtbGltaXRlcjoxNmQzNmRmZjlhYmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAA
aTowO6EkbGoATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJlLXJhdGUtbGltaXRlcjoxNmQzNmRmZjlh
YmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAAaToxO6EkbGrxHUkF
'/*!*/;
# at 29081
#260731 11:28:21 server id 1  end_log_pos 29112 CRC32 0xc068f898 	Xid = 933
COMMIT/*!*/;
# at 29112
#260731 11:28:22 server id 1  end_log_pos 29191 CRC32 0x4ce95d2a 	Anonymous_GTID	last_committed=35	sequence_number=36	rbr_only=yes	original_committed_timestamp=1785472102636300	immediate_commit_timestamp=1785472102636300	transaction_length=854
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472102636300 (2026-07-31 11:28:22.636300 SE Asia Standard Time)
# immediate_commit_timestamp=1785472102636300 (2026-07-31 11:28:22.636300 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472102636300*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 29191
#260731 11:28:22 server id 1  end_log_pos 29266 CRC32 0x74105f0f 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472102/*!*/;
BEGIN
/*!*/;
# at 29266
#260731 11:28:22 server id 1  end_log_pos 29334 CRC32 0x465d97c8 	Table_map: `news`.`sessions` mapped to number 83
# at 29334
#260731 11:28:22 server id 1  end_log_pos 29935 CRC32 0xa0beeb4e 	Delete_rows: table id 83 flags: STMT_END_F

BINLOG '
ZiRsahMBAAAARAAAAJZyAAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4MiXXUY=
ZiRsaiABAAAAWQIAAO90AAAAAFMAAAAAAAEAAgAG/wIoAHE5WVZTOXFHZk9lQmhKeGNhVGdJZGMz
djlqMnBOVlJBT0R5dFR5N08JMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4w
OyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJv
bWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaIAQAAWVRvME9udHpPalk2SWw5MGIydGxiaUk3Y3pv
ME1Eb2llbHBtUmpKRWRqazVWR2RZZDNkVGEwVmhabXhpWTFKbE0yMWtkVlZUTVhOU1FVZDBVMHQw
VWlJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWprNkltaDBk
SEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNkluSnZkWFJsSWp0ek9q
STFPaUptYVd4aGJXVnVkQzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5Y3pvMk9pSmZabXhoYzJn
aU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96
T2lKMWNtd2lPMkU2TVRwN2N6bzRPaUpwYm5SbGJtUmxaQ0k3Y3pveU16b2lhSFIwY0hNNkx5OXVa
WGR6TG5SbGMzUXZZV1J0YVc0aU8zMTkwJGxqTuu+oA==
'/*!*/;
# at 29935
#260731 11:28:22 server id 1  end_log_pos 29966 CRC32 0x155c671f 	Xid = 946
COMMIT/*!*/;
# at 29966
#260731 11:28:22 server id 1  end_log_pos 30045 CRC32 0x66858ae9 	Anonymous_GTID	last_committed=36	sequence_number=37	rbr_only=yes	original_committed_timestamp=1785472102640031	immediate_commit_timestamp=1785472102640031	transaction_length=501
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472102640031 (2026-07-31 11:28:22.640031 SE Asia Standard Time)
# immediate_commit_timestamp=1785472102640031 (2026-07-31 11:28:22.640031 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472102640031*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 30045
#260731 11:28:22 server id 1  end_log_pos 30128 CRC32 0x78649fe1 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472102/*!*/;
BEGIN
/*!*/;
# at 30128
#260731 11:28:22 server id 1  end_log_pos 30206 CRC32 0x63c6649a 	Table_map: `news`.`activity_logs` mapped to number 101
# at 30206
#260731 11:28:22 server id 1  end_log_pos 30436 CRC32 0xd1b5ee5f 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
ZiRsahMBAAAATgAAAP51AAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeCaZMZj
ZiRsah4BAAAA5gAAAOR2AAAAAGUAAAAAAAEAAgAI/wgiAwAAAAAAAAwAAAAAAAAABQBsb2dpbioA
aHR0cHM6Ly9uZXdzLnRlc3QvbGl2ZXdpcmUtZTYwNDQ3NGIvdXBkYXRlCTEyNy4wLjAuMW8ATW96
aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2
IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2amvB9l/u
tdE=
'/*!*/;
# at 30436
#260731 11:28:22 server id 1  end_log_pos 30467 CRC32 0xc83fab16 	Xid = 949
COMMIT/*!*/;
# at 30467
#260731 11:28:22 server id 1  end_log_pos 30546 CRC32 0x2f5afa12 	Anonymous_GTID	last_committed=37	sequence_number=38	rbr_only=yes	original_committed_timestamp=1785472102660145	immediate_commit_timestamp=1785472102660145	transaction_length=886
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472102660145 (2026-07-31 11:28:22.660145 SE Asia Standard Time)
# immediate_commit_timestamp=1785472102660145 (2026-07-31 11:28:22.660145 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472102660145*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 30546
#260731 11:28:22 server id 1  end_log_pos 30621 CRC32 0x10e147b3 	Query	thread_id=54	exec_time=0	error_code=0
SET TIMESTAMP=1785472102/*!*/;
BEGIN
/*!*/;
# at 30621
#260731 11:28:22 server id 1  end_log_pos 30689 CRC32 0xcddc36e5 	Table_map: `news`.`sessions` mapped to number 83
# at 30689
#260731 11:28:22 server id 1  end_log_pos 31322 CRC32 0xa6b28b25 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
ZiRsahMBAAAARAAAAOF3AAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4OU23M0=
ZiRsah4BAAAAeQIAAFp6AAAAAFMAAAAAAAEAAgAG/wAoAGRmT1hwTXhJSkNvYzVHQUNFMFNnemIy
RUtZa2hrZmlaYzhnd2RGVEsMAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dz
IE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vj
a28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNqABAABZVG8xT250ek9qWTZJbDkwYjJ0
bGJpSTdjem8wTURvaWMyUlBXRTFQYzFsak9GTlhabWhzWlRsWFZtTXhVakJTVTJOM1pIcDRTR2wz
YTFseFJuRlhXaUk3Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZN
ams2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVMMnh2WjJsdUlqdHpPalU2SW5KdmRY
UmxJanR6T2pJMU9pSm1hV3hoYldWdWRDNWhaRzFwYmk1aGRYUm9MbXh2WjJsdUlqdDljem8yT2lK
ZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2
ZTMxOWN6b3pPaUoxY213aU8yRTZNRHA3ZlhNNk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16Wmha
R1JqTW1JeVpqazBNREUxT0RCbU1ERTBZemRtTlRobFlUUmxNekE1T0Rsa0lqdHBPakV5TzMwPWYk
bGoli7Km
'/*!*/;
# at 31322
#260731 11:28:22 server id 1  end_log_pos 31353 CRC32 0x2f400c69 	Xid = 976
COMMIT/*!*/;
# at 31353
#260731 11:28:34 server id 1  end_log_pos 31433 CRC32 0x1cc18c33 	Anonymous_GTID	last_committed=38	sequence_number=39	rbr_only=yes	original_committed_timestamp=1785472114688316	immediate_commit_timestamp=1785472114688316	transaction_length=66697
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472114688316 (2026-07-31 11:28:34.688316 SE Asia Standard Time)
# immediate_commit_timestamp=1785472114688316 (2026-07-31 11:28:34.688316 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472114688316*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 31433
#260731 11:28:34 server id 1  end_log_pos 31508 CRC32 0xb31bd6dc 	Query	thread_id=55	exec_time=0	error_code=0
SET TIMESTAMP=1785472114/*!*/;
BEGIN
/*!*/;
# at 31508
#260731 11:28:34 server id 1  end_log_pos 31567 CRC32 0x8e6e62b5 	Table_map: `news`.`cache` mapped to number 88
# at 31567
#260731 11:28:34 server id 1  end_log_pos 98019 CRC32 0xb2a55ce9 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
ciRsahMBAAAAOwAAAE97AAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4LVi
bo4=
ciRsah4BAAAAlAMBAON+AQAAAFgAAAAAAAEAAgAD/wAlAGxhcmF2ZWwtY2FjaGUtc3BhdGllLnBl
cm1pc3Npb24uY2FjaGVCAwFhOjM6e3M6NToiYWxpYXMiO2E6NDp7czoxOiJhIjtzOjI6ImlkIjtz
OjE6ImIiO3M6NDoibmFtZSI7czoxOiJjIjtzOjEwOiJndWFyZF9uYW1lIjtzOjE6InIiO3M6NToi
cm9sZXMiO31zOjExOiJwZXJtaXNzaW9ucyI7YTo3NTI6e2k6MDthOjQ6e3M6MToiYSI7aToxO3M6
MToiYiI7czoyMToiVmlld0FueTpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6
InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxO2E6NDp7czoxOiJhIjtpOjI7czoxOiJiIjtz
OjE4OiJWaWV3OkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntp
OjA7aTo1O2k6MTtpOjY7fX1pOjI7YTo0OntzOjE6ImEiO2k6MztzOjE6ImIiO3M6MjA6IkNyZWF0
ZTpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtp
OjE7aTo2O319aTozO2E6NDp7czoxOiJhIjtpOjQ7czoxOiJiIjtzOjIwOiJVcGRhdGU6QWR2ZXJ0
aXNlbWVudCI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9
fWk6NDthOjQ6e3M6MToiYSI7aTo1O3M6MToiYiI7czoyMDoiRGVsZXRlOkFkdmVydGlzZW1lbnQi
O3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjU7YTo0
OntzOjE6ImEiO2k6NjtzOjE6ImIiO3M6MjM6IkRlbGV0ZUFueTpBZHZlcnRpc2VtZW50IjtzOjE6
ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTo2O2E6NDp7czox
OiJhIjtpOjc7czoxOiJiIjtzOjIxOiJSZXN0b3JlOkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czoz
OiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjc7YTo0OntzOjE6ImEiO2k6
ODtzOjE6ImIiO3M6MjU6IkZvcmNlRGVsZXRlOkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czozOiJ3
ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjg7YTo0OntzOjE6ImEiO2k6OTtz
OjE6ImIiO3M6Mjg6IkZvcmNlRGVsZXRlQW55OkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czozOiJ3
ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjk7YTo0OntzOjE6ImEiO2k6MTA7
czoxOiJiIjtzOjI0OiJSZXN0b3JlQW55OkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czozOiJ3ZWIi
O3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjEwO2E6NDp7czoxOiJhIjtpOjExO3M6
MToiYiI7czoyMzoiUmVwbGljYXRlOkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czozOiJ3ZWIiO3M6
MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjExO2E6NDp7czoxOiJhIjtpOjEyO3M6MToi
YiI7czoyMToiUmVvcmRlcjpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIi
O2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxMjthOjQ6e3M6MToiYSI7aToxMztzOjE6ImIiO3M6
MTY6IlZpZXdBbnk6Q2F0ZWdvcnkiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7
aTo1O2k6MTtpOjY7fX1pOjEzO2E6NDp7czoxOiJhIjtpOjE0O3M6MToiYiI7czoxMzoiVmlldzpD
YXRlZ29yeSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9
fWk6MTQ7YTo0OntzOjE6ImEiO2k6MTU7czoxOiJiIjtzOjE1OiJDcmVhdGU6Q2F0ZWdvcnkiO3M6
MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE1O2E6NDp7
czoxOiJhIjtpOjE2O3M6MToiYiI7czoxNToiVXBkYXRlOkNhdGVnb3J5IjtzOjE6ImMiO3M6Mzoi
d2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNjthOjQ6e3M6MToiYSI7aTox
NztzOjE6ImIiO3M6MTU6IkRlbGV0ZTpDYXRlZ29yeSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJy
IjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTc7YTo0OntzOjE6ImEiO2k6MTg7czoxOiJiIjtz
OjE4OiJEZWxldGVBbnk6Q2F0ZWdvcnkiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntp
OjA7aTo1O2k6MTtpOjY7fX1pOjE4O2E6NDp7czoxOiJhIjtpOjE5O3M6MToiYiI7czoxNjoiUmVz
dG9yZTpDYXRlZ29yeSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aTox
O2k6Njt9fWk6MTk7YTo0OntzOjE6ImEiO2k6MjA7czoxOiJiIjtzOjIwOiJGb3JjZURlbGV0ZTpD
YXRlZ29yeSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9
fWk6MjA7YTo0OntzOjE6ImEiO2k6MjE7czoxOiJiIjtzOjIzOiJGb3JjZURlbGV0ZUFueTpDYXRl
Z29yeSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6
MjE7YTo0OntzOjE6ImEiO2k6MjI7czoxOiJiIjtzOjE5OiJSZXN0b3JlQW55OkNhdGVnb3J5Ijtz
OjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToyMjthOjQ6
e3M6MToiYSI7aToyMztzOjE6ImIiO3M6MTg6IlJlcGxpY2F0ZTpDYXRlZ29yeSI7czoxOiJjIjtz
OjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MjM7YTo0OntzOjE6ImEi
O2k6MjQ7czoxOiJiIjtzOjE2OiJSZW9yZGVyOkNhdGVnb3J5IjtzOjE6ImMiO3M6Mzoid2ViIjtz
OjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToyNDthOjQ6e3M6MToiYSI7aToyNTtzOjE6
ImIiO3M6MTI6IlZpZXdBbnk6TmV3cyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6
MDtpOjU7aToxO2k6Njt9fWk6MjU7YTo0OntzOjE6ImEiO2k6MjY7czoxOiJiIjtzOjk6IlZpZXc6
TmV3cyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6
MjY7YTo0OntzOjE6ImEiO2k6Mjc7czoxOiJiIjtzOjExOiJDcmVhdGU6TmV3cyI7czoxOiJjIjtz
OjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6Mjc7YTo0OntzOjE6ImEi
O2k6Mjg7czoxOiJiIjtzOjExOiJVcGRhdGU6TmV3cyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJy
IjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6Mjg7YTo0OntzOjE6ImEiO2k6Mjk7czoxOiJiIjtz
OjExOiJEZWxldGU6TmV3cyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7
aToxO2k6Njt9fWk6Mjk7YTo0OntzOjE6ImEiO2k6MzA7czoxOiJiIjtzOjE0OiJEZWxldGVBbnk6
TmV3cyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6
MzA7YTo0OntzOjE6ImEiO2k6MzE7czoxOiJiIjtzOjEyOiJSZXN0b3JlOk5ld3MiO3M6MToiYyI7
czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjMxO2E6NDp7czoxOiJh
IjtpOjMyO3M6MToiYiI7czoxNjoiRm9yY2VEZWxldGU6TmV3cyI7czoxOiJjIjtzOjM6IndlYiI7
czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MzI7YTo0OntzOjE6ImEiO2k6MzM7czox
OiJiIjtzOjE5OiJGb3JjZURlbGV0ZUFueTpOZXdzIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIi
O2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTozMzthOjQ6e3M6MToiYSI7aTozNDtzOjE6ImIiO3M6
MTU6IlJlc3RvcmVBbnk6TmV3cyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtp
OjU7aToxO2k6Njt9fWk6MzQ7YTo0OntzOjE6ImEiO2k6MzU7czoxOiJiIjtzOjE0OiJSZXBsaWNh
dGU6TmV3cyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9
fWk6MzU7YTo0OntzOjE6ImEiO2k6MzY7czoxOiJiIjtzOjEyOiJSZW9yZGVyOk5ld3MiO3M6MToi
YyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjM2O2E6NDp7czox
OiJhIjtpOjM3O3M6MToiYiI7czoxMjoiVmlld0FueTpQYWdlIjtzOjE6ImMiO3M6Mzoid2ViIjtz
OjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTozNzthOjQ6e3M6MToiYSI7aTozODtzOjE6
ImIiO3M6OToiVmlldzpQYWdlIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6
NTtpOjE7aTo2O319aTozODthOjQ6e3M6MToiYSI7aTozOTtzOjE6ImIiO3M6MTE6IkNyZWF0ZTpQ
YWdlIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToz
OTthOjQ6e3M6MToiYSI7aTo0MDtzOjE6ImIiO3M6MTE6IlVwZGF0ZTpQYWdlIjtzOjE6ImMiO3M6
Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTo0MDthOjQ6e3M6MToiYSI7
aTo0MTtzOjE6ImIiO3M6MTE6IkRlbGV0ZTpQYWdlIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIi
O2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTo0MTthOjQ6e3M6MToiYSI7aTo0MjtzOjE6ImIiO3M6
MTQ6IkRlbGV0ZUFueTpQYWdlIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6
NTtpOjE7aTo2O319aTo0MjthOjQ6e3M6MToiYSI7aTo0MztzOjE6ImIiO3M6MTI6IlJlc3RvcmU6
UGFnZSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6
NDM7YTo0OntzOjE6ImEiO2k6NDQ7czoxOiJiIjtzOjE2OiJGb3JjZURlbGV0ZTpQYWdlIjtzOjE6
ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTo0NDthOjQ6e3M6
MToiYSI7aTo0NTtzOjE6ImIiO3M6MTk6IkZvcmNlRGVsZXRlQW55OlBhZ2UiO3M6MToiYyI7czoz
OiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjQ1O2E6NDp7czoxOiJhIjtp
OjQ2O3M6MToiYiI7czoxNToiUmVzdG9yZUFueTpQYWdlIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6
InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTo0NjthOjQ6e3M6MToiYSI7aTo0NztzOjE6ImIi
O3M6MTQ6IlJlcGxpY2F0ZTpQYWdlIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTow
O2k6NTtpOjE7aTo2O319aTo0NzthOjQ6e3M6MToiYSI7aTo0ODtzOjE6ImIiO3M6MTI6IlJlb3Jk
ZXI6UGFnZSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9
fWk6NDg7YTo0OntzOjE6ImEiO2k6NDk7czoxOiJiIjtzOjE1OiJWaWV3QW55OlNldHRpbmciO3M6
MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTo0OTthOjQ6e3M6MToiYSI7
aTo1MDtzOjE6ImIiO3M6MTI6IlZpZXc6U2V0dGluZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJy
IjthOjE6e2k6MDtpOjU7fX1pOjUwO2E6NDp7czoxOiJhIjtpOjUxO3M6MToiYiI7czoxNDoiQ3Jl
YXRlOlNldHRpbmciO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTo1
MTthOjQ6e3M6MToiYSI7aTo1MjtzOjE6ImIiO3M6MTQ6IlVwZGF0ZTpTZXR0aW5nIjtzOjE6ImMi
O3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7aTowO2k6NTt9fWk6NTI7YTo0OntzOjE6ImEiO2k6NTM7
czoxOiJiIjtzOjE0OiJEZWxldGU6U2V0dGluZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjth
OjE6e2k6MDtpOjU7fX1pOjUzO2E6NDp7czoxOiJhIjtpOjU0O3M6MToiYiI7czoxNzoiRGVsZXRl
QW55OlNldHRpbmciO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTo1
NDthOjQ6e3M6MToiYSI7aTo1NTtzOjE6ImIiO3M6MTU6IlJlc3RvcmU6U2V0dGluZyI7czoxOiJj
IjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjU1O2E6NDp7czoxOiJhIjtpOjU2
O3M6MToiYiI7czoxOToiRm9yY2VEZWxldGU6U2V0dGluZyI7czoxOiJjIjtzOjM6IndlYiI7czox
OiJyIjthOjE6e2k6MDtpOjU7fX1pOjU2O2E6NDp7czoxOiJhIjtpOjU3O3M6MToiYiI7czoyMjoi
Rm9yY2VEZWxldGVBbnk6U2V0dGluZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6
MDtpOjU7fX1pOjU3O2E6NDp7czoxOiJhIjtpOjU4O3M6MToiYiI7czoxODoiUmVzdG9yZUFueTpT
ZXR0aW5nIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7aTowO2k6NTt9fWk6NTg7YTo0
OntzOjE6ImEiO2k6NTk7czoxOiJiIjtzOjE3OiJSZXBsaWNhdGU6U2V0dGluZyI7czoxOiJjIjtz
OjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjU5O2E6NDp7czoxOiJhIjtpOjYwO3M6
MToiYiI7czoxNToiUmVvcmRlcjpTZXR0aW5nIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6
MTp7aTowO2k6NTt9fWk6NjA7YTo0OntzOjE6ImEiO2k6NjE7czoxOiJiIjtzOjExOiJWaWV3QW55
OlRhZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjYxO2E6NDp7
czoxOiJhIjtpOjYyO3M6MToiYiI7czo4OiJWaWV3OlRhZyI7czoxOiJjIjtzOjM6IndlYiI7czox
OiJyIjthOjE6e2k6MDtpOjU7fX1pOjYyO2E6NDp7czoxOiJhIjtpOjYzO3M6MToiYiI7czoxMDoi
Q3JlYXRlOlRhZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjYz
O2E6NDp7czoxOiJhIjtpOjY0O3M6MToiYiI7czoxMDoiVXBkYXRlOlRhZyI7czoxOiJjIjtzOjM6
IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjY0O2E6NDp7czoxOiJhIjtpOjY1O3M6MToi
YiI7czoxMDoiRGVsZXRlOlRhZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtp
OjU7fX1pOjY1O2E6NDp7czoxOiJhIjtpOjY2O3M6MToiYiI7czoxMzoiRGVsZXRlQW55OlRhZyI7
czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjY2O2E6NDp7czoxOiJh
IjtpOjY3O3M6MToiYiI7czoxMToiUmVzdG9yZTpUYWciO3M6MToiYyI7czozOiJ3ZWIiO3M6MToi
ciI7YToxOntpOjA7aTo1O319aTo2NzthOjQ6e3M6MToiYSI7aTo2ODtzOjE6ImIiO3M6MTU6IkZv
cmNlRGVsZXRlOlRhZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1p
OjY4O2E6NDp7czoxOiJhIjtpOjY5O3M6MToiYiI7czoxODoiRm9yY2VEZWxldGVBbnk6VGFnIjtz
OjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7aTowO2k6NTt9fWk6Njk7YTo0OntzOjE6ImEi
O2k6NzA7czoxOiJiIjtzOjE0OiJSZXN0b3JlQW55OlRhZyI7czoxOiJjIjtzOjM6IndlYiI7czox
OiJyIjthOjE6e2k6MDtpOjU7fX1pOjcwO2E6NDp7czoxOiJhIjtpOjcxO3M6MToiYiI7czoxMzoi
UmVwbGljYXRlOlRhZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1p
OjcxO2E6NDp7czoxOiJhIjtpOjcyO3M6MToiYiI7czoxMToiUmVvcmRlcjpUYWciO3M6MToiYyI7
czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTo3MjthOjQ6e3M6MToiYSI7aTo3Mztz
OjE6ImIiO3M6MTI6IlZpZXdBbnk6VXNlciI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6
e2k6MDtpOjU7fX1pOjczO2E6NDp7czoxOiJhIjtpOjc0O3M6MToiYiI7czo5OiJWaWV3OlVzZXIi
O3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTo3NDthOjQ6e3M6MToi
YSI7aTo3NTtzOjE6ImIiO3M6MTE6IkNyZWF0ZTpVc2VyIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6
InIiO2E6MTp7aTowO2k6NTt9fWk6NzU7YTo0OntzOjE6ImEiO2k6NzY7czoxOiJiIjtzOjExOiJV
cGRhdGU6VXNlciI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjc2
O2E6NDp7czoxOiJhIjtpOjc3O3M6MToiYiI7czoxMToiRGVsZXRlOlVzZXIiO3M6MToiYyI7czoz
OiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTo3NzthOjQ6e3M6MToiYSI7aTo3ODtzOjE6
ImIiO3M6MTQ6IkRlbGV0ZUFueTpVc2VyIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7
aTowO2k6NTt9fWk6Nzg7YTo0OntzOjE6ImEiO2k6Nzk7czoxOiJiIjtzOjEyOiJSZXN0b3JlOlVz
ZXIiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTo3OTthOjQ6e3M6
MToiYSI7aTo4MDtzOjE6ImIiO3M6MTY6IkZvcmNlRGVsZXRlOlVzZXIiO3M6MToiYyI7czozOiJ3
ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTo4MDthOjQ6e3M6MToiYSI7aTo4MTtzOjE6ImIi
O3M6MTk6IkZvcmNlRGVsZXRlQW55OlVzZXIiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YTox
OntpOjA7aTo1O319aTo4MTthOjQ6e3M6MToiYSI7aTo4MjtzOjE6ImIiO3M6MTU6IlJlc3RvcmVB
bnk6VXNlciI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjgyO2E6
NDp7czoxOiJhIjtpOjgzO3M6MToiYiI7czoxNDoiUmVwbGljYXRlOlVzZXIiO3M6MToiYyI7czoz
OiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTo4MzthOjQ6e3M6MToiYSI7aTo4NDtzOjE6
ImIiO3M6MTI6IlJlb3JkZXI6VXNlciI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6
MDtpOjU7fX1pOjg0O2E6NDp7czoxOiJhIjtpOjg1O3M6MToiYiI7czoxMzoiVmlld0FueTpWaWRl
byI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6ODU7
YTo0OntzOjE6ImEiO2k6ODY7czoxOiJiIjtzOjEwOiJWaWV3OlZpZGVvIjtzOjE6ImMiO3M6Mzoi
d2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTo4NjthOjQ6e3M6MToiYSI7aTo4
NztzOjE6ImIiO3M6MTI6IkNyZWF0ZTpWaWRlbyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjth
OjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6ODc7YTo0OntzOjE6ImEiO2k6ODg7czoxOiJiIjtzOjEy
OiJVcGRhdGU6VmlkZW8iO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6
MTtpOjY7fX1pOjg4O2E6NDp7czoxOiJhIjtpOjg5O3M6MToiYiI7czoxMjoiRGVsZXRlOlZpZGVv
IjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTo4OTth
OjQ6e3M6MToiYSI7aTo5MDtzOjE6ImIiO3M6MTU6IkRlbGV0ZUFueTpWaWRlbyI7czoxOiJjIjtz
OjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6OTA7YTo0OntzOjE6ImEi
O2k6OTE7czoxOiJiIjtzOjEzOiJSZXN0b3JlOlZpZGVvIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6
InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTo5MTthOjQ6e3M6MToiYSI7aTo5MjtzOjE6ImIi
O3M6MTc6IkZvcmNlRGVsZXRlOlZpZGVvIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7
aTowO2k6NTtpOjE7aTo2O319aTo5MjthOjQ6e3M6MToiYSI7aTo5MztzOjE6ImIiO3M6MjA6IkZv
cmNlRGVsZXRlQW55OlZpZGVvIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6
NTtpOjE7aTo2O319aTo5MzthOjQ6e3M6MToiYSI7aTo5NDtzOjE6ImIiO3M6MTY6IlJlc3RvcmVB
bnk6VmlkZW8iO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7
fX1pOjk0O2E6NDp7czoxOiJhIjtpOjk1O3M6MToiYiI7czoxNToiUmVwbGljYXRlOlZpZGVvIjtz
OjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTo5NTthOjQ6
e3M6MToiYSI7aTo5NjtzOjE6ImIiO3M6MTM6IlJlb3JkZXI6VmlkZW8iO3M6MToiYyI7czozOiJ3
ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjk2O2E6NDp7czoxOiJhIjtpOjk3
O3M6MToiYiI7czoxMjoiVmlld0FueTpSb2xlIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6
MTp7aTowO2k6NTt9fWk6OTc7YTo0OntzOjE6ImEiO2k6OTg7czoxOiJiIjtzOjk6IlZpZXc6Um9s
ZSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjk4O2E6NDp7czox
OiJhIjtpOjk5O3M6MToiYiI7czoxMToiQ3JlYXRlOlJvbGUiO3M6MToiYyI7czozOiJ3ZWIiO3M6
MToiciI7YToxOntpOjA7aTo1O319aTo5OTthOjQ6e3M6MToiYSI7aToxMDA7czoxOiJiIjtzOjEx
OiJVcGRhdGU6Um9sZSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1p
OjEwMDthOjQ6e3M6MToiYSI7aToxMDE7czoxOiJiIjtzOjExOiJEZWxldGU6Um9sZSI7czoxOiJj
IjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjEwMTthOjQ6e3M6MToiYSI7aTox
MDI7czoxOiJiIjtzOjE0OiJEZWxldGVBbnk6Um9sZSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJy
IjthOjE6e2k6MDtpOjU7fX1pOjEwMjthOjQ6e3M6MToiYSI7aToxMDM7czoxOiJiIjtzOjEyOiJS
ZXN0b3JlOlJvbGUiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aTox
MDM7YTo0OntzOjE6ImEiO2k6MTA0O3M6MToiYiI7czoxNjoiRm9yY2VEZWxldGU6Um9sZSI7czox
OiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjEwNDthOjQ6e3M6MToiYSI7
aToxMDU7czoxOiJiIjtzOjE5OiJGb3JjZURlbGV0ZUFueTpSb2xlIjtzOjE6ImMiO3M6Mzoid2Vi
IjtzOjE6InIiO2E6MTp7aTowO2k6NTt9fWk6MTA1O2E6NDp7czoxOiJhIjtpOjEwNjtzOjE6ImIi
O3M6MTU6IlJlc3RvcmVBbnk6Um9sZSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6
MDtpOjU7fX1pOjEwNjthOjQ6e3M6MToiYSI7aToxMDc7czoxOiJiIjtzOjE0OiJSZXBsaWNhdGU6
Um9sZSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjEwNzthOjQ6
e3M6MToiYSI7aToxMDg7czoxOiJiIjtzOjEyOiJSZW9yZGVyOlJvbGUiO3M6MToiYyI7czozOiJ3
ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aToxMDg7YTo0OntzOjE6ImEiO2k6MTA5O3M6MToi
YiI7czoxODoiVmlldzpNeVByb2ZpbGVQYWdlIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6
MTp7aTowO2k6NTt9fWk6MTA5O2E6NDp7czoxOiJhIjtpOjExMDtzOjE6ImIiO3M6MTM6IlZpZXc6
TWFpbk1lbnUiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aToxMTA7
YTo0OntzOjE6ImEiO2k6MTExO3M6MToiYiI7czoxOToiVmlld0FueTpBY3Rpdml0eUxvZyI7czox
OiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTExO2E6NDp7
czoxOiJhIjtpOjExMjtzOjE6ImIiO3M6MTY6IlZpZXc6QWN0aXZpdHlMb2ciO3M6MToiYyI7czoz
OiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjExMjthOjQ6e3M6MToiYSI7
aToxMTM7czoxOiJiIjtzOjE4OiJDcmVhdGU6QWN0aXZpdHlMb2ciO3M6MToiYyI7czozOiJ3ZWIi
O3M6MToiciI7YToxOntpOjA7aTo1O319aToxMTM7YTo0OntzOjE6ImEiO2k6MTE0O3M6MToiYiI7
czoxODoiVXBkYXRlOkFjdGl2aXR5TG9nIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7
aTowO2k6NTt9fWk6MTE0O2E6NDp7czoxOiJhIjtpOjExNTtzOjE6ImIiO3M6MTg6IkRlbGV0ZTpB
Y3Rpdml0eUxvZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjEx
NTthOjQ6e3M6MToiYSI7aToxMTY7czoxOiJiIjtzOjIxOiJEZWxldGVBbnk6QWN0aXZpdHlMb2ci
O3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aToxMTY7YTo0OntzOjE6
ImEiO2k6MTE3O3M6MToiYiI7czoxOToiUmVzdG9yZTpBY3Rpdml0eUxvZyI7czoxOiJjIjtzOjM6
IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjExNzthOjQ6e3M6MToiYSI7aToxMTg7czox
OiJiIjtzOjIzOiJGb3JjZURlbGV0ZTpBY3Rpdml0eUxvZyI7czoxOiJjIjtzOjM6IndlYiI7czox
OiJyIjthOjE6e2k6MDtpOjU7fX1pOjExODthOjQ6e3M6MToiYSI7aToxMTk7czoxOiJiIjtzOjI2
OiJGb3JjZURlbGV0ZUFueTpBY3Rpdml0eUxvZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjth
OjE6e2k6MDtpOjU7fX1pOjExOTthOjQ6e3M6MToiYSI7aToxMjA7czoxOiJiIjtzOjIyOiJSZXN0
b3JlQW55OkFjdGl2aXR5TG9nIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7aTowO2k6
NTt9fWk6MTIwO2E6NDp7czoxOiJhIjtpOjEyMTtzOjE6ImIiO3M6MjE6IlJlcGxpY2F0ZTpBY3Rp
dml0eUxvZyI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjEyMTth
OjQ6e3M6MToiYSI7aToxMjI7czoxOiJiIjtzOjE5OiJSZW9yZGVyOkFjdGl2aXR5TG9nIjtzOjE6
ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7aTowO2k6NTt9fWk6MTIyO2E6NDp7czoxOiJhIjtp
OjEyMztzOjE6ImIiO3M6MTc6IlZpZXdBbnk6QmxvY2tlZElwIjtzOjE6ImMiO3M6Mzoid2ViIjtz
OjE6InIiO2E6MTp7aTowO2k6NTt9fWk6MTIzO2E6NDp7czoxOiJhIjtpOjEyNDtzOjE6ImIiO3M6
MTQ6IlZpZXc6QmxvY2tlZElwIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7aTowO2k6
NTt9fWk6MTI0O2E6NDp7czoxOiJhIjtpOjEyNTtzOjE6ImIiO3M6MTY6IkNyZWF0ZTpCbG9ja2Vk
SXAiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aToxMjU7YTo0Ontz
OjE6ImEiO2k6MTI2O3M6MToiYiI7czoxNjoiVXBkYXRlOkJsb2NrZWRJcCI7czoxOiJjIjtzOjM6
IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjEyNjthOjQ6e3M6MToiYSI7aToxMjc7czox
OiJiIjtzOjE2OiJEZWxldGU6QmxvY2tlZElwIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6
MTp7aTowO2k6NTt9fWk6MTI3O2E6NDp7czoxOiJhIjtpOjEyODtzOjE6ImIiO3M6MTk6IkRlbGV0
ZUFueTpCbG9ja2VkSXAiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319
aToxMjg7YTo0OntzOjE6ImEiO2k6MTI5O3M6MToiYiI7czoxNzoiUmVzdG9yZTpCbG9ja2VkSXAi
O3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToxOntpOjA7aTo1O319aToxMjk7YTo0OntzOjE6
ImEiO2k6MTMwO3M6MToiYiI7czoyMToiRm9yY2VEZWxldGU6QmxvY2tlZElwIjtzOjE6ImMiO3M6
Mzoid2ViIjtzOjE6InIiO2E6MTp7aTowO2k6NTt9fWk6MTMwO2E6NDp7czoxOiJhIjtpOjEzMTtz
OjE6ImIiO3M6MjQ6IkZvcmNlRGVsZXRlQW55OkJsb2NrZWRJcCI7czoxOiJjIjtzOjM6IndlYiI7
czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjEzMTthOjQ6e3M6MToiYSI7aToxMzI7czoxOiJiIjtz
OjIwOiJSZXN0b3JlQW55OkJsb2NrZWRJcCI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjE6
e2k6MDtpOjU7fX1pOjEzMjthOjQ6e3M6MToiYSI7aToxMzM7czoxOiJiIjtzOjE5OiJSZXBsaWNh
dGU6QmxvY2tlZElwIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7aTowO2k6NTt9fWk6
MTMzO2E6NDp7czoxOiJhIjtpOjEzNDtzOjE6ImIiO3M6MTc6IlJlb3JkZXI6QmxvY2tlZElwIjtz
OjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6MTp7aTowO2k6NTt9fWk6MTM0O2E6NDp7czoxOiJh
IjtpOjEzNTtzOjE6ImIiO3M6Mjc6IlZpZXdBbnk6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJj
IjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTM1O2E6NDp7czox
OiJhIjtpOjEzNjtzOjE6ImIiO3M6MjQ6IlZpZXc6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJj
IjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTM2O2E6NDp7czox
OiJhIjtpOjEzNztzOjE6ImIiO3M6MjY6IkNyZWF0ZTpEZXN0aW5hdGlvbkNhdGVnb3J5IjtzOjE6
ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxMzc7YTo0Ontz
OjE6ImEiO2k6MTM4O3M6MToiYiI7czoyNjoiVXBkYXRlOkRlc3RpbmF0aW9uQ2F0ZWdvcnkiO3M6
MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjEzODthOjQ6
e3M6MToiYSI7aToxMzk7czoxOiJiIjtzOjI2OiJEZWxldGU6RGVzdGluYXRpb25DYXRlZ29yeSI7
czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTM5O2E6
NDp7czoxOiJhIjtpOjE0MDtzOjE6ImIiO3M6Mjk6IkRlbGV0ZUFueTpEZXN0aW5hdGlvbkNhdGVn
b3J5IjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTox
NDA7YTo0OntzOjE6ImEiO2k6MTQxO3M6MToiYiI7czoyNzoiUmVzdG9yZTpEZXN0aW5hdGlvbkNh
dGVnb3J5IjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319
aToxNDE7YTo0OntzOjE6ImEiO2k6MTQyO3M6MToiYiI7czozMToiRm9yY2VEZWxldGU6RGVzdGlu
YXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aTox
O2k6Njt9fWk6MTQyO2E6NDp7czoxOiJhIjtpOjE0MztzOjE6ImIiO3M6MzQ6IkZvcmNlRGVsZXRl
QW55OkRlc3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntp
OjA7aTo1O2k6MTtpOjY7fX1pOjE0MzthOjQ6e3M6MToiYSI7aToxNDQ7czoxOiJiIjtzOjMwOiJS
ZXN0b3JlQW55OkRlc3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7
YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE0NDthOjQ6e3M6MToiYSI7aToxNDU7czoxOiJiIjtz
OjI5OiJSZXBsaWNhdGU6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjM6IndlYiI7czox
OiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTQ1O2E6NDp7czoxOiJhIjtpOjE0NjtzOjE6
ImIiO3M6Mjc6IlJlb3JkZXI6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjM6IndlYiI7
czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTQ2O2E6NDp7czoxOiJhIjtpOjE0Nztz
OjE6ImIiO3M6MTk6IlZpZXdBbnk6RGVzdGluYXRpb24iO3M6MToiYyI7czozOiJ3ZWIiO3M6MToi
ciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE0NzthOjQ6e3M6MToiYSI7aToxNDg7czoxOiJi
IjtzOjE2OiJWaWV3OkRlc3RpbmF0aW9uIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7
aTowO2k6NTtpOjE7aTo2O319aToxNDg7YTo0OntzOjE6ImEiO2k6MTQ5O3M6MToiYiI7czoxODoi
Q3JlYXRlOkRlc3RpbmF0aW9uIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6
NTtpOjE7aTo2O319aToxNDk7YTo0OntzOjE6ImEiO2k6MTUwO3M6MToiYiI7czoxODoiVXBkYXRl
OkRlc3RpbmF0aW9uIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7
aTo2O319aToxNTA7YTo0OntzOjE6ImEiO2k6MTUxO3M6MToiYiI7czoxODoiRGVsZXRlOkRlc3Rp
bmF0aW9uIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319
aToxNTE7YTo0OntzOjE6ImEiO2k6MTUyO3M6MToiYiI7czoyMToiRGVsZXRlQW55OkRlc3RpbmF0
aW9uIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTox
NTI7YTo0OntzOjE6ImEiO2k6MTUzO3M6MToiYiI7czoxOToiUmVzdG9yZTpEZXN0aW5hdGlvbiI7
czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTUzO2E6
NDp7czoxOiJhIjtpOjE1NDtzOjE6ImIiO3M6MjM6IkZvcmNlRGVsZXRlOkRlc3RpbmF0aW9uIjtz
OjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNTQ7YTo0
OntzOjE6ImEiO2k6MTU1O3M6MToiYiI7czoyNjoiRm9yY2VEZWxldGVBbnk6RGVzdGluYXRpb24i
O3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE1NTth
OjQ6e3M6MToiYSI7aToxNTY7czoxOiJiIjtzOjIyOiJSZXN0b3JlQW55OkRlc3RpbmF0aW9uIjtz
OjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNTY7YTo0
OntzOjE6ImEiO2k6MTU3O3M6MToiYiI7czoyMToiUmVwbGljYXRlOkRlc3RpbmF0aW9uIjtzOjE6
ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNTc7YTo0Ontz
OjE6ImEiO2k6MTU4O3M6MToiYiI7czoxOToiUmVvcmRlcjpEZXN0aW5hdGlvbiI7czoxOiJjIjtz
OjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTU4O2E6NDp7czoxOiJh
IjtpOjE1OTtzOjE6ImIiO3M6MTY6IlZpZXdBbnk6RmVzdGl2YWwiO3M6MToiYyI7czozOiJ3ZWIi
O3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE1OTthOjQ6e3M6MToiYSI7aToxNjA7
czoxOiJiIjtzOjEzOiJWaWV3OkZlc3RpdmFsIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6
Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNjA7YTo0OntzOjE6ImEiO2k6MTYxO3M6MToiYiI7czox
NToiQ3JlYXRlOkZlc3RpdmFsIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6
NTtpOjE7aTo2O319aToxNjE7YTo0OntzOjE6ImEiO2k6MTYyO3M6MToiYiI7czoxNToiVXBkYXRl
OkZlc3RpdmFsIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2
O319aToxNjI7YTo0OntzOjE6ImEiO2k6MTYzO3M6MToiYiI7czoxNToiRGVsZXRlOkZlc3RpdmFs
IjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNjM7
YTo0OntzOjE6ImEiO2k6MTY0O3M6MToiYiI7czoxODoiRGVsZXRlQW55OkZlc3RpdmFsIjtzOjE6
ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNjQ7YTo0Ontz
OjE6ImEiO2k6MTY1O3M6MToiYiI7czoxNjoiUmVzdG9yZTpGZXN0aXZhbCI7czoxOiJjIjtzOjM6
IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTY1O2E6NDp7czoxOiJhIjtp
OjE2NjtzOjE6ImIiO3M6MjA6IkZvcmNlRGVsZXRlOkZlc3RpdmFsIjtzOjE6ImMiO3M6Mzoid2Vi
IjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNjY7YTo0OntzOjE6ImEiO2k6MTY3
O3M6MToiYiI7czoyMzoiRm9yY2VEZWxldGVBbnk6RmVzdGl2YWwiO3M6MToiYyI7czozOiJ3ZWIi
O3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE2NzthOjQ6e3M6MToiYSI7aToxNjg7
czoxOiJiIjtzOjE5OiJSZXN0b3JlQW55OkZlc3RpdmFsIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6
InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNjg7YTo0OntzOjE6ImEiO2k6MTY5O3M6MToi
YiI7czoxODoiUmVwbGljYXRlOkZlc3RpdmFsIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6
Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNjk7YTo0OntzOjE6ImEiO2k6MTcwO3M6MToiYiI7czox
NjoiUmVvcmRlcjpGZXN0aXZhbCI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtp
OjU7aToxO2k6Njt9fWk6MTcwO2E6NDp7czoxOiJhIjtpOjE3MTtzOjE6ImIiO3M6MjA6IlZpZXdB
bnk6UGhvdG9HYWxsZXJ5IjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtp
OjE7aTo2O319aToxNzE7YTo0OntzOjE6ImEiO2k6MTcyO3M6MToiYiI7czoxNzoiVmlldzpQaG90
b0dhbGxlcnkiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7
fX1pOjE3MjthOjQ6e3M6MToiYSI7aToxNzM7czoxOiJiIjtzOjE5OiJDcmVhdGU6UGhvdG9HYWxs
ZXJ5IjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aTox
NzM7YTo0OntzOjE6ImEiO2k6MTc0O3M6MToiYiI7czoxOToiVXBkYXRlOlBob3RvR2FsbGVyeSI7
czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTc0O2E6
NDp7czoxOiJhIjtpOjE3NTtzOjE6ImIiO3M6MTk6IkRlbGV0ZTpQaG90b0dhbGxlcnkiO3M6MToi
YyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE3NTthOjQ6e3M6
MToiYSI7aToxNzY7czoxOiJiIjtzOjIyOiJEZWxldGVBbnk6UGhvdG9HYWxsZXJ5IjtzOjE6ImMi
O3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxNzY7YTo0OntzOjE6
ImEiO2k6MTc3O3M6MToiYiI7czoyMDoiUmVzdG9yZTpQaG90b0dhbGxlcnkiO3M6MToiYyI7czoz
OiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE3NzthOjQ6e3M6MToiYSI7
aToxNzg7czoxOiJiIjtzOjI0OiJGb3JjZURlbGV0ZTpQaG90b0dhbGxlcnkiO3M6MToiYyI7czoz
OiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE3ODthOjQ6e3M6MToiYSI7
aToxNzk7czoxOiJiIjtzOjI3OiJGb3JjZURlbGV0ZUFueTpQaG90b0dhbGxlcnkiO3M6MToiYyI7
czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE3OTthOjQ6e3M6MToi
YSI7aToxODA7czoxOiJiIjtzOjIzOiJSZXN0b3JlQW55OlBob3RvR2FsbGVyeSI7czoxOiJjIjtz
OjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTgwO2E6NDp7czoxOiJh
IjtpOjE4MTtzOjE6ImIiO3M6MjI6IlJlcGxpY2F0ZTpQaG90b0dhbGxlcnkiO3M6MToiYyI7czoz
OiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE4MTthOjQ6e3M6MToiYSI7
aToxODI7czoxOiJiIjtzOjIwOiJSZW9yZGVyOlBob3RvR2FsbGVyeSI7czoxOiJjIjtzOjM6Indl
YiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTgyO2E6NDp7czoxOiJhIjtpOjE4
MztzOjE6ImIiO3M6MTQ6IlZpZXdBbnk6U2xpZGVyIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIi
O2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxODM7YTo0OntzOjE6ImEiO2k6MTg0O3M6MToiYiI7
czoxMToiVmlldzpTbGlkZXIiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1
O2k6MTtpOjY7fX1pOjE4NDthOjQ6e3M6MToiYSI7aToxODU7czoxOiJiIjtzOjEzOiJDcmVhdGU6
U2xpZGVyIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319
aToxODU7YTo0OntzOjE6ImEiO2k6MTg2O3M6MToiYiI7czoxMzoiVXBkYXRlOlNsaWRlciI7czox
OiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTg2O2E6NDp7
czoxOiJhIjtpOjE4NztzOjE6ImIiO3M6MTM6IkRlbGV0ZTpTbGlkZXIiO3M6MToiYyI7czozOiJ3
ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE4NzthOjQ6e3M6MToiYSI7aTox
ODg7czoxOiJiIjtzOjE2OiJEZWxldGVBbnk6U2xpZGVyIjtzOjE6ImMiO3M6Mzoid2ViIjtzOjE6
InIiO2E6Mjp7aTowO2k6NTtpOjE7aTo2O319aToxODg7YTo0OntzOjE6ImEiO2k6MTg5O3M6MToi
YiI7czoxNDoiUmVzdG9yZTpTbGlkZXIiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntp
OjA7aTo1O2k6MTtpOjY7fX1pOjE4OTthOjQ6e3M6MToiYSI7aToxOTA7czoxOiJiIjtzOjE4OiJG
b3JjZURlbGV0ZTpTbGlkZXIiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1
O2k6MTtpOjY7fX1pOjE5MDthOjQ6e3M6MToiYSI7aToxOTE7czoxOiJiIjtzOjIxOiJGb3JjZURl
bGV0ZUFueTpTbGlkZXIiO3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6
MTtpOjY7fX1pOjE5MTthOjQ6e3M6MToiYSI7aToxOTI7czoxOiJiIjtzOjE3OiJSZXN0b3JlQW55
OlNsaWRlciI7czoxOiJjIjtzOjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9
fWk6MTkyO2E6NDp7czoxOiJhIjtpOjE5MztzOjE6ImIiO3M6MTY6IlJlcGxpY2F0ZTpTbGlkZXIi
O3M6MToiYyI7czozOiJ3ZWIiO3M6MToiciI7YToyOntpOjA7aTo1O2k6MTtpOjY7fX1pOjE5Mzth
OjQ6e3M6MToiYSI7aToxOTQ7czoxOiJiIjtzOjE0OiJSZW9yZGVyOlNsaWRlciI7czoxOiJjIjtz
OjM6IndlYiI7czoxOiJyIjthOjI6e2k6MDtpOjU7aToxO2k6Njt9fWk6MTk0O2E6NDp7czoxOiJh
IjtpOjE5NTtzOjE6ImIiO3M6Mjc6IlZpZXc6QWN0aXZpdHlMb2dTdGF0c1dpZGdldCI7czoxOiJj
IjtzOjM6IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjE5NTthOjQ6e3M6MToiYSI7aTox
OTY7czoxOiJiIjtzOjI2OiJWaWV3OkFjdGl2aXR5TG9nRG9udXRDaGFydCI7czoxOiJjIjtzOjM6
IndlYiI7czoxOiJyIjthOjE6e2k6MDtpOjU7fX1pOjE5NjthOjM6e3M6MToiYSI7aToxOTc7czox
OiJiIjtzOjE5OiJWaWV3QW55OkFjdGl2aXR5TG9nIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31p
OjE5NzthOjM6e3M6MToiYSI7aToxOTg7czoxOiJiIjtzOjE2OiJWaWV3OkFjdGl2aXR5TG9nIjtz
OjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjE5ODthOjM6e3M6MToiYSI7aToxOTk7czoxOiJiIjtz
OjE4OiJDcmVhdGU6QWN0aXZpdHlMb2ciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MTk5O2E6
Mzp7czoxOiJhIjtpOjIwMDtzOjE6ImIiO3M6MTg6IlVwZGF0ZTpBY3Rpdml0eUxvZyI7czoxOiJj
IjtzOjg6Im9wZXJhdG9yIjt9aToyMDA7YTozOntzOjE6ImEiO2k6MjAxO3M6MToiYiI7czoxOToi
UmVzdG9yZTpBY3Rpdml0eUxvZyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyMDE7YTozOntz
OjE6ImEiO2k6MjAyO3M6MToiYiI7czoyMToiUmVwbGljYXRlOkFjdGl2aXR5TG9nIjtzOjE6ImMi
O3M6ODoib3BlcmF0b3IiO31pOjIwMjthOjM6e3M6MToiYSI7aToyMDM7czoxOiJiIjtzOjE5OiJS
ZW9yZGVyOkFjdGl2aXR5TG9nIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjIwMzthOjM6e3M6
MToiYSI7aToyMDQ7czoxOiJiIjtzOjE4OiJWaWV3OkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czo4
OiJvcGVyYXRvciI7fWk6MjA0O2E6Mzp7czoxOiJhIjtpOjIwNTtzOjE6ImIiO3M6MjA6IkNyZWF0
ZTpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjIwNTthOjM6e3M6MToi
YSI7aToyMDY7czoxOiJiIjtzOjEzOiJWaWV3OkNhdGVnb3J5IjtzOjE6ImMiO3M6ODoib3BlcmF0
b3IiO31pOjIwNjthOjM6e3M6MToiYSI7aToyMDc7czoxOiJiIjtzOjE1OiJDcmVhdGU6Q2F0ZWdv
cnkiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjA3O2E6Mzp7czoxOiJhIjtpOjIwODtzOjE6
ImIiO3M6MjQ6IlZpZXc6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjg6Im9wZXJhdG9y
Ijt9aToyMDg7YTozOntzOjE6ImEiO2k6MjA5O3M6MToiYiI7czoyNjoiQ3JlYXRlOkRlc3RpbmF0
aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjA5O2E6Mzp7czoxOiJhIjtp
OjIxMDtzOjE6ImIiO3M6MTY6IlZpZXc6RGVzdGluYXRpb24iO3M6MToiYyI7czo4OiJvcGVyYXRv
ciI7fWk6MjEwO2E6Mzp7czoxOiJhIjtpOjIxMTtzOjE6ImIiO3M6MTg6IkNyZWF0ZTpEZXN0aW5h
dGlvbiI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyMTE7YTozOntzOjE6ImEiO2k6MjEyO3M6
MToiYiI7czoxMzoiVmlldzpGZXN0aXZhbCI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyMTI7
YTozOntzOjE6ImEiO2k6MjEzO3M6MToiYiI7czoxNToiQ3JlYXRlOkZlc3RpdmFsIjtzOjE6ImMi
O3M6ODoib3BlcmF0b3IiO31pOjIxMzthOjM6e3M6MToiYSI7aToyMTQ7czoxOiJiIjtzOjk6IlZp
ZXc6TmV3cyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyMTQ7YTozOntzOjE6ImEiO2k6MjE1
O3M6MToiYiI7czoxMToiQ3JlYXRlOk5ld3MiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjE1
O2E6Mzp7czoxOiJhIjtpOjIxNjtzOjE6ImIiO3M6OToiVmlldzpQYWdlIjtzOjE6ImMiO3M6ODoi
b3BlcmF0b3IiO31pOjIxNjthOjM6e3M6MToiYSI7aToyMTc7czoxOiJiIjtzOjExOiJDcmVhdGU6
UGFnZSI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyMTc7YTozOntzOjE6ImEiO2k6MjE4O3M6
MToiYiI7czoxMToiVXBkYXRlOlBhZ2UiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjE4O2E6
Mzp7czoxOiJhIjtpOjIxOTtzOjE6ImIiO3M6MTc6IlZpZXc6UGhvdG9HYWxsZXJ5IjtzOjE6ImMi
O3M6ODoib3BlcmF0b3IiO31pOjIxOTthOjM6e3M6MToiYSI7aToyMjA7czoxOiJiIjtzOjE5OiJD
cmVhdGU6UGhvdG9HYWxsZXJ5IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjIyMDthOjM6e3M6
MToiYSI7aToyMjE7czoxOiJiIjtzOjE5OiJVcGRhdGU6UGhvdG9HYWxsZXJ5IjtzOjE6ImMiO3M6
ODoib3BlcmF0b3IiO31pOjIyMTthOjM6e3M6MToiYSI7aToyMjI7czoxOiJiIjtzOjEyOiJWaWV3
OlNldHRpbmciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjIyO2E6Mzp7czoxOiJhIjtpOjIy
MztzOjE6ImIiO3M6MTE6IlZpZXc6U2xpZGVyIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjIy
MzthOjM6e3M6MToiYSI7aToyMjQ7czoxOiJiIjtzOjEzOiJDcmVhdGU6U2xpZGVyIjtzOjE6ImMi
O3M6ODoib3BlcmF0b3IiO31pOjIyNDthOjM6e3M6MToiYSI7aToyMjU7czoxOiJiIjtzOjEzOiJV
cGRhdGU6U2xpZGVyIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjIyNTthOjM6e3M6MToiYSI7
aToyMjY7czoxOiJiIjtzOjEwOiJDcmVhdGU6VGFnIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31p
OjIyNjthOjM6e3M6MToiYSI7aToyMjc7czoxOiJiIjtzOjEwOiJVcGRhdGU6VGFnIjtzOjE6ImMi
O3M6ODoib3BlcmF0b3IiO31pOjIyNzthOjM6e3M6MToiYSI7aToyMjg7czoxOiJiIjtzOjg6IlZp
ZXc6VGFnIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjIyODthOjM6e3M6MToiYSI7aToyMjk7
czoxOiJiIjtzOjk6IlZpZXc6VXNlciI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyMjk7YToz
OntzOjE6ImEiO2k6MjMwO3M6MToiYiI7czoxMzoiVmlld0FueTpWaWRlbyI7czoxOiJjIjtzOjg6
Im9wZXJhdG9yIjt9aToyMzA7YTozOntzOjE6ImEiO2k6MjMxO3M6MToiYiI7czoxMDoiVmlldzpW
aWRlbyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyMzE7YTozOntzOjE6ImEiO2k6MjMyO3M6
MToiYiI7czoxMjoiQ3JlYXRlOlZpZGVvIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjIzMjth
OjM6e3M6MToiYSI7aToyMzM7czoxOiJiIjtzOjk6IlZpZXc6Um9sZSI7czoxOiJjIjtzOjg6Im9w
ZXJhdG9yIjt9aToyMzM7YTozOntzOjE6ImEiO2k6MjM0O3M6MToiYiI7czoxODoiVmlldzpNeVBy
b2ZpbGVQYWdlIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjIzNDthOjM6e3M6MToiYSI7aToy
MzU7czoxOiJiIjtzOjEzOiJWaWV3Ok1haW5NZW51IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31p
OjIzNTthOjM6e3M6MToiYSI7aToyMzY7czoxOiJiIjtzOjIxOiJWaWV3QW55OkFkdmVydGlzZW1l
bnQiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjM2O2E6Mzp7czoxOiJhIjtpOjIzNztzOjE6
ImIiO3M6MjA6IlVwZGF0ZTpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31p
OjIzNzthOjM6e3M6MToiYSI7aToyMzg7czoxOiJiIjtzOjIwOiJEZWxldGU6QWR2ZXJ0aXNlbWVu
dCI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyMzg7YTozOntzOjE6ImEiO2k6MjM5O3M6MToi
YiI7czoyMzoiRGVsZXRlQW55OkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7
fWk6MjM5O2E6Mzp7czoxOiJhIjtpOjI0MDtzOjE6ImIiO3M6MjE6IlJlc3RvcmU6QWR2ZXJ0aXNl
bWVudCI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyNDA7YTozOntzOjE6ImEiO2k6MjQxO3M6
MToiYiI7czoyNToiRm9yY2VEZWxldGU6QWR2ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjg6Im9wZXJh
dG9yIjt9aToyNDE7YTozOntzOjE6ImEiO2k6MjQyO3M6MToiYiI7czoyODoiRm9yY2VEZWxldGVB
bnk6QWR2ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyNDI7YTozOntzOjE6
ImEiO2k6MjQzO3M6MToiYiI7czoyNDoiUmVzdG9yZUFueTpBZHZlcnRpc2VtZW50IjtzOjE6ImMi
O3M6ODoib3BlcmF0b3IiO31pOjI0MzthOjM6e3M6MToiYSI7aToyNDQ7czoxOiJiIjtzOjIzOiJS
ZXBsaWNhdGU6QWR2ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyNDQ7YToz
OntzOjE6ImEiO2k6MjQ1O3M6MToiYiI7czoyMToiUmVvcmRlcjpBZHZlcnRpc2VtZW50IjtzOjE6
ImMiO3M6ODoib3BlcmF0b3IiO31pOjI0NTthOjM6e3M6MToiYSI7aToyNDY7czoxOiJiIjtzOjE4
OiJEZWxldGU6QWN0aXZpdHlMb2ciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjQ2O2E6Mzp7
czoxOiJhIjtpOjI0NztzOjE6ImIiO3M6MjE6IkRlbGV0ZUFueTpBY3Rpdml0eUxvZyI7czoxOiJj
IjtzOjg6Im9wZXJhdG9yIjt9aToyNDc7YTozOntzOjE6ImEiO2k6MjQ4O3M6MToiYiI7czoyMzoi
Rm9yY2VEZWxldGU6QWN0aXZpdHlMb2ciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjQ4O2E6
Mzp7czoxOiJhIjtpOjI0OTtzOjE6ImIiO3M6MjY6IkZvcmNlRGVsZXRlQW55OkFjdGl2aXR5TG9n
IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjI0OTthOjM6e3M6MToiYSI7aToyNTA7czoxOiJi
IjtzOjIyOiJSZXN0b3JlQW55OkFjdGl2aXR5TG9nIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31p
OjI1MDthOjM6e3M6MToiYSI7aToyNTE7czoxOiJiIjtzOjE3OiJWaWV3QW55OkJsb2NrZWRJcCI7
czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyNTE7YTozOntzOjE6ImEiO2k6MjUyO3M6MToiYiI7
czoxNDoiVmlldzpCbG9ja2VkSXAiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjUyO2E6Mzp7
czoxOiJhIjtpOjI1MztzOjE6ImIiO3M6MTY6IkNyZWF0ZTpCbG9ja2VkSXAiO3M6MToiYyI7czo4
OiJvcGVyYXRvciI7fWk6MjUzO2E6Mzp7czoxOiJhIjtpOjI1NDtzOjE6ImIiO3M6MTY6IlVwZGF0
ZTpCbG9ja2VkSXAiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjU0O2E6Mzp7czoxOiJhIjtp
OjI1NTtzOjE6ImIiO3M6MTY6IkRlbGV0ZTpCbG9ja2VkSXAiO3M6MToiYyI7czo4OiJvcGVyYXRv
ciI7fWk6MjU1O2E6Mzp7czoxOiJhIjtpOjI1NjtzOjE6ImIiO3M6MTk6IkRlbGV0ZUFueTpCbG9j
a2VkSXAiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjU2O2E6Mzp7czoxOiJhIjtpOjI1Nztz
OjE6ImIiO3M6MTc6IlJlc3RvcmU6QmxvY2tlZElwIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31p
OjI1NzthOjM6e3M6MToiYSI7aToyNTg7czoxOiJiIjtzOjIxOiJGb3JjZURlbGV0ZTpCbG9ja2Vk
SXAiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjU4O2E6Mzp7czoxOiJhIjtpOjI1OTtzOjE6
ImIiO3M6MjQ6IkZvcmNlRGVsZXRlQW55OkJsb2NrZWRJcCI7czoxOiJjIjtzOjg6Im9wZXJhdG9y
Ijt9aToyNTk7YTozOntzOjE6ImEiO2k6MjYwO3M6MToiYiI7czoyMDoiUmVzdG9yZUFueTpCbG9j
a2VkSXAiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjYwO2E6Mzp7czoxOiJhIjtpOjI2MTtz
OjE6ImIiO3M6MTk6IlJlcGxpY2F0ZTpCbG9ja2VkSXAiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7
fWk6MjYxO2E6Mzp7czoxOiJhIjtpOjI2MjtzOjE6ImIiO3M6MTc6IlJlb3JkZXI6QmxvY2tlZElw
IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjI2MjthOjM6e3M6MToiYSI7aToyNjM7czoxOiJi
IjtzOjE2OiJWaWV3QW55OkNhdGVnb3J5IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjI2Mzth
OjM6e3M6MToiYSI7aToyNjQ7czoxOiJiIjtzOjE1OiJVcGRhdGU6Q2F0ZWdvcnkiO3M6MToiYyI7
czo4OiJvcGVyYXRvciI7fWk6MjY0O2E6Mzp7czoxOiJhIjtpOjI2NTtzOjE6ImIiO3M6MTU6IkRl
bGV0ZTpDYXRlZ29yeSI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyNjU7YTozOntzOjE6ImEi
O2k6MjY2O3M6MToiYiI7czoxODoiRGVsZXRlQW55OkNhdGVnb3J5IjtzOjE6ImMiO3M6ODoib3Bl
cmF0b3IiO31pOjI2NjthOjM6e3M6MToiYSI7aToyNjc7czoxOiJiIjtzOjE2OiJSZXN0b3JlOkNh
dGVnb3J5IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjI2NzthOjM6e3M6MToiYSI7aToyNjg7
czoxOiJiIjtzOjIwOiJGb3JjZURlbGV0ZTpDYXRlZ29yeSI7czoxOiJjIjtzOjg6Im9wZXJhdG9y
Ijt9aToyNjg7YTozOntzOjE6ImEiO2k6MjY5O3M6MToiYiI7czoyMzoiRm9yY2VEZWxldGVBbnk6
Q2F0ZWdvcnkiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjY5O2E6Mzp7czoxOiJhIjtpOjI3
MDtzOjE6ImIiO3M6MTk6IlJlc3RvcmVBbnk6Q2F0ZWdvcnkiO3M6MToiYyI7czo4OiJvcGVyYXRv
ciI7fWk6MjcwO2E6Mzp7czoxOiJhIjtpOjI3MTtzOjE6ImIiO3M6MTg6IlJlcGxpY2F0ZTpDYXRl
Z29yeSI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyNzE7YTozOntzOjE6ImEiO2k6MjcyO3M6
MToiYiI7czoxNjoiUmVvcmRlcjpDYXRlZ29yeSI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToy
NzI7YTozOntzOjE6ImEiO2k6MjczO3M6MToiYiI7czoyNzoiVmlld0FueTpEZXN0aW5hdGlvbkNh
dGVnb3J5IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjI3MzthOjM6e3M6MToiYSI7aToyNzQ7
czoxOiJiIjtzOjI2OiJVcGRhdGU6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjg6Im9w
ZXJhdG9yIjt9aToyNzQ7YTozOntzOjE6ImEiO2k6Mjc1O3M6MToiYiI7czoyNjoiRGVsZXRlOkRl
c3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6Mjc1O2E6Mzp7czox
OiJhIjtpOjI3NjtzOjE6ImIiO3M6Mjk6IkRlbGV0ZUFueTpEZXN0aW5hdGlvbkNhdGVnb3J5Ijtz
OjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjI3NjthOjM6e3M6MToiYSI7aToyNzc7czoxOiJiIjtz
OjI3OiJSZXN0b3JlOkRlc3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7
fWk6Mjc3O2E6Mzp7czoxOiJhIjtpOjI3ODtzOjE6ImIiO3M6MzE6IkZvcmNlRGVsZXRlOkRlc3Rp
bmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6Mjc4O2E6Mzp7czoxOiJh
IjtpOjI3OTtzOjE6ImIiO3M6MzQ6IkZvcmNlRGVsZXRlQW55OkRlc3RpbmF0aW9uQ2F0ZWdvcnki
O3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6Mjc5O2E6Mzp7czoxOiJhIjtpOjI4MDtzOjE6ImIi
O3M6MzA6IlJlc3RvcmVBbnk6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjg6Im9wZXJh
dG9yIjt9aToyODA7YTozOntzOjE6ImEiO2k6MjgxO3M6MToiYiI7czoyOToiUmVwbGljYXRlOkRl
c3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjgxO2E6Mzp7czox
OiJhIjtpOjI4MjtzOjE6ImIiO3M6Mjc6IlJlb3JkZXI6RGVzdGluYXRpb25DYXRlZ29yeSI7czox
OiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyODI7YTozOntzOjE6ImEiO2k6MjgzO3M6MToiYiI7czox
OToiVmlld0FueTpEZXN0aW5hdGlvbiI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyODM7YToz
OntzOjE6ImEiO2k6Mjg0O3M6MToiYiI7czoxODoiVXBkYXRlOkRlc3RpbmF0aW9uIjtzOjE6ImMi
O3M6ODoib3BlcmF0b3IiO31pOjI4NDthOjM6e3M6MToiYSI7aToyODU7czoxOiJiIjtzOjE4OiJE
ZWxldGU6RGVzdGluYXRpb24iO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6Mjg1O2E6Mzp7czox
OiJhIjtpOjI4NjtzOjE6ImIiO3M6MjE6IkRlbGV0ZUFueTpEZXN0aW5hdGlvbiI7czoxOiJjIjtz
Ojg6Im9wZXJhdG9yIjt9aToyODY7YTozOntzOjE6ImEiO2k6Mjg3O3M6MToiYiI7czoxOToiUmVz
dG9yZTpEZXN0aW5hdGlvbiI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyODc7YTozOntzOjE6
ImEiO2k6Mjg4O3M6MToiYiI7czoyMzoiRm9yY2VEZWxldGU6RGVzdGluYXRpb24iO3M6MToiYyI7
czo4OiJvcGVyYXRvciI7fWk6Mjg4O2E6Mzp7czoxOiJhIjtpOjI4OTtzOjE6ImIiO3M6MjY6IkZv
cmNlRGVsZXRlQW55OkRlc3RpbmF0aW9uIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjI4OTth
OjM6e3M6MToiYSI7aToyOTA7czoxOiJiIjtzOjIyOiJSZXN0b3JlQW55OkRlc3RpbmF0aW9uIjtz
OjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjI5MDthOjM6e3M6MToiYSI7aToyOTE7czoxOiJiIjtz
OjIxOiJSZXBsaWNhdGU6RGVzdGluYXRpb24iO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6Mjkx
O2E6Mzp7czoxOiJhIjtpOjI5MjtzOjE6ImIiO3M6MTk6IlJlb3JkZXI6RGVzdGluYXRpb24iO3M6
MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjkyO2E6Mzp7czoxOiJhIjtpOjI5MztzOjE6ImIiO3M6
MTY6IlZpZXdBbnk6RmVzdGl2YWwiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MjkzO2E6Mzp7
czoxOiJhIjtpOjI5NDtzOjE6ImIiO3M6MTU6IlVwZGF0ZTpGZXN0aXZhbCI7czoxOiJjIjtzOjg6
Im9wZXJhdG9yIjt9aToyOTQ7YTozOntzOjE6ImEiO2k6Mjk1O3M6MToiYiI7czoxNToiRGVsZXRl
OkZlc3RpdmFsIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjI5NTthOjM6e3M6MToiYSI7aToy
OTY7czoxOiJiIjtzOjE4OiJEZWxldGVBbnk6RmVzdGl2YWwiO3M6MToiYyI7czo4OiJvcGVyYXRv
ciI7fWk6Mjk2O2E6Mzp7czoxOiJhIjtpOjI5NztzOjE6ImIiO3M6MTY6IlJlc3RvcmU6RmVzdGl2
YWwiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6Mjk3O2E6Mzp7czoxOiJhIjtpOjI5ODtzOjE6
ImIiO3M6MjA6IkZvcmNlRGVsZXRlOkZlc3RpdmFsIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31p
OjI5ODthOjM6e3M6MToiYSI7aToyOTk7czoxOiJiIjtzOjIzOiJGb3JjZURlbGV0ZUFueTpGZXN0
aXZhbCI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aToyOTk7YTozOntzOjE6ImEiO2k6MzAwO3M6
MToiYiI7czoxOToiUmVzdG9yZUFueTpGZXN0aXZhbCI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9
aTozMDA7YTozOntzOjE6ImEiO2k6MzAxO3M6MToiYiI7czoxODoiUmVwbGljYXRlOkZlc3RpdmFs
IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMwMTthOjM6e3M6MToiYSI7aTozMDI7czoxOiJi
IjtzOjE2OiJSZW9yZGVyOkZlc3RpdmFsIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMwMjth
OjM6e3M6MToiYSI7aTozMDM7czoxOiJiIjtzOjEyOiJWaWV3QW55Ok5ld3MiO3M6MToiYyI7czo4
OiJvcGVyYXRvciI7fWk6MzAzO2E6Mzp7czoxOiJhIjtpOjMwNDtzOjE6ImIiO3M6MTE6IlVwZGF0
ZTpOZXdzIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMwNDthOjM6e3M6MToiYSI7aTozMDU7
czoxOiJiIjtzOjExOiJEZWxldGU6TmV3cyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozMDU7
YTozOntzOjE6ImEiO2k6MzA2O3M6MToiYiI7czoxNDoiRGVsZXRlQW55Ok5ld3MiO3M6MToiYyI7
czo4OiJvcGVyYXRvciI7fWk6MzA2O2E6Mzp7czoxOiJhIjtpOjMwNztzOjE6ImIiO3M6MTI6IlJl
c3RvcmU6TmV3cyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozMDc7YTozOntzOjE6ImEiO2k6
MzA4O3M6MToiYiI7czoxNjoiRm9yY2VEZWxldGU6TmV3cyI7czoxOiJjIjtzOjg6Im9wZXJhdG9y
Ijt9aTozMDg7YTozOntzOjE6ImEiO2k6MzA5O3M6MToiYiI7czoxOToiRm9yY2VEZWxldGVBbnk6
TmV3cyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozMDk7YTozOntzOjE6ImEiO2k6MzEwO3M6
MToiYiI7czoxNToiUmVzdG9yZUFueTpOZXdzIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMx
MDthOjM6e3M6MToiYSI7aTozMTE7czoxOiJiIjtzOjE0OiJSZXBsaWNhdGU6TmV3cyI7czoxOiJj
IjtzOjg6Im9wZXJhdG9yIjt9aTozMTE7YTozOntzOjE6ImEiO2k6MzEyO3M6MToiYiI7czoxMjoi
UmVvcmRlcjpOZXdzIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMxMjthOjM6e3M6MToiYSI7
aTozMTM7czoxOiJiIjtzOjEyOiJWaWV3QW55OlBhZ2UiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7
fWk6MzEzO2E6Mzp7czoxOiJhIjtpOjMxNDtzOjE6ImIiO3M6MTE6IkRlbGV0ZTpQYWdlIjtzOjE6
ImMiO3M6ODoib3BlcmF0b3IiO31pOjMxNDthOjM6e3M6MToiYSI7aTozMTU7czoxOiJiIjtzOjE0
OiJEZWxldGVBbnk6UGFnZSI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozMTU7YTozOntzOjE6
ImEiO2k6MzE2O3M6MToiYiI7czoxMjoiUmVzdG9yZTpQYWdlIjtzOjE6ImMiO3M6ODoib3BlcmF0
b3IiO31pOjMxNjthOjM6e3M6MToiYSI7aTozMTc7czoxOiJiIjtzOjE2OiJGb3JjZURlbGV0ZTpQ
YWdlIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMxNzthOjM6e3M6MToiYSI7aTozMTg7czox
OiJiIjtzOjE5OiJGb3JjZURlbGV0ZUFueTpQYWdlIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31p
OjMxODthOjM6e3M6MToiYSI7aTozMTk7czoxOiJiIjtzOjE1OiJSZXN0b3JlQW55OlBhZ2UiO3M6
MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MzE5O2E6Mzp7czoxOiJhIjtpOjMyMDtzOjE6ImIiO3M6
MTQ6IlJlcGxpY2F0ZTpQYWdlIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMyMDthOjM6e3M6
MToiYSI7aTozMjE7czoxOiJiIjtzOjEyOiJSZW9yZGVyOlBhZ2UiO3M6MToiYyI7czo4OiJvcGVy
YXRvciI7fWk6MzIxO2E6Mzp7czoxOiJhIjtpOjMyMjtzOjE6ImIiO3M6MjA6IlZpZXdBbnk6UGhv
dG9HYWxsZXJ5IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMyMjthOjM6e3M6MToiYSI7aToz
MjM7czoxOiJiIjtzOjE5OiJEZWxldGU6UGhvdG9HYWxsZXJ5IjtzOjE6ImMiO3M6ODoib3BlcmF0
b3IiO31pOjMyMzthOjM6e3M6MToiYSI7aTozMjQ7czoxOiJiIjtzOjIyOiJEZWxldGVBbnk6UGhv
dG9HYWxsZXJ5IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMyNDthOjM6e3M6MToiYSI7aToz
MjU7czoxOiJiIjtzOjIwOiJSZXN0b3JlOlBob3RvR2FsbGVyeSI7czoxOiJjIjtzOjg6Im9wZXJh
dG9yIjt9aTozMjU7YTozOntzOjE6ImEiO2k6MzI2O3M6MToiYiI7czoyNDoiRm9yY2VEZWxldGU6
UGhvdG9HYWxsZXJ5IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMyNjthOjM6e3M6MToiYSI7
aTozMjc7czoxOiJiIjtzOjI3OiJGb3JjZURlbGV0ZUFueTpQaG90b0dhbGxlcnkiO3M6MToiYyI7
czo4OiJvcGVyYXRvciI7fWk6MzI3O2E6Mzp7czoxOiJhIjtpOjMyODtzOjE6ImIiO3M6MjM6IlJl
c3RvcmVBbnk6UGhvdG9HYWxsZXJ5IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMyODthOjM6
e3M6MToiYSI7aTozMjk7czoxOiJiIjtzOjIyOiJSZXBsaWNhdGU6UGhvdG9HYWxsZXJ5IjtzOjE6
ImMiO3M6ODoib3BlcmF0b3IiO31pOjMyOTthOjM6e3M6MToiYSI7aTozMzA7czoxOiJiIjtzOjIw
OiJSZW9yZGVyOlBob3RvR2FsbGVyeSI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozMzA7YToz
OntzOjE6ImEiO2k6MzMxO3M6MToiYiI7czoxNToiVmlld0FueTpTZXR0aW5nIjtzOjE6ImMiO3M6
ODoib3BlcmF0b3IiO31pOjMzMTthOjM6e3M6MToiYSI7aTozMzI7czoxOiJiIjtzOjE0OiJDcmVh
dGU6U2V0dGluZyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozMzI7YTozOntzOjE6ImEiO2k6
MzMzO3M6MToiYiI7czoxNDoiVXBkYXRlOlNldHRpbmciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7
fWk6MzMzO2E6Mzp7czoxOiJhIjtpOjMzNDtzOjE6ImIiO3M6MTQ6IkRlbGV0ZTpTZXR0aW5nIjtz
OjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMzNDthOjM6e3M6MToiYSI7aTozMzU7czoxOiJiIjtz
OjE3OiJEZWxldGVBbnk6U2V0dGluZyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozMzU7YToz
OntzOjE6ImEiO2k6MzM2O3M6MToiYiI7czoxNToiUmVzdG9yZTpTZXR0aW5nIjtzOjE6ImMiO3M6
ODoib3BlcmF0b3IiO31pOjMzNjthOjM6e3M6MToiYSI7aTozMzc7czoxOiJiIjtzOjE5OiJGb3Jj
ZURlbGV0ZTpTZXR0aW5nIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjMzNzthOjM6e3M6MToi
YSI7aTozMzg7czoxOiJiIjtzOjIyOiJGb3JjZURlbGV0ZUFueTpTZXR0aW5nIjtzOjE6ImMiO3M6
ODoib3BlcmF0b3IiO31pOjMzODthOjM6e3M6MToiYSI7aTozMzk7czoxOiJiIjtzOjE4OiJSZXN0
b3JlQW55OlNldHRpbmciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MzM5O2E6Mzp7czoxOiJh
IjtpOjM0MDtzOjE6ImIiO3M6MTc6IlJlcGxpY2F0ZTpTZXR0aW5nIjtzOjE6ImMiO3M6ODoib3Bl
cmF0b3IiO31pOjM0MDthOjM6e3M6MToiYSI7aTozNDE7czoxOiJiIjtzOjE1OiJSZW9yZGVyOlNl
dHRpbmciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MzQxO2E6Mzp7czoxOiJhIjtpOjM0Mjtz
OjE6ImIiO3M6MTQ6IlZpZXdBbnk6U2xpZGVyIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM0
MjthOjM6e3M6MToiYSI7aTozNDM7czoxOiJiIjtzOjEzOiJEZWxldGU6U2xpZGVyIjtzOjE6ImMi
O3M6ODoib3BlcmF0b3IiO31pOjM0MzthOjM6e3M6MToiYSI7aTozNDQ7czoxOiJiIjtzOjE2OiJE
ZWxldGVBbnk6U2xpZGVyIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM0NDthOjM6e3M6MToi
YSI7aTozNDU7czoxOiJiIjtzOjE0OiJSZXN0b3JlOlNsaWRlciI7czoxOiJjIjtzOjg6Im9wZXJh
dG9yIjt9aTozNDU7YTozOntzOjE6ImEiO2k6MzQ2O3M6MToiYiI7czoxODoiRm9yY2VEZWxldGU6
U2xpZGVyIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM0NjthOjM6e3M6MToiYSI7aTozNDc7
czoxOiJiIjtzOjIxOiJGb3JjZURlbGV0ZUFueTpTbGlkZXIiO3M6MToiYyI7czo4OiJvcGVyYXRv
ciI7fWk6MzQ3O2E6Mzp7czoxOiJhIjtpOjM0ODtzOjE6ImIiO3M6MTc6IlJlc3RvcmVBbnk6U2xp
ZGVyIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM0ODthOjM6e3M6MToiYSI7aTozNDk7czox
OiJiIjtzOjE2OiJSZXBsaWNhdGU6U2xpZGVyIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM0
OTthOjM6e3M6MToiYSI7aTozNTA7czoxOiJiIjtzOjE0OiJSZW9yZGVyOlNsaWRlciI7czoxOiJj
IjtzOjg6Im9wZXJhdG9yIjt9aTozNTA7YTozOntzOjE6ImEiO2k6MzUxO3M6MToiYiI7czoxMToi
Vmlld0FueTpUYWciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MzUxO2E6Mzp7czoxOiJhIjtp
OjM1MjtzOjE6ImIiO3M6MTA6IkRlbGV0ZTpUYWciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6
MzUyO2E6Mzp7czoxOiJhIjtpOjM1MztzOjE6ImIiO3M6MTM6IkRlbGV0ZUFueTpUYWciO3M6MToi
YyI7czo4OiJvcGVyYXRvciI7fWk6MzUzO2E6Mzp7czoxOiJhIjtpOjM1NDtzOjE6ImIiO3M6MTE6
IlJlc3RvcmU6VGFnIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM1NDthOjM6e3M6MToiYSI7
aTozNTU7czoxOiJiIjtzOjE1OiJGb3JjZURlbGV0ZTpUYWciO3M6MToiYyI7czo4OiJvcGVyYXRv
ciI7fWk6MzU1O2E6Mzp7czoxOiJhIjtpOjM1NjtzOjE6ImIiO3M6MTg6IkZvcmNlRGVsZXRlQW55
OlRhZyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozNTY7YTozOntzOjE6ImEiO2k6MzU3O3M6
MToiYiI7czoxNDoiUmVzdG9yZUFueTpUYWciO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MzU3
O2E6Mzp7czoxOiJhIjtpOjM1ODtzOjE6ImIiO3M6MTM6IlJlcGxpY2F0ZTpUYWciO3M6MToiYyI7
czo4OiJvcGVyYXRvciI7fWk6MzU4O2E6Mzp7czoxOiJhIjtpOjM1OTtzOjE6ImIiO3M6MTE6IlJl
b3JkZXI6VGFnIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM1OTthOjM6e3M6MToiYSI7aToz
NjA7czoxOiJiIjtzOjEyOiJWaWV3QW55OlVzZXIiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6
MzYwO2E6Mzp7czoxOiJhIjtpOjM2MTtzOjE6ImIiO3M6MTE6IkNyZWF0ZTpVc2VyIjtzOjE6ImMi
O3M6ODoib3BlcmF0b3IiO31pOjM2MTthOjM6e3M6MToiYSI7aTozNjI7czoxOiJiIjtzOjExOiJV
cGRhdGU6VXNlciI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozNjI7YTozOntzOjE6ImEiO2k6
MzYzO3M6MToiYiI7czoxMToiRGVsZXRlOlVzZXIiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6
MzYzO2E6Mzp7czoxOiJhIjtpOjM2NDtzOjE6ImIiO3M6MTQ6IkRlbGV0ZUFueTpVc2VyIjtzOjE6
ImMiO3M6ODoib3BlcmF0b3IiO31pOjM2NDthOjM6e3M6MToiYSI7aTozNjU7czoxOiJiIjtzOjEy
OiJSZXN0b3JlOlVzZXIiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MzY1O2E6Mzp7czoxOiJh
IjtpOjM2NjtzOjE6ImIiO3M6MTY6IkZvcmNlRGVsZXRlOlVzZXIiO3M6MToiYyI7czo4OiJvcGVy
YXRvciI7fWk6MzY2O2E6Mzp7czoxOiJhIjtpOjM2NztzOjE6ImIiO3M6MTk6IkZvcmNlRGVsZXRl
QW55OlVzZXIiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MzY3O2E6Mzp7czoxOiJhIjtpOjM2
ODtzOjE6ImIiO3M6MTU6IlJlc3RvcmVBbnk6VXNlciI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9
aTozNjg7YTozOntzOjE6ImEiO2k6MzY5O3M6MToiYiI7czoxNDoiUmVwbGljYXRlOlVzZXIiO3M6
MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MzY5O2E6Mzp7czoxOiJhIjtpOjM3MDtzOjE6ImIiO3M6
MTI6IlJlb3JkZXI6VXNlciI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozNzA7YTozOntzOjE6
ImEiO2k6MzcxO3M6MToiYiI7czoxMjoiVXBkYXRlOlZpZGVvIjtzOjE6ImMiO3M6ODoib3BlcmF0
b3IiO31pOjM3MTthOjM6e3M6MToiYSI7aTozNzI7czoxOiJiIjtzOjEyOiJEZWxldGU6VmlkZW8i
O3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6MzcyO2E6Mzp7czoxOiJhIjtpOjM3MztzOjE6ImIi
O3M6MTU6IkRlbGV0ZUFueTpWaWRlbyI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozNzM7YToz
OntzOjE6ImEiO2k6Mzc0O3M6MToiYiI7czoxMzoiUmVzdG9yZTpWaWRlbyI7czoxOiJjIjtzOjg6
Im9wZXJhdG9yIjt9aTozNzQ7YTozOntzOjE6ImEiO2k6Mzc1O3M6MToiYiI7czoxNzoiRm9yY2VE
ZWxldGU6VmlkZW8iO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6Mzc1O2E6Mzp7czoxOiJhIjtp
OjM3NjtzOjE6ImIiO3M6MjA6IkZvcmNlRGVsZXRlQW55OlZpZGVvIjtzOjE6ImMiO3M6ODoib3Bl
cmF0b3IiO31pOjM3NjthOjM6e3M6MToiYSI7aTozNzc7czoxOiJiIjtzOjE2OiJSZXN0b3JlQW55
OlZpZGVvIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM3NzthOjM6e3M6MToiYSI7aTozNzg7
czoxOiJiIjtzOjE1OiJSZXBsaWNhdGU6VmlkZW8iO3M6MToiYyI7czo4OiJvcGVyYXRvciI7fWk6
Mzc4O2E6Mzp7czoxOiJhIjtpOjM3OTtzOjE6ImIiO3M6MTM6IlJlb3JkZXI6VmlkZW8iO3M6MToi
YyI7czo4OiJvcGVyYXRvciI7fWk6Mzc5O2E6Mzp7czoxOiJhIjtpOjM4MDtzOjE6ImIiO3M6MTI6
IlZpZXdBbnk6Um9sZSI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozODA7YTozOntzOjE6ImEi
O2k6MzgxO3M6MToiYiI7czoxMToiQ3JlYXRlOlJvbGUiO3M6MToiYyI7czo4OiJvcGVyYXRvciI7
fWk6MzgxO2E6Mzp7czoxOiJhIjtpOjM4MjtzOjE6ImIiO3M6MTE6IlVwZGF0ZTpSb2xlIjtzOjE6
ImMiO3M6ODoib3BlcmF0b3IiO31pOjM4MjthOjM6e3M6MToiYSI7aTozODM7czoxOiJiIjtzOjEx
OiJEZWxldGU6Um9sZSI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozODM7YTozOntzOjE6ImEi
O2k6Mzg0O3M6MToiYiI7czoxNDoiRGVsZXRlQW55OlJvbGUiO3M6MToiYyI7czo4OiJvcGVyYXRv
ciI7fWk6Mzg0O2E6Mzp7czoxOiJhIjtpOjM4NTtzOjE6ImIiO3M6MTI6IlJlc3RvcmU6Um9sZSI7
czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozODU7YTozOntzOjE6ImEiO2k6Mzg2O3M6MToiYiI7
czoxNjoiRm9yY2VEZWxldGU6Um9sZSI7czoxOiJjIjtzOjg6Im9wZXJhdG9yIjt9aTozODY7YToz
OntzOjE6ImEiO2k6Mzg3O3M6MToiYiI7czoxOToiRm9yY2VEZWxldGVBbnk6Um9sZSI7czoxOiJj
IjtzOjg6Im9wZXJhdG9yIjt9aTozODc7YTozOntzOjE6ImEiO2k6Mzg4O3M6MToiYiI7czoxNToi
UmVzdG9yZUFueTpSb2xlIjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM4ODthOjM6e3M6MToi
YSI7aTozODk7czoxOiJiIjtzOjE0OiJSZXBsaWNhdGU6Um9sZSI7czoxOiJjIjtzOjg6Im9wZXJh
dG9yIjt9aTozODk7YTozOntzOjE6ImEiO2k6MzkwO3M6MToiYiI7czoxMjoiUmVvcmRlcjpSb2xl
IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM5MDthOjM6e3M6MToiYSI7aTozOTE7czoxOiJi
IjtzOjI3OiJWaWV3OkFjdGl2aXR5TG9nU3RhdHNXaWRnZXQiO3M6MToiYyI7czo4OiJvcGVyYXRv
ciI7fWk6MzkxO2E6Mzp7czoxOiJhIjtpOjM5MjtzOjE6ImIiO3M6MjY6IlZpZXc6QWN0aXZpdHlM
b2dEb251dENoYXJ0IjtzOjE6ImMiO3M6ODoib3BlcmF0b3IiO31pOjM5MjthOjM6e3M6MToiYSI7
aTozOTM7czoxOiJiIjtzOjE5OiJWaWV3QW55OkFjdGl2aXR5TG9nIjtzOjE6ImMiO3M6NToiQWRt
aW4iO31pOjM5MzthOjM6e3M6MToiYSI7aTozOTQ7czoxOiJiIjtzOjE2OiJWaWV3OkFjdGl2aXR5
TG9nIjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjM5NDthOjM6e3M6MToiYSI7aTozOTU7czoxOiJi
IjtzOjIxOiJWaWV3QW55OkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6Mzk1
O2E6Mzp7czoxOiJhIjtpOjM5NjtzOjE6ImIiO3M6MTg6IlZpZXc6QWR2ZXJ0aXNlbWVudCI7czox
OiJjIjtzOjU6IkFkbWluIjt9aTozOTY7YTozOntzOjE6ImEiO2k6Mzk3O3M6MToiYiI7czoyMDoi
Q3JlYXRlOkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6Mzk3O2E6Mzp7czox
OiJhIjtpOjM5ODtzOjE6ImIiO3M6MjA6IlVwZGF0ZTpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6
NToiQWRtaW4iO31pOjM5ODthOjM6e3M6MToiYSI7aTozOTk7czoxOiJiIjtzOjIwOiJEZWxldGU6
QWR2ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTozOTk7YTozOntzOjE6ImEiO2k6
NDAwO3M6MToiYiI7czoyMzoiRGVsZXRlQW55OkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czo1OiJB
ZG1pbiI7fWk6NDAwO2E6Mzp7czoxOiJhIjtpOjQwMTtzOjE6ImIiO3M6MjE6IlJlc3RvcmU6QWR2
ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0MDE7YTozOntzOjE6ImEiO2k6NDAy
O3M6MToiYiI7czoyNToiRm9yY2VEZWxldGU6QWR2ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjU6IkFk
bWluIjt9aTo0MDI7YTozOntzOjE6ImEiO2k6NDAzO3M6MToiYiI7czoyODoiRm9yY2VEZWxldGVB
bnk6QWR2ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0MDM7YTozOntzOjE6ImEi
O2k6NDA0O3M6MToiYiI7czoyNDoiUmVzdG9yZUFueTpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6
NToiQWRtaW4iO31pOjQwNDthOjM6e3M6MToiYSI7aTo0MDU7czoxOiJiIjtzOjIzOiJSZXBsaWNh
dGU6QWR2ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0MDU7YTozOntzOjE6ImEi
O2k6NDA2O3M6MToiYiI7czoyMToiUmVvcmRlcjpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6NToi
QWRtaW4iO31pOjQwNjthOjM6e3M6MToiYSI7aTo0MDc7czoxOiJiIjtzOjE3OiJWaWV3QW55OkJs
b2NrZWRJcCI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0MDc7YTozOntzOjE6ImEiO2k6NDA4O3M6
MToiYiI7czoxNDoiVmlldzpCbG9ja2VkSXAiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDA4O2E6
Mzp7czoxOiJhIjtpOjQwOTtzOjE6ImIiO3M6MTY6IlZpZXdBbnk6Q2F0ZWdvcnkiO3M6MToiYyI7
czo1OiJBZG1pbiI7fWk6NDA5O2E6Mzp7czoxOiJhIjtpOjQxMDtzOjE6ImIiO3M6MTM6IlZpZXc6
Q2F0ZWdvcnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDEwO2E6Mzp7czoxOiJhIjtpOjQxMTtz
OjE6ImIiO3M6MTU6IkNyZWF0ZTpDYXRlZ29yeSI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0MTE7
YTozOntzOjE6ImEiO2k6NDEyO3M6MToiYiI7czoxNToiVXBkYXRlOkNhdGVnb3J5IjtzOjE6ImMi
O3M6NToiQWRtaW4iO31pOjQxMjthOjM6e3M6MToiYSI7aTo0MTM7czoxOiJiIjtzOjE1OiJEZWxl
dGU6Q2F0ZWdvcnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDEzO2E6Mzp7czoxOiJhIjtpOjQx
NDtzOjE6ImIiO3M6MTg6IkRlbGV0ZUFueTpDYXRlZ29yeSI7czoxOiJjIjtzOjU6IkFkbWluIjt9
aTo0MTQ7YTozOntzOjE6ImEiO2k6NDE1O3M6MToiYiI7czoxNjoiUmVzdG9yZTpDYXRlZ29yeSI7
czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0MTU7YTozOntzOjE6ImEiO2k6NDE2O3M6MToiYiI7czoy
MDoiRm9yY2VEZWxldGU6Q2F0ZWdvcnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDE2O2E6Mzp7
czoxOiJhIjtpOjQxNztzOjE6ImIiO3M6MjM6IkZvcmNlRGVsZXRlQW55OkNhdGVnb3J5IjtzOjE6
ImMiO3M6NToiQWRtaW4iO31pOjQxNzthOjM6e3M6MToiYSI7aTo0MTg7czoxOiJiIjtzOjE5OiJS
ZXN0b3JlQW55OkNhdGVnb3J5IjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQxODthOjM6e3M6MToi
YSI7aTo0MTk7czoxOiJiIjtzOjE4OiJSZXBsaWNhdGU6Q2F0ZWdvcnkiO3M6MToiYyI7czo1OiJB
ZG1pbiI7fWk6NDE5O2E6Mzp7czoxOiJhIjtpOjQyMDtzOjE6ImIiO3M6MTY6IlJlb3JkZXI6Q2F0
ZWdvcnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDIwO2E6Mzp7czoxOiJhIjtpOjQyMTtzOjE6
ImIiO3M6Mjc6IlZpZXdBbnk6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjU6IkFkbWlu
Ijt9aTo0MjE7YTozOntzOjE6ImEiO2k6NDIyO3M6MToiYiI7czoyNDoiVmlldzpEZXN0aW5hdGlv
bkNhdGVnb3J5IjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQyMjthOjM6e3M6MToiYSI7aTo0MjM7
czoxOiJiIjtzOjI2OiJDcmVhdGU6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjU6IkFk
bWluIjt9aTo0MjM7YTozOntzOjE6ImEiO2k6NDI0O3M6MToiYiI7czoyNjoiVXBkYXRlOkRlc3Rp
bmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDI0O2E6Mzp7czoxOiJhIjtp
OjQyNTtzOjE6ImIiO3M6MjY6IkRlbGV0ZTpEZXN0aW5hdGlvbkNhdGVnb3J5IjtzOjE6ImMiO3M6
NToiQWRtaW4iO31pOjQyNTthOjM6e3M6MToiYSI7aTo0MjY7czoxOiJiIjtzOjI5OiJEZWxldGVB
bnk6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0MjY7YTozOntz
OjE6ImEiO2k6NDI3O3M6MToiYiI7czoyNzoiUmVzdG9yZTpEZXN0aW5hdGlvbkNhdGVnb3J5Ijtz
OjE6ImMiO3M6NToiQWRtaW4iO31pOjQyNzthOjM6e3M6MToiYSI7aTo0Mjg7czoxOiJiIjtzOjMx
OiJGb3JjZURlbGV0ZTpEZXN0aW5hdGlvbkNhdGVnb3J5IjtzOjE6ImMiO3M6NToiQWRtaW4iO31p
OjQyODthOjM6e3M6MToiYSI7aTo0Mjk7czoxOiJiIjtzOjM0OiJGb3JjZURlbGV0ZUFueTpEZXN0
aW5hdGlvbkNhdGVnb3J5IjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQyOTthOjM6e3M6MToiYSI7
aTo0MzA7czoxOiJiIjtzOjMwOiJSZXN0b3JlQW55OkRlc3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToi
YyI7czo1OiJBZG1pbiI7fWk6NDMwO2E6Mzp7czoxOiJhIjtpOjQzMTtzOjE6ImIiO3M6Mjk6IlJl
cGxpY2F0ZTpEZXN0aW5hdGlvbkNhdGVnb3J5IjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQzMTth
OjM6e3M6MToiYSI7aTo0MzI7czoxOiJiIjtzOjI3OiJSZW9yZGVyOkRlc3RpbmF0aW9uQ2F0ZWdv
cnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDMyO2E6Mzp7czoxOiJhIjtpOjQzMztzOjE6ImIi
O3M6MTk6IlZpZXdBbnk6RGVzdGluYXRpb24iO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDMzO2E6
Mzp7czoxOiJhIjtpOjQzNDtzOjE6ImIiO3M6MTY6IlZpZXc6RGVzdGluYXRpb24iO3M6MToiYyI7
czo1OiJBZG1pbiI7fWk6NDM0O2E6Mzp7czoxOiJhIjtpOjQzNTtzOjE6ImIiO3M6MTg6IkNyZWF0
ZTpEZXN0aW5hdGlvbiI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0MzU7YTozOntzOjE6ImEiO2k6
NDM2O3M6MToiYiI7czoxODoiVXBkYXRlOkRlc3RpbmF0aW9uIjtzOjE6ImMiO3M6NToiQWRtaW4i
O31pOjQzNjthOjM6e3M6MToiYSI7aTo0Mzc7czoxOiJiIjtzOjE4OiJEZWxldGU6RGVzdGluYXRp
b24iO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDM3O2E6Mzp7czoxOiJhIjtpOjQzODtzOjE6ImIi
O3M6MjE6IkRlbGV0ZUFueTpEZXN0aW5hdGlvbiI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0Mzg7
YTozOntzOjE6ImEiO2k6NDM5O3M6MToiYiI7czoxOToiUmVzdG9yZTpEZXN0aW5hdGlvbiI7czox
OiJjIjtzOjU6IkFkbWluIjt9aTo0Mzk7YTozOntzOjE6ImEiO2k6NDQwO3M6MToiYiI7czoyMzoi
Rm9yY2VEZWxldGU6RGVzdGluYXRpb24iO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDQwO2E6Mzp7
czoxOiJhIjtpOjQ0MTtzOjE6ImIiO3M6MjY6IkZvcmNlRGVsZXRlQW55OkRlc3RpbmF0aW9uIjtz
OjE6ImMiO3M6NToiQWRtaW4iO31pOjQ0MTthOjM6e3M6MToiYSI7aTo0NDI7czoxOiJiIjtzOjIy
OiJSZXN0b3JlQW55OkRlc3RpbmF0aW9uIjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQ0MjthOjM6
e3M6MToiYSI7aTo0NDM7czoxOiJiIjtzOjIxOiJSZXBsaWNhdGU6RGVzdGluYXRpb24iO3M6MToi
YyI7czo1OiJBZG1pbiI7fWk6NDQzO2E6Mzp7czoxOiJhIjtpOjQ0NDtzOjE6ImIiO3M6MTk6IlJl
b3JkZXI6RGVzdGluYXRpb24iO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDQ0O2E6Mzp7czoxOiJh
IjtpOjQ0NTtzOjE6ImIiO3M6MTY6IlZpZXdBbnk6RmVzdGl2YWwiO3M6MToiYyI7czo1OiJBZG1p
biI7fWk6NDQ1O2E6Mzp7czoxOiJhIjtpOjQ0NjtzOjE6ImIiO3M6MTM6IlZpZXc6RmVzdGl2YWwi
O3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDQ2O2E6Mzp7czoxOiJhIjtpOjQ0NztzOjE6ImIiO3M6
MTU6IkNyZWF0ZTpGZXN0aXZhbCI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0NDc7YTozOntzOjE6
ImEiO2k6NDQ4O3M6MToiYiI7czoxNToiVXBkYXRlOkZlc3RpdmFsIjtzOjE6ImMiO3M6NToiQWRt
aW4iO31pOjQ0ODthOjM6e3M6MToiYSI7aTo0NDk7czoxOiJiIjtzOjE1OiJEZWxldGU6RmVzdGl2
YWwiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDQ5O2E6Mzp7czoxOiJhIjtpOjQ1MDtzOjE6ImIi
O3M6MTg6IkRlbGV0ZUFueTpGZXN0aXZhbCI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0NTA7YToz
OntzOjE6ImEiO2k6NDUxO3M6MToiYiI7czoxNjoiUmVzdG9yZTpGZXN0aXZhbCI7czoxOiJjIjtz
OjU6IkFkbWluIjt9aTo0NTE7YTozOntzOjE6ImEiO2k6NDUyO3M6MToiYiI7czoyMDoiRm9yY2VE
ZWxldGU6RmVzdGl2YWwiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDUyO2E6Mzp7czoxOiJhIjtp
OjQ1MztzOjE6ImIiO3M6MjM6IkZvcmNlRGVsZXRlQW55OkZlc3RpdmFsIjtzOjE6ImMiO3M6NToi
QWRtaW4iO31pOjQ1MzthOjM6e3M6MToiYSI7aTo0NTQ7czoxOiJiIjtzOjE5OiJSZXN0b3JlQW55
OkZlc3RpdmFsIjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQ1NDthOjM6e3M6MToiYSI7aTo0NTU7
czoxOiJiIjtzOjE4OiJSZXBsaWNhdGU6RmVzdGl2YWwiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6
NDU1O2E6Mzp7czoxOiJhIjtpOjQ1NjtzOjE6ImIiO3M6MTY6IlJlb3JkZXI6RmVzdGl2YWwiO3M6
MToiYyI7czo1OiJBZG1pbiI7fWk6NDU2O2E6Mzp7czoxOiJhIjtpOjQ1NztzOjE6ImIiO3M6MTI6
IlZpZXdBbnk6TmV3cyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0NTc7YTozOntzOjE6ImEiO2k6
NDU4O3M6MToiYiI7czo5OiJWaWV3Ok5ld3MiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDU4O2E6
Mzp7czoxOiJhIjtpOjQ1OTtzOjE6ImIiO3M6MTE6IkNyZWF0ZTpOZXdzIjtzOjE6ImMiO3M6NToi
QWRtaW4iO31pOjQ1OTthOjM6e3M6MToiYSI7aTo0NjA7czoxOiJiIjtzOjExOiJVcGRhdGU6TmV3
cyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0NjA7YTozOntzOjE6ImEiO2k6NDYxO3M6MToiYiI7
czoxMToiRGVsZXRlOk5ld3MiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDYxO2E6Mzp7czoxOiJh
IjtpOjQ2MjtzOjE6ImIiO3M6MTQ6IkRlbGV0ZUFueTpOZXdzIjtzOjE6ImMiO3M6NToiQWRtaW4i
O31pOjQ2MjthOjM6e3M6MToiYSI7aTo0NjM7czoxOiJiIjtzOjEyOiJSZXN0b3JlOk5ld3MiO3M6
MToiYyI7czo1OiJBZG1pbiI7fWk6NDYzO2E6Mzp7czoxOiJhIjtpOjQ2NDtzOjE6ImIiO3M6MTY6
IkZvcmNlRGVsZXRlOk5ld3MiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDY0O2E6Mzp7czoxOiJh
IjtpOjQ2NTtzOjE6ImIiO3M6MTk6IkZvcmNlRGVsZXRlQW55Ok5ld3MiO3M6MToiYyI7czo1OiJB
ZG1pbiI7fWk6NDY1O2E6Mzp7czoxOiJhIjtpOjQ2NjtzOjE6ImIiO3M6MTU6IlJlc3RvcmVBbnk6
TmV3cyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0NjY7YTozOntzOjE6ImEiO2k6NDY3O3M6MToi
YiI7czoxNDoiUmVwbGljYXRlOk5ld3MiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDY3O2E6Mzp7
czoxOiJhIjtpOjQ2ODtzOjE6ImIiO3M6MTI6IlJlb3JkZXI6TmV3cyI7czoxOiJjIjtzOjU6IkFk
bWluIjt9aTo0Njg7YTozOntzOjE6ImEiO2k6NDY5O3M6MToiYiI7czoxMjoiVmlld0FueTpQYWdl
IjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQ2OTthOjM6e3M6MToiYSI7aTo0NzA7czoxOiJiIjtz
Ojk6IlZpZXc6UGFnZSI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0NzA7YTozOntzOjE6ImEiO2k6
NDcxO3M6MToiYiI7czoxMToiQ3JlYXRlOlBhZ2UiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDcx
O2E6Mzp7czoxOiJhIjtpOjQ3MjtzOjE6ImIiO3M6MTE6IlVwZGF0ZTpQYWdlIjtzOjE6ImMiO3M6
NToiQWRtaW4iO31pOjQ3MjthOjM6e3M6MToiYSI7aTo0NzM7czoxOiJiIjtzOjExOiJEZWxldGU6
UGFnZSI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0NzM7YTozOntzOjE6ImEiO2k6NDc0O3M6MToi
YiI7czoxNDoiRGVsZXRlQW55OlBhZ2UiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDc0O2E6Mzp7
czoxOiJhIjtpOjQ3NTtzOjE6ImIiO3M6MTI6IlJlc3RvcmU6UGFnZSI7czoxOiJjIjtzOjU6IkFk
bWluIjt9aTo0NzU7YTozOntzOjE6ImEiO2k6NDc2O3M6MToiYiI7czoxNjoiRm9yY2VEZWxldGU6
UGFnZSI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0NzY7YTozOntzOjE6ImEiO2k6NDc3O3M6MToi
YiI7czoxOToiRm9yY2VEZWxldGVBbnk6UGFnZSI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0Nzc7
YTozOntzOjE6ImEiO2k6NDc4O3M6MToiYiI7czoxNToiUmVzdG9yZUFueTpQYWdlIjtzOjE6ImMi
O3M6NToiQWRtaW4iO31pOjQ3ODthOjM6e3M6MToiYSI7aTo0Nzk7czoxOiJiIjtzOjE0OiJSZXBs
aWNhdGU6UGFnZSI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0Nzk7YTozOntzOjE6ImEiO2k6NDgw
O3M6MToiYiI7czoxMjoiUmVvcmRlcjpQYWdlIjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQ4MDth
OjM6e3M6MToiYSI7aTo0ODE7czoxOiJiIjtzOjIwOiJWaWV3QW55OlBob3RvR2FsbGVyeSI7czox
OiJjIjtzOjU6IkFkbWluIjt9aTo0ODE7YTozOntzOjE6ImEiO2k6NDgyO3M6MToiYiI7czoxNzoi
VmlldzpQaG90b0dhbGxlcnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDgyO2E6Mzp7czoxOiJh
IjtpOjQ4MztzOjE6ImIiO3M6MTk6IkNyZWF0ZTpQaG90b0dhbGxlcnkiO3M6MToiYyI7czo1OiJB
ZG1pbiI7fWk6NDgzO2E6Mzp7czoxOiJhIjtpOjQ4NDtzOjE6ImIiO3M6MTk6IlVwZGF0ZTpQaG90
b0dhbGxlcnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDg0O2E6Mzp7czoxOiJhIjtpOjQ4NTtz
OjE6ImIiO3M6MTk6IkRlbGV0ZTpQaG90b0dhbGxlcnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6
NDg1O2E6Mzp7czoxOiJhIjtpOjQ4NjtzOjE6ImIiO3M6MjI6IkRlbGV0ZUFueTpQaG90b0dhbGxl
cnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDg2O2E6Mzp7czoxOiJhIjtpOjQ4NztzOjE6ImIi
O3M6MjA6IlJlc3RvcmU6UGhvdG9HYWxsZXJ5IjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQ4Nzth
OjM6e3M6MToiYSI7aTo0ODg7czoxOiJiIjtzOjI0OiJGb3JjZURlbGV0ZTpQaG90b0dhbGxlcnki
O3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDg4O2E6Mzp7czoxOiJhIjtpOjQ4OTtzOjE6ImIiO3M6
Mjc6IkZvcmNlRGVsZXRlQW55OlBob3RvR2FsbGVyeSI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0
ODk7YTozOntzOjE6ImEiO2k6NDkwO3M6MToiYiI7czoyMzoiUmVzdG9yZUFueTpQaG90b0dhbGxl
cnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDkwO2E6Mzp7czoxOiJhIjtpOjQ5MTtzOjE6ImIi
O3M6MjI6IlJlcGxpY2F0ZTpQaG90b0dhbGxlcnkiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDkx
O2E6Mzp7czoxOiJhIjtpOjQ5MjtzOjE6ImIiO3M6MjA6IlJlb3JkZXI6UGhvdG9HYWxsZXJ5Ijtz
OjE6ImMiO3M6NToiQWRtaW4iO31pOjQ5MjthOjM6e3M6MToiYSI7aTo0OTM7czoxOiJiIjtzOjE1
OiJWaWV3QW55OlNldHRpbmciO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDkzO2E6Mzp7czoxOiJh
IjtpOjQ5NDtzOjE6ImIiO3M6MTI6IlZpZXc6U2V0dGluZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9
aTo0OTQ7YTozOntzOjE6ImEiO2k6NDk1O3M6MToiYiI7czoxNDoiQ3JlYXRlOlNldHRpbmciO3M6
MToiYyI7czo1OiJBZG1pbiI7fWk6NDk1O2E6Mzp7czoxOiJhIjtpOjQ5NjtzOjE6ImIiO3M6MTQ6
IlVwZGF0ZTpTZXR0aW5nIjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjQ5NjthOjM6e3M6MToiYSI7
aTo0OTc7czoxOiJiIjtzOjE0OiJEZWxldGU6U2V0dGluZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9
aTo0OTc7YTozOntzOjE6ImEiO2k6NDk4O3M6MToiYiI7czoxNzoiRGVsZXRlQW55OlNldHRpbmci
O3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NDk4O2E6Mzp7czoxOiJhIjtpOjQ5OTtzOjE6ImIiO3M6
MTU6IlJlc3RvcmU6U2V0dGluZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo0OTk7YTozOntzOjE6
ImEiO2k6NTAwO3M6MToiYiI7czoxOToiRm9yY2VEZWxldGU6U2V0dGluZyI7czoxOiJjIjtzOjU6
IkFkbWluIjt9aTo1MDA7YTozOntzOjE6ImEiO2k6NTAxO3M6MToiYiI7czoyMjoiRm9yY2VEZWxl
dGVBbnk6U2V0dGluZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1MDE7YTozOntzOjE6ImEiO2k6
NTAyO3M6MToiYiI7czoxODoiUmVzdG9yZUFueTpTZXR0aW5nIjtzOjE6ImMiO3M6NToiQWRtaW4i
O31pOjUwMjthOjM6e3M6MToiYSI7aTo1MDM7czoxOiJiIjtzOjE3OiJSZXBsaWNhdGU6U2V0dGlu
ZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1MDM7YTozOntzOjE6ImEiO2k6NTA0O3M6MToiYiI7
czoxNToiUmVvcmRlcjpTZXR0aW5nIjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjUwNDthOjM6e3M6
MToiYSI7aTo1MDU7czoxOiJiIjtzOjE0OiJWaWV3QW55OlNsaWRlciI7czoxOiJjIjtzOjU6IkFk
bWluIjt9aTo1MDU7YTozOntzOjE6ImEiO2k6NTA2O3M6MToiYiI7czoxMToiVmlldzpTbGlkZXIi
O3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTA2O2E6Mzp7czoxOiJhIjtpOjUwNztzOjE6ImIiO3M6
MTM6IkNyZWF0ZTpTbGlkZXIiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTA3O2E6Mzp7czoxOiJh
IjtpOjUwODtzOjE6ImIiO3M6MTM6IlVwZGF0ZTpTbGlkZXIiO3M6MToiYyI7czo1OiJBZG1pbiI7
fWk6NTA4O2E6Mzp7czoxOiJhIjtpOjUwOTtzOjE6ImIiO3M6MTM6IkRlbGV0ZTpTbGlkZXIiO3M6
MToiYyI7czo1OiJBZG1pbiI7fWk6NTA5O2E6Mzp7czoxOiJhIjtpOjUxMDtzOjE6ImIiO3M6MTY6
IkRlbGV0ZUFueTpTbGlkZXIiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTEwO2E6Mzp7czoxOiJh
IjtpOjUxMTtzOjE6ImIiO3M6MTQ6IlJlc3RvcmU6U2xpZGVyIjtzOjE6ImMiO3M6NToiQWRtaW4i
O31pOjUxMTthOjM6e3M6MToiYSI7aTo1MTI7czoxOiJiIjtzOjE4OiJGb3JjZURlbGV0ZTpTbGlk
ZXIiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTEyO2E6Mzp7czoxOiJhIjtpOjUxMztzOjE6ImIi
O3M6MjE6IkZvcmNlRGVsZXRlQW55OlNsaWRlciI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1MTM7
YTozOntzOjE6ImEiO2k6NTE0O3M6MToiYiI7czoxNzoiUmVzdG9yZUFueTpTbGlkZXIiO3M6MToi
YyI7czo1OiJBZG1pbiI7fWk6NTE0O2E6Mzp7czoxOiJhIjtpOjUxNTtzOjE6ImIiO3M6MTY6IlJl
cGxpY2F0ZTpTbGlkZXIiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTE1O2E6Mzp7czoxOiJhIjtp
OjUxNjtzOjE6ImIiO3M6MTQ6IlJlb3JkZXI6U2xpZGVyIjtzOjE6ImMiO3M6NToiQWRtaW4iO31p
OjUxNjthOjM6e3M6MToiYSI7aTo1MTc7czoxOiJiIjtzOjExOiJWaWV3QW55OlRhZyI7czoxOiJj
IjtzOjU6IkFkbWluIjt9aTo1MTc7YTozOntzOjE6ImEiO2k6NTE4O3M6MToiYiI7czo4OiJWaWV3
OlRhZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1MTg7YTozOntzOjE6ImEiO2k6NTE5O3M6MToi
YiI7czoxMDoiQ3JlYXRlOlRhZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1MTk7YTozOntzOjE6
ImEiO2k6NTIwO3M6MToiYiI7czoxMDoiVXBkYXRlOlRhZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9
aTo1MjA7YTozOntzOjE6ImEiO2k6NTIxO3M6MToiYiI7czoxMDoiRGVsZXRlOlRhZyI7czoxOiJj
IjtzOjU6IkFkbWluIjt9aTo1MjE7YTozOntzOjE6ImEiO2k6NTIyO3M6MToiYiI7czoxMzoiRGVs
ZXRlQW55OlRhZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1MjI7YTozOntzOjE6ImEiO2k6NTIz
O3M6MToiYiI7czoxMToiUmVzdG9yZTpUYWciO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTIzO2E6
Mzp7czoxOiJhIjtpOjUyNDtzOjE6ImIiO3M6MTU6IkZvcmNlRGVsZXRlOlRhZyI7czoxOiJjIjtz
OjU6IkFkbWluIjt9aTo1MjQ7YTozOntzOjE6ImEiO2k6NTI1O3M6MToiYiI7czoxODoiRm9yY2VE
ZWxldGVBbnk6VGFnIjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjUyNTthOjM6e3M6MToiYSI7aTo1
MjY7czoxOiJiIjtzOjE0OiJSZXN0b3JlQW55OlRhZyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1
MjY7YTozOntzOjE6ImEiO2k6NTI3O3M6MToiYiI7czoxMzoiUmVwbGljYXRlOlRhZyI7czoxOiJj
IjtzOjU6IkFkbWluIjt9aTo1Mjc7YTozOntzOjE6ImEiO2k6NTI4O3M6MToiYiI7czoxMToiUmVv
cmRlcjpUYWciO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTI4O2E6Mzp7czoxOiJhIjtpOjUyOTtz
OjE6ImIiO3M6MTI6IlZpZXdBbnk6VXNlciI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1Mjk7YToz
OntzOjE6ImEiO2k6NTMwO3M6MToiYiI7czo5OiJWaWV3OlVzZXIiO3M6MToiYyI7czo1OiJBZG1p
biI7fWk6NTMwO2E6Mzp7czoxOiJhIjtpOjUzMTtzOjE6ImIiO3M6MTE6IkNyZWF0ZTpVc2VyIjtz
OjE6ImMiO3M6NToiQWRtaW4iO31pOjUzMTthOjM6e3M6MToiYSI7aTo1MzI7czoxOiJiIjtzOjEx
OiJVcGRhdGU6VXNlciI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1MzI7YTozOntzOjE6ImEiO2k6
NTMzO3M6MToiYiI7czoxMToiRGVsZXRlOlVzZXIiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTMz
O2E6Mzp7czoxOiJhIjtpOjUzNDtzOjE6ImIiO3M6MTQ6IkRlbGV0ZUFueTpVc2VyIjtzOjE6ImMi
O3M6NToiQWRtaW4iO31pOjUzNDthOjM6e3M6MToiYSI7aTo1MzU7czoxOiJiIjtzOjEyOiJSZXN0
b3JlOlVzZXIiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTM1O2E6Mzp7czoxOiJhIjtpOjUzNjtz
OjE6ImIiO3M6MTY6IkZvcmNlRGVsZXRlOlVzZXIiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTM2
O2E6Mzp7czoxOiJhIjtpOjUzNztzOjE6ImIiO3M6MTk6IkZvcmNlRGVsZXRlQW55OlVzZXIiO3M6
MToiYyI7czo1OiJBZG1pbiI7fWk6NTM3O2E6Mzp7czoxOiJhIjtpOjUzODtzOjE6ImIiO3M6MTU6
IlJlc3RvcmVBbnk6VXNlciI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1Mzg7YTozOntzOjE6ImEi
O2k6NTM5O3M6MToiYiI7czoxNDoiUmVwbGljYXRlOlVzZXIiO3M6MToiYyI7czo1OiJBZG1pbiI7
fWk6NTM5O2E6Mzp7czoxOiJhIjtpOjU0MDtzOjE6ImIiO3M6MTI6IlJlb3JkZXI6VXNlciI7czox
OiJjIjtzOjU6IkFkbWluIjt9aTo1NDA7YTozOntzOjE6ImEiO2k6NTQxO3M6MToiYiI7czoxMzoi
Vmlld0FueTpWaWRlbyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1NDE7YTozOntzOjE6ImEiO2k6
NTQyO3M6MToiYiI7czoxMDoiVmlldzpWaWRlbyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1NDI7
YTozOntzOjE6ImEiO2k6NTQzO3M6MToiYiI7czoxMjoiQ3JlYXRlOlZpZGVvIjtzOjE6ImMiO3M6
NToiQWRtaW4iO31pOjU0MzthOjM6e3M6MToiYSI7aTo1NDQ7czoxOiJiIjtzOjEyOiJVcGRhdGU6
VmlkZW8iO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTQ0O2E6Mzp7czoxOiJhIjtpOjU0NTtzOjE6
ImIiO3M6MTI6IkRlbGV0ZTpWaWRlbyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1NDU7YTozOntz
OjE6ImEiO2k6NTQ2O3M6MToiYiI7czoxNToiRGVsZXRlQW55OlZpZGVvIjtzOjE6ImMiO3M6NToi
QWRtaW4iO31pOjU0NjthOjM6e3M6MToiYSI7aTo1NDc7czoxOiJiIjtzOjEzOiJSZXN0b3JlOlZp
ZGVvIjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjU0NzthOjM6e3M6MToiYSI7aTo1NDg7czoxOiJi
IjtzOjE3OiJGb3JjZURlbGV0ZTpWaWRlbyI7czoxOiJjIjtzOjU6IkFkbWluIjt9aTo1NDg7YToz
OntzOjE6ImEiO2k6NTQ5O3M6MToiYiI7czoyMDoiRm9yY2VEZWxldGVBbnk6VmlkZW8iO3M6MToi
YyI7czo1OiJBZG1pbiI7fWk6NTQ5O2E6Mzp7czoxOiJhIjtpOjU1MDtzOjE6ImIiO3M6MTY6IlJl
c3RvcmVBbnk6VmlkZW8iO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTUwO2E6Mzp7czoxOiJhIjtp
OjU1MTtzOjE6ImIiO3M6MTU6IlJlcGxpY2F0ZTpWaWRlbyI7czoxOiJjIjtzOjU6IkFkbWluIjt9
aTo1NTE7YTozOntzOjE6ImEiO2k6NTUyO3M6MToiYiI7czoxMzoiUmVvcmRlcjpWaWRlbyI7czox
OiJjIjtzOjU6IkFkbWluIjt9aTo1NTI7YTozOntzOjE6ImEiO2k6NTUzO3M6MToiYiI7czoxODoi
VmlldzpNeVByb2ZpbGVQYWdlIjtzOjE6ImMiO3M6NToiQWRtaW4iO31pOjU1MzthOjM6e3M6MToi
YSI7aTo1NTQ7czoxOiJiIjtzOjEzOiJWaWV3Ok1haW5NZW51IjtzOjE6ImMiO3M6NToiQWRtaW4i
O31pOjU1NDthOjM6e3M6MToiYSI7aTo1NTU7czoxOiJiIjtzOjI3OiJWaWV3OkFjdGl2aXR5TG9n
U3RhdHNXaWRnZXQiO3M6MToiYyI7czo1OiJBZG1pbiI7fWk6NTU1O2E6Mzp7czoxOiJhIjtpOjU1
NjtzOjE6ImIiO3M6MjY6IlZpZXc6QWN0aXZpdHlMb2dEb251dENoYXJ0IjtzOjE6ImMiO3M6NToi
QWRtaW4iO31pOjU1NjthOjM6e3M6MToiYSI7aTo1NTc7czoxOiJiIjtzOjE5OiJWaWV3QW55OkFj
dGl2aXR5TG9nIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo1NTc7YTozOntzOjE6ImEi
O2k6NTU4O3M6MToiYiI7czoxNjoiVmlldzpBY3Rpdml0eUxvZyI7czoxOiJjIjtzOjExOiJTdXBl
ciBBZG1pbiI7fWk6NTU4O2E6Mzp7czoxOiJhIjtpOjU1OTtzOjE6ImIiO3M6MTg6IkNyZWF0ZTpB
Y3Rpdml0eUxvZyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTU5O2E6Mzp7czoxOiJh
IjtpOjU2MDtzOjE6ImIiO3M6MTg6IlVwZGF0ZTpBY3Rpdml0eUxvZyI7czoxOiJjIjtzOjExOiJT
dXBlciBBZG1pbiI7fWk6NTYwO2E6Mzp7czoxOiJhIjtpOjU2MTtzOjE6ImIiO3M6MTg6IkRlbGV0
ZTpBY3Rpdml0eUxvZyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTYxO2E6Mzp7czox
OiJhIjtpOjU2MjtzOjE6ImIiO3M6MjE6IkRlbGV0ZUFueTpBY3Rpdml0eUxvZyI7czoxOiJjIjtz
OjExOiJTdXBlciBBZG1pbiI7fWk6NTYyO2E6Mzp7czoxOiJhIjtpOjU2MztzOjE6ImIiO3M6MTk6
IlJlc3RvcmU6QWN0aXZpdHlMb2ciO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjU2Mzth
OjM6e3M6MToiYSI7aTo1NjQ7czoxOiJiIjtzOjIzOiJGb3JjZURlbGV0ZTpBY3Rpdml0eUxvZyI7
czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTY0O2E6Mzp7czoxOiJhIjtpOjU2NTtzOjE6
ImIiO3M6MjY6IkZvcmNlRGVsZXRlQW55OkFjdGl2aXR5TG9nIjtzOjE6ImMiO3M6MTE6IlN1cGVy
IEFkbWluIjt9aTo1NjU7YTozOntzOjE6ImEiO2k6NTY2O3M6MToiYiI7czoyMjoiUmVzdG9yZUFu
eTpBY3Rpdml0eUxvZyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTY2O2E6Mzp7czox
OiJhIjtpOjU2NztzOjE6ImIiO3M6MjE6IlJlcGxpY2F0ZTpBY3Rpdml0eUxvZyI7czoxOiJjIjtz
OjExOiJTdXBlciBBZG1pbiI7fWk6NTY3O2E6Mzp7czoxOiJhIjtpOjU2ODtzOjE6ImIiO3M6MTk6
IlJlb3JkZXI6QWN0aXZpdHlMb2ciO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjU2ODth
OjM6e3M6MToiYSI7aTo1Njk7czoxOiJiIjtzOjIxOiJWaWV3QW55OkFkdmVydGlzZW1lbnQiO3M6
MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjU2OTthOjM6e3M6MToiYSI7aTo1NzA7czoxOiJi
IjtzOjE4OiJWaWV3OkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31p
OjU3MDthOjM6e3M6MToiYSI7aTo1NzE7czoxOiJiIjtzOjIwOiJDcmVhdGU6QWR2ZXJ0aXNlbWVu
dCI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTcxO2E6Mzp7czoxOiJhIjtpOjU3Mjtz
OjE6ImIiO3M6MjA6IlVwZGF0ZTpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFk
bWluIjt9aTo1NzI7YTozOntzOjE6ImEiO2k6NTczO3M6MToiYiI7czoyMDoiRGVsZXRlOkFkdmVy
dGlzZW1lbnQiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjU3MzthOjM6e3M6MToiYSI7
aTo1NzQ7czoxOiJiIjtzOjIzOiJEZWxldGVBbnk6QWR2ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjEx
OiJTdXBlciBBZG1pbiI7fWk6NTc0O2E6Mzp7czoxOiJhIjtpOjU3NTtzOjE6ImIiO3M6MjE6IlJl
c3RvcmU6QWR2ZXJ0aXNlbWVudCI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTc1O2E6
Mzp7czoxOiJhIjtpOjU3NjtzOjE6ImIiO3M6MjU6IkZvcmNlRGVsZXRlOkFkdmVydGlzZW1lbnQi
O3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjU3NjthOjM6e3M6MToiYSI7aTo1Nzc7czox
OiJiIjtzOjI4OiJGb3JjZURlbGV0ZUFueTpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6MTE6IlN1
cGVyIEFkbWluIjt9aTo1Nzc7YTozOntzOjE6ImEiO2k6NTc4O3M6MToiYiI7czoyNDoiUmVzdG9y
ZUFueTpBZHZlcnRpc2VtZW50IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo1Nzg7YToz
OntzOjE6ImEiO2k6NTc5O3M6MToiYiI7czoyMzoiUmVwbGljYXRlOkFkdmVydGlzZW1lbnQiO3M6
MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjU3OTthOjM6e3M6MToiYSI7aTo1ODA7czoxOiJi
IjtzOjIxOiJSZW9yZGVyOkFkdmVydGlzZW1lbnQiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4i
O31pOjU4MDthOjM6e3M6MToiYSI7aTo1ODE7czoxOiJiIjtzOjE3OiJWaWV3QW55OkJsb2NrZWRJ
cCI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTgxO2E6Mzp7czoxOiJhIjtpOjU4Mjtz
OjE6ImIiO3M6MTQ6IlZpZXc6QmxvY2tlZElwIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9
aTo1ODI7YTozOntzOjE6ImEiO2k6NTgzO3M6MToiYiI7czoxNjoiQ3JlYXRlOkJsb2NrZWRJcCI7
czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTgzO2E6Mzp7czoxOiJhIjtpOjU4NDtzOjE6
ImIiO3M6MTY6IlVwZGF0ZTpCbG9ja2VkSXAiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31p
OjU4NDthOjM6e3M6MToiYSI7aTo1ODU7czoxOiJiIjtzOjE2OiJEZWxldGU6QmxvY2tlZElwIjtz
OjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo1ODU7YTozOntzOjE6ImEiO2k6NTg2O3M6MToi
YiI7czoxOToiRGVsZXRlQW55OkJsb2NrZWRJcCI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7
fWk6NTg2O2E6Mzp7czoxOiJhIjtpOjU4NztzOjE6ImIiO3M6MTc6IlJlc3RvcmU6QmxvY2tlZElw
IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo1ODc7YTozOntzOjE6ImEiO2k6NTg4O3M6
MToiYiI7czoyMToiRm9yY2VEZWxldGU6QmxvY2tlZElwIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFk
bWluIjt9aTo1ODg7YTozOntzOjE6ImEiO2k6NTg5O3M6MToiYiI7czoyNDoiRm9yY2VEZWxldGVB
bnk6QmxvY2tlZElwIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo1ODk7YTozOntzOjE6
ImEiO2k6NTkwO3M6MToiYiI7czoyMDoiUmVzdG9yZUFueTpCbG9ja2VkSXAiO3M6MToiYyI7czox
MToiU3VwZXIgQWRtaW4iO31pOjU5MDthOjM6e3M6MToiYSI7aTo1OTE7czoxOiJiIjtzOjE5OiJS
ZXBsaWNhdGU6QmxvY2tlZElwIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo1OTE7YToz
OntzOjE6ImEiO2k6NTkyO3M6MToiYiI7czoxNzoiUmVvcmRlcjpCbG9ja2VkSXAiO3M6MToiYyI7
czoxMToiU3VwZXIgQWRtaW4iO31pOjU5MjthOjM6e3M6MToiYSI7aTo1OTM7czoxOiJiIjtzOjE2
OiJWaWV3QW55OkNhdGVnb3J5IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo1OTM7YToz
OntzOjE6ImEiO2k6NTk0O3M6MToiYiI7czoxMzoiVmlldzpDYXRlZ29yeSI7czoxOiJjIjtzOjEx
OiJTdXBlciBBZG1pbiI7fWk6NTk0O2E6Mzp7czoxOiJhIjtpOjU5NTtzOjE6ImIiO3M6MTU6IkNy
ZWF0ZTpDYXRlZ29yeSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTk1O2E6Mzp7czox
OiJhIjtpOjU5NjtzOjE6ImIiO3M6MTU6IlVwZGF0ZTpDYXRlZ29yeSI7czoxOiJjIjtzOjExOiJT
dXBlciBBZG1pbiI7fWk6NTk2O2E6Mzp7czoxOiJhIjtpOjU5NztzOjE6ImIiO3M6MTU6IkRlbGV0
ZTpDYXRlZ29yeSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NTk3O2E6Mzp7czoxOiJh
IjtpOjU5ODtzOjE6ImIiO3M6MTg6IkRlbGV0ZUFueTpDYXRlZ29yeSI7czoxOiJjIjtzOjExOiJT
dXBlciBBZG1pbiI7fWk6NTk4O2E6Mzp7czoxOiJhIjtpOjU5OTtzOjE6ImIiO3M6MTY6IlJlc3Rv
cmU6Q2F0ZWdvcnkiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjU5OTthOjM6e3M6MToi
YSI7aTo2MDA7czoxOiJiIjtzOjIwOiJGb3JjZURlbGV0ZTpDYXRlZ29yeSI7czoxOiJjIjtzOjEx
OiJTdXBlciBBZG1pbiI7fWk6NjAwO2E6Mzp7czoxOiJhIjtpOjYwMTtzOjE6ImIiO3M6MjM6IkZv
cmNlRGVsZXRlQW55OkNhdGVnb3J5IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2MDE7
YTozOntzOjE6ImEiO2k6NjAyO3M6MToiYiI7czoxOToiUmVzdG9yZUFueTpDYXRlZ29yeSI7czox
OiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjAyO2E6Mzp7czoxOiJhIjtpOjYwMztzOjE6ImIi
O3M6MTg6IlJlcGxpY2F0ZTpDYXRlZ29yeSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6
NjAzO2E6Mzp7czoxOiJhIjtpOjYwNDtzOjE6ImIiO3M6MTY6IlJlb3JkZXI6Q2F0ZWdvcnkiO3M6
MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjYwNDthOjM6e3M6MToiYSI7aTo2MDU7czoxOiJi
IjtzOjI3OiJWaWV3QW55OkRlc3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czoxMToiU3VwZXIg
QWRtaW4iO31pOjYwNTthOjM6e3M6MToiYSI7aTo2MDY7czoxOiJiIjtzOjI0OiJWaWV3OkRlc3Rp
bmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjYwNjthOjM6e3M6
MToiYSI7aTo2MDc7czoxOiJiIjtzOjI2OiJDcmVhdGU6RGVzdGluYXRpb25DYXRlZ29yeSI7czox
OiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjA3O2E6Mzp7czoxOiJhIjtpOjYwODtzOjE6ImIi
O3M6MjY6IlVwZGF0ZTpEZXN0aW5hdGlvbkNhdGVnb3J5IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFk
bWluIjt9aTo2MDg7YTozOntzOjE6ImEiO2k6NjA5O3M6MToiYiI7czoyNjoiRGVsZXRlOkRlc3Rp
bmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjYwOTthOjM6e3M6
MToiYSI7aTo2MTA7czoxOiJiIjtzOjI5OiJEZWxldGVBbnk6RGVzdGluYXRpb25DYXRlZ29yeSI7
czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjEwO2E6Mzp7czoxOiJhIjtpOjYxMTtzOjE6
ImIiO3M6Mjc6IlJlc3RvcmU6RGVzdGluYXRpb25DYXRlZ29yeSI7czoxOiJjIjtzOjExOiJTdXBl
ciBBZG1pbiI7fWk6NjExO2E6Mzp7czoxOiJhIjtpOjYxMjtzOjE6ImIiO3M6MzE6IkZvcmNlRGVs
ZXRlOkRlc3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjYx
MjthOjM6e3M6MToiYSI7aTo2MTM7czoxOiJiIjtzOjM0OiJGb3JjZURlbGV0ZUFueTpEZXN0aW5h
dGlvbkNhdGVnb3J5IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2MTM7YTozOntzOjE6
ImEiO2k6NjE0O3M6MToiYiI7czozMDoiUmVzdG9yZUFueTpEZXN0aW5hdGlvbkNhdGVnb3J5Ijtz
OjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2MTQ7YTozOntzOjE6ImEiO2k6NjE1O3M6MToi
YiI7czoyOToiUmVwbGljYXRlOkRlc3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czoxMToiU3Vw
ZXIgQWRtaW4iO31pOjYxNTthOjM6e3M6MToiYSI7aTo2MTY7czoxOiJiIjtzOjI3OiJSZW9yZGVy
OkRlc3RpbmF0aW9uQ2F0ZWdvcnkiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjYxNjth
OjM6e3M6MToiYSI7aTo2MTc7czoxOiJiIjtzOjE5OiJWaWV3QW55OkRlc3RpbmF0aW9uIjtzOjE6
ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2MTc7YTozOntzOjE6ImEiO2k6NjE4O3M6MToiYiI7
czoxNjoiVmlldzpEZXN0aW5hdGlvbiI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjE4
O2E6Mzp7czoxOiJhIjtpOjYxOTtzOjE6ImIiO3M6MTg6IkNyZWF0ZTpEZXN0aW5hdGlvbiI7czox
OiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjE5O2E6Mzp7czoxOiJhIjtpOjYyMDtzOjE6ImIi
O3M6MTg6IlVwZGF0ZTpEZXN0aW5hdGlvbiI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6
NjIwO2E6Mzp7czoxOiJhIjtpOjYyMTtzOjE6ImIiO3M6MTg6IkRlbGV0ZTpEZXN0aW5hdGlvbiI7
czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjIxO2E6Mzp7czoxOiJhIjtpOjYyMjtzOjE6
ImIiO3M6MjE6IkRlbGV0ZUFueTpEZXN0aW5hdGlvbiI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1p
biI7fWk6NjIyO2E6Mzp7czoxOiJhIjtpOjYyMztzOjE6ImIiO3M6MTk6IlJlc3RvcmU6RGVzdGlu
YXRpb24iO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjYyMzthOjM6e3M6MToiYSI7aTo2
MjQ7czoxOiJiIjtzOjIzOiJGb3JjZURlbGV0ZTpEZXN0aW5hdGlvbiI7czoxOiJjIjtzOjExOiJT
dXBlciBBZG1pbiI7fWk6NjI0O2E6Mzp7czoxOiJhIjtpOjYyNTtzOjE6ImIiO3M6MjY6IkZvcmNl
RGVsZXRlQW55OkRlc3RpbmF0aW9uIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2MjU7
YTozOntzOjE6ImEiO2k6NjI2O3M6MToiYiI7czoyMjoiUmVzdG9yZUFueTpEZXN0aW5hdGlvbiI7
czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjI2O2E6Mzp7czoxOiJhIjtpOjYyNztzOjE6
ImIiO3M6MjE6IlJlcGxpY2F0ZTpEZXN0aW5hdGlvbiI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1p
biI7fWk6NjI3O2E6Mzp7czoxOiJhIjtpOjYyODtzOjE6ImIiO3M6MTk6IlJlb3JkZXI6RGVzdGlu
YXRpb24iO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjYyODthOjM6e3M6MToiYSI7aTo2
Mjk7czoxOiJiIjtzOjE2OiJWaWV3QW55OkZlc3RpdmFsIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFk
bWluIjt9aTo2Mjk7YTozOntzOjE6ImEiO2k6NjMwO3M6MToiYiI7czoxMzoiVmlldzpGZXN0aXZh
bCI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjMwO2E6Mzp7czoxOiJhIjtpOjYzMTtz
OjE6ImIiO3M6MTU6IkNyZWF0ZTpGZXN0aXZhbCI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7
fWk6NjMxO2E6Mzp7czoxOiJhIjtpOjYzMjtzOjE6ImIiO3M6MTU6IlVwZGF0ZTpGZXN0aXZhbCI7
czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjMyO2E6Mzp7czoxOiJhIjtpOjYzMztzOjE6
ImIiO3M6MTU6IkRlbGV0ZTpGZXN0aXZhbCI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6
NjMzO2E6Mzp7czoxOiJhIjtpOjYzNDtzOjE6ImIiO3M6MTg6IkRlbGV0ZUFueTpGZXN0aXZhbCI7
czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjM0O2E6Mzp7czoxOiJhIjtpOjYzNTtzOjE6
ImIiO3M6MTY6IlJlc3RvcmU6RmVzdGl2YWwiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31p
OjYzNTthOjM6e3M6MToiYSI7aTo2MzY7czoxOiJiIjtzOjIwOiJGb3JjZURlbGV0ZTpGZXN0aXZh
bCI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjM2O2E6Mzp7czoxOiJhIjtpOjYzNztz
OjE6ImIiO3M6MjM6IkZvcmNlRGVsZXRlQW55OkZlc3RpdmFsIjtzOjE6ImMiO3M6MTE6IlN1cGVy
IEFkbWluIjt9aTo2Mzc7YTozOntzOjE6ImEiO2k6NjM4O3M6MToiYiI7czoxOToiUmVzdG9yZUFu
eTpGZXN0aXZhbCI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjM4O2E6Mzp7czoxOiJh
IjtpOjYzOTtzOjE6ImIiO3M6MTg6IlJlcGxpY2F0ZTpGZXN0aXZhbCI7czoxOiJjIjtzOjExOiJT
dXBlciBBZG1pbiI7fWk6NjM5O2E6Mzp7czoxOiJhIjtpOjY0MDtzOjE6ImIiO3M6MTY6IlJlb3Jk
ZXI6RmVzdGl2YWwiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY0MDthOjM6e3M6MToi
YSI7aTo2NDE7czoxOiJiIjtzOjEyOiJWaWV3QW55Ok5ld3MiO3M6MToiYyI7czoxMToiU3VwZXIg
QWRtaW4iO31pOjY0MTthOjM6e3M6MToiYSI7aTo2NDI7czoxOiJiIjtzOjk6IlZpZXc6TmV3cyI7
czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjQyO2E6Mzp7czoxOiJhIjtpOjY0MztzOjE6
ImIiO3M6MTE6IkNyZWF0ZTpOZXdzIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2NDM7
YTozOntzOjE6ImEiO2k6NjQ0O3M6MToiYiI7czoxMToiVXBkYXRlOk5ld3MiO3M6MToiYyI7czox
MToiU3VwZXIgQWRtaW4iO31pOjY0NDthOjM6e3M6MToiYSI7aTo2NDU7czoxOiJiIjtzOjExOiJE
ZWxldGU6TmV3cyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjQ1O2E6Mzp7czoxOiJh
IjtpOjY0NjtzOjE6ImIiO3M6MTQ6IkRlbGV0ZUFueTpOZXdzIjtzOjE6ImMiO3M6MTE6IlN1cGVy
IEFkbWluIjt9aTo2NDY7YTozOntzOjE6ImEiO2k6NjQ3O3M6MToiYiI7czoxMjoiUmVzdG9yZTpO
ZXdzIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2NDc7YTozOntzOjE6ImEiO2k6NjQ4
O3M6MToiYiI7czoxNjoiRm9yY2VEZWxldGU6TmV3cyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1p
biI7fWk6NjQ4O2E6Mzp7czoxOiJhIjtpOjY0OTtzOjE6ImIiO3M6MTk6IkZvcmNlRGVsZXRlQW55
Ok5ld3MiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY0OTthOjM6e3M6MToiYSI7aTo2
NTA7czoxOiJiIjtzOjE1OiJSZXN0b3JlQW55Ok5ld3MiO3M6MToiYyI7czoxMToiU3VwZXIgQWRt
aW4iO31pOjY1MDthOjM6e3M6MToiYSI7aTo2NTE7czoxOiJiIjtzOjE0OiJSZXBsaWNhdGU6TmV3
cyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjUxO2E6Mzp7czoxOiJhIjtpOjY1Mjtz
OjE6ImIiO3M6MTI6IlJlb3JkZXI6TmV3cyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6
NjUyO2E6Mzp7czoxOiJhIjtpOjY1MztzOjE6ImIiO3M6MTI6IlZpZXdBbnk6UGFnZSI7czoxOiJj
IjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjUzO2E6Mzp7czoxOiJhIjtpOjY1NDtzOjE6ImIiO3M6
OToiVmlldzpQYWdlIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2NTQ7YTozOntzOjE6
ImEiO2k6NjU1O3M6MToiYiI7czoxMToiQ3JlYXRlOlBhZ2UiO3M6MToiYyI7czoxMToiU3VwZXIg
QWRtaW4iO31pOjY1NTthOjM6e3M6MToiYSI7aTo2NTY7czoxOiJiIjtzOjExOiJVcGRhdGU6UGFn
ZSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjU2O2E6Mzp7czoxOiJhIjtpOjY1Nztz
OjE6ImIiO3M6MTE6IkRlbGV0ZTpQYWdlIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2
NTc7YTozOntzOjE6ImEiO2k6NjU4O3M6MToiYiI7czoxNDoiRGVsZXRlQW55OlBhZ2UiO3M6MToi
YyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY1ODthOjM6e3M6MToiYSI7aTo2NTk7czoxOiJiIjtz
OjEyOiJSZXN0b3JlOlBhZ2UiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY1OTthOjM6
e3M6MToiYSI7aTo2NjA7czoxOiJiIjtzOjE2OiJGb3JjZURlbGV0ZTpQYWdlIjtzOjE6ImMiO3M6
MTE6IlN1cGVyIEFkbWluIjt9aTo2NjA7YTozOntzOjE6ImEiO2k6NjYxO3M6MToiYiI7czoxOToi
Rm9yY2VEZWxldGVBbnk6UGFnZSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjYxO2E6
Mzp7czoxOiJhIjtpOjY2MjtzOjE6ImIiO3M6MTU6IlJlc3RvcmVBbnk6UGFnZSI7czoxOiJjIjtz
OjExOiJTdXBlciBBZG1pbiI7fWk6NjYyO2E6Mzp7czoxOiJhIjtpOjY2MztzOjE6ImIiO3M6MTQ6
IlJlcGxpY2F0ZTpQYWdlIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2NjM7YTozOntz
OjE6ImEiO2k6NjY0O3M6MToiYiI7czoxMjoiUmVvcmRlcjpQYWdlIjtzOjE6ImMiO3M6MTE6IlN1
cGVyIEFkbWluIjt9aTo2NjQ7YTozOntzOjE6ImEiO2k6NjY1O3M6MToiYiI7czoyMDoiVmlld0Fu
eTpQaG90b0dhbGxlcnkiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY2NTthOjM6e3M6
MToiYSI7aTo2NjY7czoxOiJiIjtzOjE3OiJWaWV3OlBob3RvR2FsbGVyeSI7czoxOiJjIjtzOjEx
OiJTdXBlciBBZG1pbiI7fWk6NjY2O2E6Mzp7czoxOiJhIjtpOjY2NztzOjE6ImIiO3M6MTk6IkNy
ZWF0ZTpQaG90b0dhbGxlcnkiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY2NzthOjM6
e3M6MToiYSI7aTo2Njg7czoxOiJiIjtzOjE5OiJVcGRhdGU6UGhvdG9HYWxsZXJ5IjtzOjE6ImMi
O3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2Njg7YTozOntzOjE6ImEiO2k6NjY5O3M6MToiYiI7czox
OToiRGVsZXRlOlBob3RvR2FsbGVyeSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjY5
O2E6Mzp7czoxOiJhIjtpOjY3MDtzOjE6ImIiO3M6MjI6IkRlbGV0ZUFueTpQaG90b0dhbGxlcnki
O3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY3MDthOjM6e3M6MToiYSI7aTo2NzE7czox
OiJiIjtzOjIwOiJSZXN0b3JlOlBob3RvR2FsbGVyeSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1p
biI7fWk6NjcxO2E6Mzp7czoxOiJhIjtpOjY3MjtzOjE6ImIiO3M6MjQ6IkZvcmNlRGVsZXRlOlBo
b3RvR2FsbGVyeSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjcyO2E6Mzp7czoxOiJh
IjtpOjY3MztzOjE6ImIiO3M6Mjc6IkZvcmNlRGVsZXRlQW55OlBob3RvR2FsbGVyeSI7czoxOiJj
IjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NjczO2E6Mzp7czoxOiJhIjtpOjY3NDtzOjE6ImIiO3M6
MjM6IlJlc3RvcmVBbnk6UGhvdG9HYWxsZXJ5IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9
aTo2NzQ7YTozOntzOjE6ImEiO2k6Njc1O3M6MToiYiI7czoyMjoiUmVwbGljYXRlOlBob3RvR2Fs
bGVyeSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6Njc1O2E6Mzp7czoxOiJhIjtpOjY3
NjtzOjE6ImIiO3M6MjA6IlJlb3JkZXI6UGhvdG9HYWxsZXJ5IjtzOjE6ImMiO3M6MTE6IlN1cGVy
IEFkbWluIjt9aTo2NzY7YTozOntzOjE6ImEiO2k6Njc3O3M6MToiYiI7czoxNToiVmlld0FueTpT
ZXR0aW5nIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2Nzc7YTozOntzOjE6ImEiO2k6
Njc4O3M6MToiYiI7czoxMjoiVmlldzpTZXR0aW5nIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWlu
Ijt9aTo2Nzg7YTozOntzOjE6ImEiO2k6Njc5O3M6MToiYiI7czoxNDoiQ3JlYXRlOlNldHRpbmci
O3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY3OTthOjM6e3M6MToiYSI7aTo2ODA7czox
OiJiIjtzOjE0OiJVcGRhdGU6U2V0dGluZyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6
NjgwO2E6Mzp7czoxOiJhIjtpOjY4MTtzOjE6ImIiO3M6MTQ6IkRlbGV0ZTpTZXR0aW5nIjtzOjE6
ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2ODE7YTozOntzOjE6ImEiO2k6NjgyO3M6MToiYiI7
czoxNzoiRGVsZXRlQW55OlNldHRpbmciO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY4
MjthOjM6e3M6MToiYSI7aTo2ODM7czoxOiJiIjtzOjE1OiJSZXN0b3JlOlNldHRpbmciO3M6MToi
YyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY4MzthOjM6e3M6MToiYSI7aTo2ODQ7czoxOiJiIjtz
OjE5OiJGb3JjZURlbGV0ZTpTZXR0aW5nIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2
ODQ7YTozOntzOjE6ImEiO2k6Njg1O3M6MToiYiI7czoyMjoiRm9yY2VEZWxldGVBbnk6U2V0dGlu
ZyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6Njg1O2E6Mzp7czoxOiJhIjtpOjY4Njtz
OjE6ImIiO3M6MTg6IlJlc3RvcmVBbnk6U2V0dGluZyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1p
biI7fWk6Njg2O2E6Mzp7czoxOiJhIjtpOjY4NztzOjE6ImIiO3M6MTc6IlJlcGxpY2F0ZTpTZXR0
aW5nIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2ODc7YTozOntzOjE6ImEiO2k6Njg4
O3M6MToiYiI7czoxNToiUmVvcmRlcjpTZXR0aW5nIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWlu
Ijt9aTo2ODg7YTozOntzOjE6ImEiO2k6Njg5O3M6MToiYiI7czoxNDoiVmlld0FueTpTbGlkZXIi
O3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY4OTthOjM6e3M6MToiYSI7aTo2OTA7czox
OiJiIjtzOjExOiJWaWV3OlNsaWRlciI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6Njkw
O2E6Mzp7czoxOiJhIjtpOjY5MTtzOjE6ImIiO3M6MTM6IkNyZWF0ZTpTbGlkZXIiO3M6MToiYyI7
czoxMToiU3VwZXIgQWRtaW4iO31pOjY5MTthOjM6e3M6MToiYSI7aTo2OTI7czoxOiJiIjtzOjEz
OiJVcGRhdGU6U2xpZGVyIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2OTI7YTozOntz
OjE6ImEiO2k6NjkzO3M6MToiYiI7czoxMzoiRGVsZXRlOlNsaWRlciI7czoxOiJjIjtzOjExOiJT
dXBlciBBZG1pbiI7fWk6NjkzO2E6Mzp7czoxOiJhIjtpOjY5NDtzOjE6ImIiO3M6MTY6IkRlbGV0
ZUFueTpTbGlkZXIiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjY5NDthOjM6e3M6MToi
YSI7aTo2OTU7czoxOiJiIjtzOjE0OiJSZXN0b3JlOlNsaWRlciI7czoxOiJjIjtzOjExOiJTdXBl
ciBBZG1pbiI7fWk6Njk1O2E6Mzp7czoxOiJhIjtpOjY5NjtzOjE6ImIiO3M6MTg6IkZvcmNlRGVs
ZXRlOlNsaWRlciI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6Njk2O2E6Mzp7czoxOiJh
IjtpOjY5NztzOjE6ImIiO3M6MjE6IkZvcmNlRGVsZXRlQW55OlNsaWRlciI7czoxOiJjIjtzOjEx
OiJTdXBlciBBZG1pbiI7fWk6Njk3O2E6Mzp7czoxOiJhIjtpOjY5ODtzOjE6ImIiO3M6MTc6IlJl
c3RvcmVBbnk6U2xpZGVyIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo2OTg7YTozOntz
OjE6ImEiO2k6Njk5O3M6MToiYiI7czoxNjoiUmVwbGljYXRlOlNsaWRlciI7czoxOiJjIjtzOjEx
OiJTdXBlciBBZG1pbiI7fWk6Njk5O2E6Mzp7czoxOiJhIjtpOjcwMDtzOjE6ImIiO3M6MTQ6IlJl
b3JkZXI6U2xpZGVyIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MDA7YTozOntzOjE6
ImEiO2k6NzAxO3M6MToiYiI7czoxMToiVmlld0FueTpUYWciO3M6MToiYyI7czoxMToiU3VwZXIg
QWRtaW4iO31pOjcwMTthOjM6e3M6MToiYSI7aTo3MDI7czoxOiJiIjtzOjg6IlZpZXc6VGFnIjtz
OjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MDI7YTozOntzOjE6ImEiO2k6NzAzO3M6MToi
YiI7czoxMDoiQ3JlYXRlOlRhZyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzAzO2E6
Mzp7czoxOiJhIjtpOjcwNDtzOjE6ImIiO3M6MTA6IlVwZGF0ZTpUYWciO3M6MToiYyI7czoxMToi
U3VwZXIgQWRtaW4iO31pOjcwNDthOjM6e3M6MToiYSI7aTo3MDU7czoxOiJiIjtzOjEwOiJEZWxl
dGU6VGFnIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MDU7YTozOntzOjE6ImEiO2k6
NzA2O3M6MToiYiI7czoxMzoiRGVsZXRlQW55OlRhZyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1p
biI7fWk6NzA2O2E6Mzp7czoxOiJhIjtpOjcwNztzOjE6ImIiO3M6MTE6IlJlc3RvcmU6VGFnIjtz
OjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MDc7YTozOntzOjE6ImEiO2k6NzA4O3M6MToi
YiI7czoxNToiRm9yY2VEZWxldGU6VGFnIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3
MDg7YTozOntzOjE6ImEiO2k6NzA5O3M6MToiYiI7czoxODoiRm9yY2VEZWxldGVBbnk6VGFnIjtz
OjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MDk7YTozOntzOjE6ImEiO2k6NzEwO3M6MToi
YiI7czoxNDoiUmVzdG9yZUFueTpUYWciO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjcx
MDthOjM6e3M6MToiYSI7aTo3MTE7czoxOiJiIjtzOjEzOiJSZXBsaWNhdGU6VGFnIjtzOjE6ImMi
O3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MTE7YTozOntzOjE6ImEiO2k6NzEyO3M6MToiYiI7czox
MToiUmVvcmRlcjpUYWciO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjcxMjthOjM6e3M6
MToiYSI7aTo3MTM7czoxOiJiIjtzOjEyOiJWaWV3QW55OlVzZXIiO3M6MToiYyI7czoxMToiU3Vw
ZXIgQWRtaW4iO31pOjcxMzthOjM6e3M6MToiYSI7aTo3MTQ7czoxOiJiIjtzOjk6IlZpZXc6VXNl
ciI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzE0O2E6Mzp7czoxOiJhIjtpOjcxNTtz
OjE6ImIiO3M6MTE6IkNyZWF0ZTpVc2VyIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3
MTU7YTozOntzOjE6ImEiO2k6NzE2O3M6MToiYiI7czoxMToiVXBkYXRlOlVzZXIiO3M6MToiYyI7
czoxMToiU3VwZXIgQWRtaW4iO31pOjcxNjthOjM6e3M6MToiYSI7aTo3MTc7czoxOiJiIjtzOjEx
OiJEZWxldGU6VXNlciI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzE3O2E6Mzp7czox
OiJhIjtpOjcxODtzOjE6ImIiO3M6MTQ6IkRlbGV0ZUFueTpVc2VyIjtzOjE6ImMiO3M6MTE6IlN1
cGVyIEFkbWluIjt9aTo3MTg7YTozOntzOjE6ImEiO2k6NzE5O3M6MToiYiI7czoxMjoiUmVzdG9y
ZTpVc2VyIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MTk7YTozOntzOjE6ImEiO2k6
NzIwO3M6MToiYiI7czoxNjoiRm9yY2VEZWxldGU6VXNlciI7czoxOiJjIjtzOjExOiJTdXBlciBB
ZG1pbiI7fWk6NzIwO2E6Mzp7czoxOiJhIjtpOjcyMTtzOjE6ImIiO3M6MTk6IkZvcmNlRGVsZXRl
QW55OlVzZXIiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjcyMTthOjM6e3M6MToiYSI7
aTo3MjI7czoxOiJiIjtzOjE1OiJSZXN0b3JlQW55OlVzZXIiO3M6MToiYyI7czoxMToiU3VwZXIg
QWRtaW4iO31pOjcyMjthOjM6e3M6MToiYSI7aTo3MjM7czoxOiJiIjtzOjE0OiJSZXBsaWNhdGU6
VXNlciI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzIzO2E6Mzp7czoxOiJhIjtpOjcy
NDtzOjE6ImIiO3M6MTI6IlJlb3JkZXI6VXNlciI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7
fWk6NzI0O2E6Mzp7czoxOiJhIjtpOjcyNTtzOjE6ImIiO3M6MTM6IlZpZXdBbnk6VmlkZW8iO3M6
MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjcyNTthOjM6e3M6MToiYSI7aTo3MjY7czoxOiJi
IjtzOjEwOiJWaWV3OlZpZGVvIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MjY7YToz
OntzOjE6ImEiO2k6NzI3O3M6MToiYiI7czoxMjoiQ3JlYXRlOlZpZGVvIjtzOjE6ImMiO3M6MTE6
IlN1cGVyIEFkbWluIjt9aTo3Mjc7YTozOntzOjE6ImEiO2k6NzI4O3M6MToiYiI7czoxMjoiVXBk
YXRlOlZpZGVvIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3Mjg7YTozOntzOjE6ImEi
O2k6NzI5O3M6MToiYiI7czoxMjoiRGVsZXRlOlZpZGVvIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFk
bWluIjt9aTo3Mjk7YTozOntzOjE6ImEiO2k6NzMwO3M6MToiYiI7czoxNToiRGVsZXRlQW55OlZp
ZGVvIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MzA7YTozOntzOjE6ImEiO2k6NzMx
O3M6MToiYiI7czoxMzoiUmVzdG9yZTpWaWRlbyI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7
fWk6NzMxO2E6Mzp7czoxOiJhIjtpOjczMjtzOjE6ImIiO3M6MTc6IkZvcmNlRGVsZXRlOlZpZGVv
IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MzI7YTozOntzOjE6ImEiO2k6NzMzO3M6
MToiYiI7czoyMDoiRm9yY2VEZWxldGVBbnk6VmlkZW8iO3M6MToiYyI7czoxMToiU3VwZXIgQWRt
aW4iO31pOjczMzthOjM6e3M6MToiYSI7aTo3MzQ7czoxOiJiIjtzOjE2OiJSZXN0b3JlQW55OlZp
ZGVvIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3MzQ7YTozOntzOjE6ImEiO2k6NzM1
O3M6MToiYiI7czoxNToiUmVwbGljYXRlOlZpZGVvIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWlu
Ijt9aTo3MzU7YTozOntzOjE6ImEiO2k6NzM2O3M6MToiYiI7czoxMzoiUmVvcmRlcjpWaWRlbyI7
czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzM2O2E6Mzp7czoxOiJhIjtpOjczNztzOjE6
ImIiO3M6MTI6IlZpZXdBbnk6Um9sZSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzM3
O2E6Mzp7czoxOiJhIjtpOjczODtzOjE6ImIiO3M6OToiVmlldzpSb2xlIjtzOjE6ImMiO3M6MTE6
IlN1cGVyIEFkbWluIjt9aTo3Mzg7YTozOntzOjE6ImEiO2k6NzM5O3M6MToiYiI7czoxMToiQ3Jl
YXRlOlJvbGUiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjczOTthOjM6e3M6MToiYSI7
aTo3NDA7czoxOiJiIjtzOjExOiJVcGRhdGU6Um9sZSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1p
biI7fWk6NzQwO2E6Mzp7czoxOiJhIjtpOjc0MTtzOjE6ImIiO3M6MTE6IkRlbGV0ZTpSb2xlIjtz
OjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3NDE7YTozOntzOjE6ImEiO2k6NzQyO3M6MToi
YiI7czoxNDoiRGVsZXRlQW55OlJvbGUiO3M6MToiYyI7czoxMToiU3VwZXIgQWRtaW4iO31pOjc0
MjthOjM6e3M6MToiYSI7aTo3NDM7czoxOiJiIjtzOjEyOiJSZXN0b3JlOlJvbGUiO3M6MToiYyI7
czoxMToiU3VwZXIgQWRtaW4iO31pOjc0MzthOjM6e3M6MToiYSI7aTo3NDQ7czoxOiJiIjtzOjE2
OiJGb3JjZURlbGV0ZTpSb2xlIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3NDQ7YToz
OntzOjE6ImEiO2k6NzQ1O3M6MToiYiI7czoxOToiRm9yY2VEZWxldGVBbnk6Um9sZSI7czoxOiJj
IjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzQ1O2E6Mzp7czoxOiJhIjtpOjc0NjtzOjE6ImIiO3M6
MTU6IlJlc3RvcmVBbnk6Um9sZSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzQ2O2E6
Mzp7czoxOiJhIjtpOjc0NztzOjE6ImIiO3M6MTQ6IlJlcGxpY2F0ZTpSb2xlIjtzOjE6ImMiO3M6
MTE6IlN1cGVyIEFkbWluIjt9aTo3NDc7YTozOntzOjE6ImEiO2k6NzQ4O3M6MToiYiI7czoxMjoi
UmVvcmRlcjpSb2xlIjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWluIjt9aTo3NDg7YTozOntzOjE6
ImEiO2k6NzQ5O3M6MToiYiI7czoxODoiVmlldzpNeVByb2ZpbGVQYWdlIjtzOjE6ImMiO3M6MTE6
IlN1cGVyIEFkbWluIjt9aTo3NDk7YTozOntzOjE6ImEiO2k6NzUwO3M6MToiYiI7czoxMzoiVmll
dzpNYWluTWVudSI7czoxOiJjIjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzUwO2E6Mzp7czoxOiJh
IjtpOjc1MTtzOjE6ImIiO3M6Mjc6IlZpZXc6QWN0aXZpdHlMb2dTdGF0c1dpZGdldCI7czoxOiJj
IjtzOjExOiJTdXBlciBBZG1pbiI7fWk6NzUxO2E6Mzp7czoxOiJhIjtpOjc1MjtzOjE6ImIiO3M6
MjY6IlZpZXc6QWN0aXZpdHlMb2dEb251dENoYXJ0IjtzOjE6ImMiO3M6MTE6IlN1cGVyIEFkbWlu
Ijt9fXM6NToicm9sZXMiO2E6Mjp7aTowO2E6Mzp7czoxOiJhIjtpOjU7czoxOiJiIjtzOjExOiJz
dXBlcl9hZG1pbiI7czoxOiJjIjtzOjM6IndlYiI7fWk6MTthOjM6e3M6MToiYSI7aTo2O3M6MToi
YiI7czo4OiJvcGVyYXRvciI7czoxOiJjIjtzOjM6IndlYiI7fX198nVtaulcpbI=
'/*!*/;
# at 98019
#260731 11:28:34 server id 1  end_log_pos 98050 CRC32 0x6580f365 	Xid = 1000
COMMIT/*!*/;
# at 98050
#260731 11:28:36 server id 1  end_log_pos 98129 CRC32 0x6e5dfd52 	Anonymous_GTID	last_committed=39	sequence_number=40	rbr_only=yes	original_committed_timestamp=1785472116960832	immediate_commit_timestamp=1785472116960832	transaction_length=1622
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472116960832 (2026-07-31 11:28:36.960832 SE Asia Standard Time)
# immediate_commit_timestamp=1785472116960832 (2026-07-31 11:28:36.960832 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472116960832*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 98129
#260731 11:28:36 server id 1  end_log_pos 98213 CRC32 0x9cc241fc 	Query	thread_id=55	exec_time=0	error_code=0
SET TIMESTAMP=1785472116/*!*/;
BEGIN
/*!*/;
# at 98213
#260731 11:28:36 server id 1  end_log_pos 98281 CRC32 0x041ce953 	Table_map: `news`.`sessions` mapped to number 83
# at 98281
#260731 11:28:36 server id 1  end_log_pos 99641 CRC32 0x82f7c809 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
dCRsahMBAAAARAAAAOl/AQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4FPpHAQ=
dCRsah8BAAAAUAUAADmFAQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzagAQAAWVRvMU9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TWprNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNkluSnZk
WFJsSWp0ek9qSTFPaUptYVd4aGJXVnVkQzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5Y3pvMk9p
SmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pB
NmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2SW14dloybHVYM2RsWWw4MU9XSmhNelpo
WkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZVFJsTXpBNU9EbGtJanRwT2pFeU8zMD1m
JGxqACgAZGZPWHBNeElKQ29jNUdBQ0UwU2d6YjJFS1lraGtmaVpjOGd3ZEZUSwwAAAAAAAAACTEy
Ny4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVX
ZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkv
NTM3LjM2IAIAAFlUbzJPbnR6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pYzJSUFdFMVBjMWxqT0ZO
WFptaHNaVGxYVm1NeFVqQlNVMk4zWkhwNFNHbDNhMWx4Um5GWFdpSTdjem81T2lKZmNISmxkbWx2
ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qTTZJbWgwZEhCek9pOHZibVYzY3k1MFpYTjBM
MkZrYldsdUlqdHpPalU2SW5KdmRYUmxJanR6T2pNd09pSm1hV3hoYldWdWRDNWhaRzFwYmk1d1lX
ZGxjeTVrWVhOb1ltOWhjbVFpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJ
N1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pNNkluVnliQ0k3WVRvd09udDljem8x
TURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFP
R1ZoTkdVek1EazRPV1FpTzJrNk1USTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8z
TTZOalE2SWpObVptVTRNV00xTldVMk56Y3dNek00TlRCbVlXTmpaR1ZpWTJNMlpHRTRaRE15TUdR
Mk9UazFZVFJqWldKa01qSmxZMk00TURKaVpXUXpabVZqWkdNaU8zMD10JGxqCcj3gg==
'/*!*/;
# at 99641
#260731 11:28:36 server id 1  end_log_pos 99672 CRC32 0x6fd0aa11 	Xid = 1009
COMMIT/*!*/;
# at 99672
#260731 11:28:39 server id 1  end_log_pos 99751 CRC32 0x2a3c2a32 	Anonymous_GTID	last_committed=40	sequence_number=41	rbr_only=yes	original_committed_timestamp=1785472119874515	immediate_commit_timestamp=1785472119874515	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472119874515 (2026-07-31 11:28:39.874515 SE Asia Standard Time)
# immediate_commit_timestamp=1785472119874515 (2026-07-31 11:28:39.874515 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472119874515*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 99751
#260731 11:28:39 server id 1  end_log_pos 99826 CRC32 0x0eaec350 	Query	thread_id=56	exec_time=0	error_code=0
SET TIMESTAMP=1785472119/*!*/;
BEGIN
/*!*/;
# at 99826
#260731 11:28:39 server id 1  end_log_pos 99885 CRC32 0x4effd1fa 	Table_map: `news`.`cache` mapped to number 88
# at 99885
#260731 11:28:39 server id 1  end_log_pos 100083 CRC32 0x8003a6c1 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
dyRsahMBAAAAOwAAAC2GAQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4PrR
/04=
dyRsah8BAAAAxgAAAPOGAQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaToxO6EkbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaToyO7MkbGrBpgOA
'/*!*/;
# at 100083
#260731 11:28:39 server id 1  end_log_pos 100114 CRC32 0x1f9f3c2e 	Xid = 1030
COMMIT/*!*/;
# at 100114
#260731 11:28:39 server id 1  end_log_pos 100193 CRC32 0x1bf8ddc8 	Anonymous_GTID	last_committed=41	sequence_number=42	rbr_only=yes	original_committed_timestamp=1785472119877177	immediate_commit_timestamp=1785472119877177	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472119877177 (2026-07-31 11:28:39.877177 SE Asia Standard Time)
# immediate_commit_timestamp=1785472119877177 (2026-07-31 11:28:39.877177 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472119877177*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 100193
#260731 11:28:39 server id 1  end_log_pos 100268 CRC32 0x790392ca 	Query	thread_id=57	exec_time=0	error_code=0
SET TIMESTAMP=1785472119/*!*/;
BEGIN
/*!*/;
# at 100268
#260731 11:28:39 server id 1  end_log_pos 100327 CRC32 0xe31b94b9 	Table_map: `news`.`cache` mapped to number 88
# at 100327
#260731 11:28:39 server id 1  end_log_pos 100525 CRC32 0x13245b83 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
dyRsahMBAAAAOwAAAOeHAQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4LmU
G+M=
dyRsah8BAAAAxgAAAK2IAQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaToyO7MkbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaTozO7MkbGqDWyQT
'/*!*/;
# at 100525
#260731 11:28:39 server id 1  end_log_pos 100556 CRC32 0x84e98351 	Xid = 1038
COMMIT/*!*/;
# at 100556
#260731 11:28:41 server id 1  end_log_pos 100635 CRC32 0x5e83e622 	Anonymous_GTID	last_committed=42	sequence_number=43	rbr_only=yes	original_committed_timestamp=1785472121116990	immediate_commit_timestamp=1785472121116990	transaction_length=1750
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472121116990 (2026-07-31 11:28:41.116990 SE Asia Standard Time)
# immediate_commit_timestamp=1785472121116990 (2026-07-31 11:28:41.116990 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472121116990*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 100635
#260731 11:28:41 server id 1  end_log_pos 100719 CRC32 0x82ae2b30 	Query	thread_id=57	exec_time=0	error_code=0
SET TIMESTAMP=1785472121/*!*/;
BEGIN
/*!*/;
# at 100719
#260731 11:28:41 server id 1  end_log_pos 100787 CRC32 0x5c1cb64c 	Table_map: `news`.`sessions` mapped to number 83
# at 100787
#260731 11:28:41 server id 1  end_log_pos 102275 CRC32 0x11855065 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
eSRsahMBAAAARAAAALOJAQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4Ey2HFw=
eSRsah8BAAAA0AUAAIOPAQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgAgAAWVRvMk9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TWpNNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpP
ak13T2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pZNkls
OW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURw
N2ZYMXpPak02SW5WeWJDSTdZVG93T250OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZr
WkdNeVlqSm1PVFF3TVRVNE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRJN2N6b3hO
em9pY0dGemMzZHZjbVJmYUdGemFGOTNaV0lpTzNNNk5qUTZJak5tWm1VNE1XTTFOV1UyTnpjd016
TTROVEJtWVdOalpHVmlZMk0yWkdFNFpETXlNR1EyT1RrMVlUUmpaV0prTWpKbFkyTTRNREppWldR
elptVmpaR01pTzMwPXQkbGoAKABkZk9YcE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dk
RlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42
NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUw
LjAuMC4wIFNhZmFyaS81MzcuMzYgAgAAWVRvMk9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2lj
MlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0dsM2ExbHhSbkZYV2lJN2N6
bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpNNkltaDBkSEJ6T2k4
dmJtVjNjeTUwWlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpPak13T2lKbWFXeGhiV1Z1
ZEM1aFpHMXBiaTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lP
bnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURwN2ZYMXpPak02SW5WeWJD
STdZVG93T250OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZrWkdNeVlqSm1PVFF3TVRV
NE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRJN2N6b3hOem9pY0dGemMzZHZjbVJm
YUdGemFGOTNaV0lpTzNNNk5qUTZJak5tWm1VNE1XTTFOV1UyTnpjd016TTROVEJtWVdOalpHVmlZ
Mk0yWkdFNFpETXlNR1EyT1RrMVlUUmpaV0prTWpKbFkyTTRNREppWldRelptVmpaR01pTzMwPXkk
bGplUIUR
'/*!*/;
# at 102275
#260731 11:28:41 server id 1  end_log_pos 102306 CRC32 0x0d2a89f4 	Xid = 1083
COMMIT/*!*/;
# at 102306
#260731 11:28:46 server id 1  end_log_pos 102385 CRC32 0xf854bf45 	Anonymous_GTID	last_committed=43	sequence_number=44	rbr_only=yes	original_committed_timestamp=1785472126758771	immediate_commit_timestamp=1785472126758771	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472126758771 (2026-07-31 11:28:46.758771 SE Asia Standard Time)
# immediate_commit_timestamp=1785472126758771 (2026-07-31 11:28:46.758771 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472126758771*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 102385
#260731 11:28:46 server id 1  end_log_pos 102460 CRC32 0x7653c684 	Query	thread_id=59	exec_time=0	error_code=0
SET TIMESTAMP=1785472126/*!*/;
BEGIN
/*!*/;
# at 102460
#260731 11:28:46 server id 1  end_log_pos 102519 CRC32 0x2ff55aca 	Table_map: `news`.`cache` mapped to number 88
# at 102519
#260731 11:28:46 server id 1  end_log_pos 102717 CRC32 0xcaddb86b 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
fiRsahMBAAAAOwAAAHeQAQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Mpa
9S8=
fiRsah8BAAAAxgAAAD2RAQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaTozO7MkbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaTo0O7okbGpruN3K
'/*!*/;
# at 102717
#260731 11:28:46 server id 1  end_log_pos 102748 CRC32 0x79f084d2 	Xid = 1122
COMMIT/*!*/;
# at 102748
#260731 11:28:46 server id 1  end_log_pos 102827 CRC32 0x69e16ba7 	Anonymous_GTID	last_committed=44	sequence_number=45	rbr_only=yes	original_committed_timestamp=1785472126883446	immediate_commit_timestamp=1785472126883446	transaction_length=1750
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472126883446 (2026-07-31 11:28:46.883446 SE Asia Standard Time)
# immediate_commit_timestamp=1785472126883446 (2026-07-31 11:28:46.883446 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472126883446*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 102827
#260731 11:28:46 server id 1  end_log_pos 102911 CRC32 0x3acfe20a 	Query	thread_id=59	exec_time=0	error_code=0
SET TIMESTAMP=1785472126/*!*/;
BEGIN
/*!*/;
# at 102911
#260731 11:28:46 server id 1  end_log_pos 102979 CRC32 0x02b9341d 	Table_map: `news`.`sessions` mapped to number 83
# at 102979
#260731 11:28:46 server id 1  end_log_pos 104467 CRC32 0x62f62f1a 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
fiRsahMBAAAARAAAAEOSAQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4B00uQI=
fiRsah8BAAAA0AUAABOYAQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgAgAAWVRvMk9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TWpNNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpP
ak13T2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pZNkls
OW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURw
N2ZYMXpPak02SW5WeWJDSTdZVG93T250OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZr
WkdNeVlqSm1PVFF3TVRVNE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRJN2N6b3hO
em9pY0dGemMzZHZjbVJmYUdGemFGOTNaV0lpTzNNNk5qUTZJak5tWm1VNE1XTTFOV1UyTnpjd016
TTROVEJtWVdOalpHVmlZMk0yWkdFNFpETXlNR1EyT1RrMVlUUmpaV0prTWpKbFkyTTRNREppWldR
elptVmpaR01pTzMwPXkkbGoAKABkZk9YcE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dk
RlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42
NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUw
LjAuMC4wIFNhZmFyaS81MzcuMzYgAgAAWVRvMk9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2lj
MlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0dsM2ExbHhSbkZYV2lJN2N6
bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpNNkltaDBkSEJ6T2k4
dmJtVjNjeTUwWlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpPak13T2lKbWFXeGhiV1Z1
ZEM1aFpHMXBiaTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lP
bnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURwN2ZYMXpPak02SW5WeWJD
STdZVG93T250OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZrWkdNeVlqSm1PVFF3TVRV
NE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRJN2N6b3hOem9pY0dGemMzZHZjbVJm
YUdGemFGOTNaV0lpTzNNNk5qUTZJak5tWm1VNE1XTTFOV1UyTnpjd016TTROVEJtWVdOalpHVmlZ
Mk0yWkdFNFpETXlNR1EyT1RrMVlUUmpaV0prTWpKbFkyTTRNREppWldRelptVmpaR01pTzMwPX4k
bGoaL/Zi
'/*!*/;
# at 104467
#260731 11:28:46 server id 1  end_log_pos 104498 CRC32 0xbeb97f08 	Xid = 1158
COMMIT/*!*/;
# at 104498
#260731 11:28:51 server id 1  end_log_pos 104577 CRC32 0x0547314e 	Anonymous_GTID	last_committed=45	sequence_number=46	rbr_only=yes	original_committed_timestamp=1785472131634254	immediate_commit_timestamp=1785472131634254	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472131634254 (2026-07-31 11:28:51.634254 SE Asia Standard Time)
# immediate_commit_timestamp=1785472131634254 (2026-07-31 11:28:51.634254 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472131634254*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 104577
#260731 11:28:51 server id 1  end_log_pos 104652 CRC32 0x418eab98 	Query	thread_id=60	exec_time=0	error_code=0
SET TIMESTAMP=1785472131/*!*/;
BEGIN
/*!*/;
# at 104652
#260731 11:28:51 server id 1  end_log_pos 104711 CRC32 0xc983d82f 	Table_map: `news`.`cache` mapped to number 88
# at 104711
#260731 11:28:51 server id 1  end_log_pos 104909 CRC32 0xe7f2ea50 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
gyRsahMBAAAAOwAAAAeZAQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4C/Y
g8k=
gyRsah8BAAAAxgAAAM2ZAQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaTo0O7okbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaTo1O78kbGpQ6vLn
'/*!*/;
# at 104909
#260731 11:28:51 server id 1  end_log_pos 104940 CRC32 0xedbf41b5 	Xid = 1173
COMMIT/*!*/;
# at 104940
#260731 11:28:51 server id 1  end_log_pos 105019 CRC32 0xee9085a4 	Anonymous_GTID	last_committed=46	sequence_number=47	rbr_only=yes	original_committed_timestamp=1785472131716362	immediate_commit_timestamp=1785472131716362	transaction_length=1750
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472131716362 (2026-07-31 11:28:51.716362 SE Asia Standard Time)
# immediate_commit_timestamp=1785472131716362 (2026-07-31 11:28:51.716362 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472131716362*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 105019
#260731 11:28:51 server id 1  end_log_pos 105103 CRC32 0xfbc8111b 	Query	thread_id=60	exec_time=0	error_code=0
SET TIMESTAMP=1785472131/*!*/;
BEGIN
/*!*/;
# at 105103
#260731 11:28:51 server id 1  end_log_pos 105171 CRC32 0x7b0a7da3 	Table_map: `news`.`sessions` mapped to number 83
# at 105171
#260731 11:28:51 server id 1  end_log_pos 106659 CRC32 0xbc475f0c 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
gyRsahMBAAAARAAAANOaAQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4KN9Cns=
gyRsah8BAAAA0AUAAKOgAQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgAgAAWVRvMk9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TWpNNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpP
ak13T2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pZNkls
OW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURw
N2ZYMXpPak02SW5WeWJDSTdZVG93T250OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZr
WkdNeVlqSm1PVFF3TVRVNE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRJN2N6b3hO
em9pY0dGemMzZHZjbVJmYUdGemFGOTNaV0lpTzNNNk5qUTZJak5tWm1VNE1XTTFOV1UyTnpjd016
TTROVEJtWVdOalpHVmlZMk0yWkdFNFpETXlNR1EyT1RrMVlUUmpaV0prTWpKbFkyTTRNREppWldR
elptVmpaR01pTzMwPX4kbGoAKABkZk9YcE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dk
RlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42
NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUw
LjAuMC4wIFNhZmFyaS81MzcuMzYgAgAAWVRvMk9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2lj
MlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0dsM2ExbHhSbkZYV2lJN2N6
bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpNNkltaDBkSEJ6T2k4
dmJtVjNjeTUwWlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpPak13T2lKbWFXeGhiV1Z1
ZEM1aFpHMXBiaTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lP
bnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURwN2ZYMXpPak02SW5WeWJD
STdZVG93T250OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZrWkdNeVlqSm1PVFF3TVRV
NE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRJN2N6b3hOem9pY0dGemMzZHZjbVJm
YUdGemFGOTNaV0lpTzNNNk5qUTZJak5tWm1VNE1XTTFOV1UyTnpjd016TTROVEJtWVdOalpHVmlZ
Mk0yWkdFNFpETXlNR1EyT1RrMVlUUmpaV0prTWpKbFkyTTRNREppWldRelptVmpaR01pTzMwPYMk
bGoMX0e8
'/*!*/;
# at 106659
#260731 11:28:51 server id 1  end_log_pos 106690 CRC32 0xc575fc33 	Xid = 1209
COMMIT/*!*/;
# at 106690
#260731 11:28:56 server id 1  end_log_pos 106769 CRC32 0x0f755ad1 	Anonymous_GTID	last_committed=47	sequence_number=48	rbr_only=yes	original_committed_timestamp=1785472136618270	immediate_commit_timestamp=1785472136618270	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472136618270 (2026-07-31 11:28:56.618270 SE Asia Standard Time)
# immediate_commit_timestamp=1785472136618270 (2026-07-31 11:28:56.618270 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472136618270*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 106769
#260731 11:28:56 server id 1  end_log_pos 106844 CRC32 0xae997e2a 	Query	thread_id=61	exec_time=0	error_code=0
SET TIMESTAMP=1785472136/*!*/;
BEGIN
/*!*/;
# at 106844
#260731 11:28:56 server id 1  end_log_pos 106903 CRC32 0x2c0565e4 	Table_map: `news`.`cache` mapped to number 88
# at 106903
#260731 11:28:56 server id 1  end_log_pos 107101 CRC32 0x48e41e41 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
iCRsahMBAAAAOwAAAJehAQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4ORl
BSw=
iCRsah8BAAAAxgAAAF2iAQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaTo1O78kbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaTo2O8QkbGpBHuRI
'/*!*/;
# at 107101
#260731 11:28:56 server id 1  end_log_pos 107132 CRC32 0x340ff7e9 	Xid = 1233
COMMIT/*!*/;
# at 107132
#260731 11:28:56 server id 1  end_log_pos 107211 CRC32 0xdcd51ac4 	Anonymous_GTID	last_committed=48	sequence_number=49	rbr_only=yes	original_committed_timestamp=1785472136705585	immediate_commit_timestamp=1785472136705585	transaction_length=1750
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472136705585 (2026-07-31 11:28:56.705585 SE Asia Standard Time)
# immediate_commit_timestamp=1785472136705585 (2026-07-31 11:28:56.705585 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472136705585*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 107211
#260731 11:28:56 server id 1  end_log_pos 107295 CRC32 0x96cc8a6f 	Query	thread_id=61	exec_time=0	error_code=0
SET TIMESTAMP=1785472136/*!*/;
BEGIN
/*!*/;
# at 107295
#260731 11:28:56 server id 1  end_log_pos 107363 CRC32 0x0efd6cbe 	Table_map: `news`.`sessions` mapped to number 83
# at 107363
#260731 11:28:56 server id 1  end_log_pos 108851 CRC32 0x7066094c 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
iCRsahMBAAAARAAAAGOjAQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4L5s/Q4=
iCRsah8BAAAA0AUAADOpAQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgAgAAWVRvMk9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TWpNNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpP
ak13T2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pZNkls
OW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURw
N2ZYMXpPak02SW5WeWJDSTdZVG93T250OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZr
WkdNeVlqSm1PVFF3TVRVNE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRJN2N6b3hO
em9pY0dGemMzZHZjbVJmYUdGemFGOTNaV0lpTzNNNk5qUTZJak5tWm1VNE1XTTFOV1UyTnpjd016
TTROVEJtWVdOalpHVmlZMk0yWkdFNFpETXlNR1EyT1RrMVlUUmpaV0prTWpKbFkyTTRNREppWldR
elptVmpaR01pTzMwPYMkbGoAKABkZk9YcE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dk
RlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42
NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUw
LjAuMC4wIFNhZmFyaS81MzcuMzYgAgAAWVRvMk9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2lj
MlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0dsM2ExbHhSbkZYV2lJN2N6
bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpNNkltaDBkSEJ6T2k4
dmJtVjNjeTUwWlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpPak13T2lKbWFXeGhiV1Z1
ZEM1aFpHMXBiaTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lP
bnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURwN2ZYMXpPak02SW5WeWJD
STdZVG93T250OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZrWkdNeVlqSm1PVFF3TVRV
NE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRJN2N6b3hOem9pY0dGemMzZHZjbVJm
YUdGemFGOTNaV0lpTzNNNk5qUTZJak5tWm1VNE1XTTFOV1UyTnpjd016TTROVEJtWVdOalpHVmlZ
Mk0yWkdFNFpETXlNR1EyT1RrMVlUUmpaV0prTWpKbFkyTTRNREppWldRelptVmpaR01pTzMwPYgk
bGpMCWZw
'/*!*/;
# at 108851
#260731 11:28:56 server id 1  end_log_pos 108882 CRC32 0xa80509be 	Xid = 1269
COMMIT/*!*/;
# at 108882
#260731 11:28:57 server id 1  end_log_pos 108961 CRC32 0x931f9c62 	Anonymous_GTID	last_committed=49	sequence_number=50	rbr_only=yes	original_committed_timestamp=1785472137165556	immediate_commit_timestamp=1785472137165556	transaction_length=2838
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472137165556 (2026-07-31 11:28:57.165556 SE Asia Standard Time)
# immediate_commit_timestamp=1785472137165556 (2026-07-31 11:28:57.165556 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472137165556*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 108961
#260731 11:28:57 server id 1  end_log_pos 109045 CRC32 0x084b1db7 	Query	thread_id=58	exec_time=0	error_code=0
SET TIMESTAMP=1785472137/*!*/;
BEGIN
/*!*/;
# at 109045
#260731 11:28:57 server id 1  end_log_pos 109113 CRC32 0x153de679 	Table_map: `news`.`sessions` mapped to number 83
# at 109113
#260731 11:28:57 server id 1  end_log_pos 111689 CRC32 0x5c21f52d 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
iSRsahMBAAAARAAAADmqAQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4HnmPRU=
iSRsah8BAAAAEAoAAEm0AQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgAgAAWVRvMk9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TWpNNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpP
ak13T2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pZNkls
OW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURw
N2ZYMXpPak02SW5WeWJDSTdZVG93T250OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZr
WkdNeVlqSm1PVFF3TVRVNE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRJN2N6b3hO
em9pY0dGemMzZHZjbVJmYUdGemFGOTNaV0lpTzNNNk5qUTZJak5tWm1VNE1XTTFOV1UyTnpjd016
TTROVEJtWVdOalpHVmlZMk0yWkdFNFpETXlNR1EyT1RrMVlUUmpaV0prTWpKbFkyTTRNREppWldR
elptVmpaR01pTzMwPYgkbGoAKABkZk9YcE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dk
RlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42
NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUw
LjAuMC4wIFNhZmFyaS81MzcuMzZgBgAAWVRvM09udHpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2lj
MlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0dsM2ExbHhSbkZYV2lJN2N6
bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWprNkltaDBkSEJ6T2k4
dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpJanR6T2pVNkluSnZkWFJsSWp0ek9qTTJPaUpt
YVd4aGJXVnVkQzVoWkcxcGJpNXlaWE52ZFhKalpYTXVkWE5sY25NdWFXNWtaWGdpTzMxek9qWTZJ
bDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1E
cDdmWDF6T2pNNkluVnliQ0k3WVRvd09udDljem8xTURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1G
a1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1FpTzJrNk1USTdjem94
TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpObVptVTRNV00xTldVMk56Y3dN
ek00TlRCbVlXTmpaR1ZpWTJNMlpHRTRaRE15TUdRMk9UazFZVFJqWldKa01qSmxZMk00TURKaVpX
UXpabVZqWkdNaU8zTTZOam9pZEdGaWJHVnpJanRoT2pFNmUzTTZOREE2SWpkbFlqZ3paREV5WkRV
MFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2TkRwN2FUb3dPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJ
bTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJp
STdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14
bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFw
T2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlP
M002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFXd2lPM002T0RvaWFY
TklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5
bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZz
ZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBP
aUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pVNkls
SnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJ
Nk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJ
YVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJP
aUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpGOWhkQ0k3Y3pvMU9p
SnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpv
d08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRp
T2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRpT2pFN2ZYMTlm
UT09iSRsai31IVw=
'/*!*/;
# at 111689
#260731 11:28:57 server id 1  end_log_pos 111720 CRC32 0x1bec5f3b 	Xid = 1273
COMMIT/*!*/;
# at 111720
#260731 11:29:10 server id 1  end_log_pos 111799 CRC32 0x76c6cacf 	Anonymous_GTID	last_committed=50	sequence_number=51	rbr_only=yes	original_committed_timestamp=1785472150448043	immediate_commit_timestamp=1785472150448043	transaction_length=3934
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472150448043 (2026-07-31 11:29:10.448043 SE Asia Standard Time)
# immediate_commit_timestamp=1785472150448043 (2026-07-31 11:29:10.448043 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472150448043*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 111799
#260731 11:29:10 server id 1  end_log_pos 111883 CRC32 0x6b7195f2 	Query	thread_id=62	exec_time=0	error_code=0
SET TIMESTAMP=1785472150/*!*/;
BEGIN
/*!*/;
# at 111883
#260731 11:29:10 server id 1  end_log_pos 111951 CRC32 0x749aa86d 	Table_map: `news`.`sessions` mapped to number 83
# at 111951
#260731 11:29:10 server id 1  end_log_pos 115623 CRC32 0x20e76b22 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
liRsahMBAAAARAAAAE+1AQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4G2omnQ=
liRsah8BAAAAWA4AAKfDAQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZgBgAAWVRvM09udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TWprNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpJanR6T2pVNkluSnZk
WFJsSWp0ek9qTTJPaUptYVd4aGJXVnVkQzVoWkcxcGJpNXlaWE52ZFhKalpYTXVkWE5sY25NdWFX
NWtaWGdpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pv
ek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pNNkluVnliQ0k3WVRvd09udDljem8xTURvaWJHOW5hVzVm
ZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRP
V1FpTzJrNk1USTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpObVpt
VTRNV00xTldVMk56Y3dNek00TlRCbVlXTmpaR1ZpWTJNMlpHRTRaRE15TUdRMk9UazFZVFJqWldK
a01qSmxZMk00TURKaVpXUXpabVZqWkdNaU8zTTZOam9pZEdGaWJHVnpJanRoT2pFNmUzTTZOREE2
SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlP
MkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9p
SnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pv
NE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9p
YVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVa
V1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlq
dHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcx
aGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14
aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpw
YzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBP
aUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5E
b2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhS
bFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpw
YzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlVi
MmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRX
eDBJanRpT2pFN2ZYMTlmUT09iSRsagAoAGRmT1hwTXhJSkNvYzVHQUNFMFNnemIyRUtZa2hrZmla
Yzhnd2RGVEsMAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7
IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9t
ZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmgGAABZVG8zT250ek9qWTZJbDkwYjJ0bGJpSTdjem8w
TURvaWMyUlBXRTFQYzFsak9GTlhabWhzWlRsWFZtTXhVakJTVTJOM1pIcDRTR2wzYTFseFJuRlhX
aUk3Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNemM2SW1oMGRI
QnpPaTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVMM1Z6WlhKekx6RXhMMlZrYVhRaU8zTTZOVG9pY205
MWRHVWlPM002TXpVNkltWnBiR0Z0Wlc1MExtRmtiV2x1TG5KbGMyOTFjbU5sY3k1MWMyVnljeTVs
WkdsMElqdDljem8yT2lKZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZN
em9pYm1WM0lqdGhPakE2ZTMxOWN6b3pPaUoxY213aU8yRTZNRHA3ZlhNNk5UQTZJbXh2WjJsdVgz
ZGxZbDgxT1dKaE16WmhaR1JqTW1JeVpqazBNREUxT0RCbU1ERTBZemRtTlRobFlUUmxNekE1T0Rs
a0lqdHBPakV5TzNNNk1UYzZJbkJoYzNOM2IzSmtYMmhoYzJoZmQyVmlJanR6T2pZME9pSXpabVps
T0RGak5UVmxOamMzTURNek9EVXdabUZqWTJSbFltTmpObVJoT0dRek1qQmtOams1TldFMFkyVmla
REl5WldOak9EQXlZbVZrTTJabFkyUmpJanR6T2pZNkluUmhZbXhsY3lJN1lUb3hPbnR6T2pRd09p
STNaV0k0TTJReE1tUTFOR1U1TXpOak9EWTNZamRsTUdSaU9UTXpOemszT0Y5amIyeDFiVzV6SWp0
aE9qUTZlMms2TUR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9p
Ym1GdFpTSTdjem8wT2lKdVlXMWxJanR6T2pVNklteGhZbVZzSWp0ek9qUTZJazVoYldVaU8zTTZP
RG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNklt
bHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdW
bVlYVnNkQ0k3VGp0OWFUb3hPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3
Y3pvME9pSnVZVzFsSWp0ek9qVTZJbVZ0WVdsc0lqdHpPalU2SW14aFltVnNJanR6T2pVNklrVnRZ
V2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1U
dHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdS
a1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpq
YjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2ljbTlzWlhNdWJtRnRaU0k3Y3pvMU9pSnNZ
V0psYkNJN2N6bzFPaUpTYjJ4bGN5STdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFY
TlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRv
aWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPak03WVRvM09udHpPalE2
SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBa
V1JmWVhRaU8zTTZOVG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFY
TklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5
bloyeGxZV0pzWlNJN1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZz
ZENJN1lqb3hPMzE5ZlgwPZYkbGoia+cg
'/*!*/;
# at 115623
#260731 11:29:10 server id 1  end_log_pos 115654 CRC32 0xb629fc2b 	Xid = 1309
COMMIT/*!*/;
# at 115654
#260731 11:29:13 server id 1  end_log_pos 115733 CRC32 0xf4cab26d 	Anonymous_GTID	last_committed=51	sequence_number=52	rbr_only=yes	original_committed_timestamp=1785472153675927	immediate_commit_timestamp=1785472153675927	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472153675927 (2026-07-31 11:29:13.675927 SE Asia Standard Time)
# immediate_commit_timestamp=1785472153675927 (2026-07-31 11:29:13.675927 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472153675927*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 115733
#260731 11:29:13 server id 1  end_log_pos 115808 CRC32 0x7e4baeed 	Query	thread_id=63	exec_time=0	error_code=0
SET TIMESTAMP=1785472153/*!*/;
BEGIN
/*!*/;
# at 115808
#260731 11:29:13 server id 1  end_log_pos 115867 CRC32 0x58bc884d 	Table_map: `news`.`cache` mapped to number 88
# at 115867
#260731 11:29:13 server id 1  end_log_pos 116065 CRC32 0xd8bc7e39 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
mSRsahMBAAAAOwAAAJvEAQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4E2I
vFg=
mSRsah8BAAAAxgAAAGHFAQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaTo2O8QkbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaTo3O9UkbGo5frzY
'/*!*/;
# at 116065
#260731 11:29:13 server id 1  end_log_pos 116096 CRC32 0xf6875c5e 	Xid = 1324
COMMIT/*!*/;
# at 116096
#260731 11:29:13 server id 1  end_log_pos 116175 CRC32 0x6cae192c 	Anonymous_GTID	last_committed=52	sequence_number=53	rbr_only=yes	original_committed_timestamp=1785472153894371	immediate_commit_timestamp=1785472153894371	transaction_length=4462
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472153894371 (2026-07-31 11:29:13.894371 SE Asia Standard Time)
# immediate_commit_timestamp=1785472153894371 (2026-07-31 11:29:13.894371 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472153894371*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 116175
#260731 11:29:13 server id 1  end_log_pos 116259 CRC32 0x62159cb1 	Query	thread_id=63	exec_time=0	error_code=0
SET TIMESTAMP=1785472153/*!*/;
BEGIN
/*!*/;
# at 116259
#260731 11:29:13 server id 1  end_log_pos 116327 CRC32 0x9c33aec0 	Table_map: `news`.`sessions` mapped to number 83
# at 116327
#260731 11:29:13 server id 1  end_log_pos 120527 CRC32 0xe9c94fb9 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
mSRsahMBAAAARAAAAGfGAQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4MCuM5w=
mSRsah8BAAAAaBAAAM/WAQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZoBgAAWVRvM09udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV4TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYMD2WJGxqACgAZGZPWHBNeElKQ29jNUdBQ0UwU2d6YjJF
S1lraGtmaVpjOGd3ZEZUSwwAAAAAAAAACTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3Mg
TlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNr
bykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2cAgAAFlUbzRPbnR6T2pZNklsOTBiMnRs
YmlJN2N6bzBNRG9pYzJSUFdFMVBjMWxqT0ZOWFptaHNaVGxYVm1NeFVqQlNVMk4zWkhwNFNHbDNh
MWx4Um5GWFdpSTdjem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk16
YzZJbWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwzVnpaWEp6THpFeEwyVmthWFFpTzNN
Nk5Ub2ljbTkxZEdVaU8zTTZNelU2SW1acGJHRnRaVzUwTG1Ga2JXbHVMbkpsYzI5MWNtTmxjeTUx
YzJWeWN5NWxaR2wwSWp0OWN6bzJPaUpmWm14aGMyZ2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZN
RHA3ZlhNNk16b2libVYzSWp0aE9qQTZlMzE5Y3pvek9pSjFjbXdpTzJFNk1EcDdmWE02TlRBNklt
eHZaMmx1WDNkbFlsODFPV0poTXpaaFpHUmpNbUl5WmprME1ERTFPREJtTURFMFl6ZG1OVGhsWVRS
bE16QTVPRGxrSWp0cE9qRXlPM002TVRjNkluQmhjM04zYjNKa1gyaGhjMmhmZDJWaUlqdHpPalkw
T2lJelptWmxPREZqTlRWbE5qYzNNRE16T0RVd1ptRmpZMlJsWW1Oak5tUmhPR1F6TWpCa05qazVO
V0UwWTJWaVpESXlaV05qT0RBeVltVmtNMlpsWTJSaklqdHpPalk2SW5SaFlteGxjeUk3WVRveE9u
dHpPalF3T2lJM1pXSTRNMlF4TW1RMU5HVTVNek5qT0RZM1lqZGxNR1JpT1RNek56azNPRjlqYjJ4
MWJXNXpJanRoT2pRNmUyazZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRp
TzNNNk5Eb2libUZ0WlNJN2N6bzBPaUp1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pRNklrNWhi
V1VpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8z
TTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdS
bGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRveE8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52
YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pVNkltVnRZV2xzSWp0ek9qVTZJbXhoWW1Wc0lqdHpP
alU2SWtWdFlXbHNJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pX
UWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJk
c1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TWp0aE9qYzZlM002TkRvaWRIbHdaU0k3
Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TURvaWNtOXNaWE11Ym1GdFpTSTdj
em8xT2lKc1lXSmxiQ0k3Y3pvMU9pSlNiMnhsY3lJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08z
TTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pB
N2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qTTdZVG8z
T250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1UQTZJ
bU55WldGMFpXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEE2SWtOeVpXRjBaV1FnWVhRaU8z
TTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3dPM002TVRJ
NkltbHpWRzluWjJ4bFlXSnNaU0k3WWpveE8zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1
UkdWbVlYVnNkQ0k3WWpveE8zMTlmWE02T0RvaVptbHNZVzFsYm5RaU8yRTZNVHA3Y3pveU1Ub2lZ
MnhoYVcxbFpGOXViM1JwWm1sallYUnBiMjV6SWp0aE9qRTZlMms2TUR0aE9qRXhPbnR6T2pJNklt
bGtJanR6T2pNMk9pSmhNall6TkRNMU9TMHpOekEzTFRSbVl6RXRZV05pTWkwMk5UUTFPVE13TnpN
eU9ERWlPM002TnpvaVlXTjBhVzl1Y3lJN1lUb3dPbnQ5Y3pvME9pSmliMlI1SWp0ek9qSXlPaUpR
WVhOemQyOXlaRG9nVnpoNWJHNUJKU1J4STJoOElqdHpPalU2SW1OdmJHOXlJanRPTzNNNk9Eb2la
SFZ5WVhScGIyNGlPMms2TVRBd01EQTdjem8wT2lKcFkyOXVJanR6T2pJek9pSm9aWEp2YVdOdmJp
MXZMV05vWldOckxXTnBjbU5zWlNJN2N6bzVPaUpwWTI5dVEyOXNiM0lpTzNNNk56b2ljM1ZqWTJW
emN5STdjem8yT2lKemRHRjBkWE1pTzNNNk56b2ljM1ZqWTJWemN5STdjem8xT2lKMGFYUnNaU0k3
Y3pveE9Eb2lVR0Z6YzNkdmNtUWdSMlZ1WlhKaGRHVmtJanR6T2pRNkluWnBaWGNpTzA0N2N6bzRP
aUoyYVdWM1JHRjBZU0k3WVRvd09udDlmWDE5ZlE9PZkkbGq5T8np
'/*!*/;
# at 120527
#260731 11:29:13 server id 1  end_log_pos 120558 CRC32 0xae88e5df 	Xid = 1354
COMMIT/*!*/;
# at 120558
#260731 11:29:14 server id 1  end_log_pos 120637 CRC32 0xd958fc8d 	Anonymous_GTID	last_committed=53	sequence_number=54	rbr_only=yes	original_committed_timestamp=1785472154326071	immediate_commit_timestamp=1785472154326071	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472154326071 (2026-07-31 11:29:14.326071 SE Asia Standard Time)
# immediate_commit_timestamp=1785472154326071 (2026-07-31 11:29:14.326071 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472154326071*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 120637
#260731 11:29:14 server id 1  end_log_pos 120712 CRC32 0x85dcefc6 	Query	thread_id=64	exec_time=0	error_code=0
SET TIMESTAMP=1785472154/*!*/;
BEGIN
/*!*/;
# at 120712
#260731 11:29:14 server id 1  end_log_pos 120771 CRC32 0xd1742aa6 	Table_map: `news`.`cache` mapped to number 88
# at 120771
#260731 11:29:14 server id 1  end_log_pos 120969 CRC32 0xdb4db050 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
miRsahMBAAAAOwAAAMPXAQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4KYq
dNE=
miRsah8BAAAAxgAAAInYAQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaTo3O9UkbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaTo4O9YkbGpQsE3b
'/*!*/;
# at 120969
#260731 11:29:14 server id 1  end_log_pos 121000 CRC32 0xacb54e23 	Xid = 1369
COMMIT/*!*/;
# at 121000
#260731 11:29:14 server id 1  end_log_pos 121079 CRC32 0xf2cd1811 	Anonymous_GTID	last_committed=54	sequence_number=55	rbr_only=yes	original_committed_timestamp=1785472154381371	immediate_commit_timestamp=1785472154381371	transaction_length=4490
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472154381371 (2026-07-31 11:29:14.381371 SE Asia Standard Time)
# immediate_commit_timestamp=1785472154381371 (2026-07-31 11:29:14.381371 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472154381371*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 121079
#260731 11:29:14 server id 1  end_log_pos 121163 CRC32 0xc5f9667d 	Query	thread_id=64	exec_time=0	error_code=0
SET TIMESTAMP=1785472154/*!*/;
BEGIN
/*!*/;
# at 121163
#260731 11:29:14 server id 1  end_log_pos 121231 CRC32 0x1c307f27 	Table_map: `news`.`sessions` mapped to number 83
# at 121231
#260731 11:29:14 server id 1  end_log_pos 125459 CRC32 0xa8bc6857 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
miRsahMBAAAARAAAAI/ZAQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4Cd/MBw=
miRsah8BAAAAhBAAABPqAQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZwCAAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV4TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1UcDdjem95TVRv
aVkyeGhhVzFsWkY5dWIzUnBabWxqWVhScGIyNXpJanRoT2pFNmUyazZNRHRoT2pFeE9udHpPakk2
SW1sa0lqdHpPak0yT2lKaE1qWXpORE0xT1Mwek56QTNMVFJtWXpFdFlXTmlNaTAyTlRRMU9UTXdO
ek15T0RFaU8zTTZOem9pWVdOMGFXOXVjeUk3WVRvd09udDljem8wT2lKaWIyUjVJanR6T2pJeU9p
SlFZWE56ZDI5eVpEb2dWemg1Ykc1QkpTUnhJMmg4SWp0ek9qVTZJbU52Ykc5eUlqdE9PM002T0Rv
aVpIVnlZWFJwYjI0aU8yazZNVEF3TURBN2N6bzBPaUpwWTI5dUlqdHpPakl6T2lKb1pYSnZhV052
YmkxdkxXTm9aV05yTFdOcGNtTnNaU0k3Y3pvNU9pSnBZMjl1UTI5c2IzSWlPM002TnpvaWMzVmpZ
MlZ6Y3lJN2N6bzJPaUp6ZEdGMGRYTWlPM002TnpvaWMzVmpZMlZ6Y3lJN2N6bzFPaUowYVhSc1pT
STdjem94T0RvaVVHRnpjM2R2Y21RZ1IyVnVaWEpoZEdWa0lqdHpPalE2SW5acFpYY2lPMDQ3Y3pv
NE9pSjJhV1YzUkdGMFlTSTdZVG93T250OWZYMTlmUT09mSRsagAoAGRmT1hwTXhJSkNvYzVHQUNF
MFNnemIyRUtZa2hrZmlaYzhnd2RGVEsMAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChX
aW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxp
a2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNoQGAABZVG80T250ek9qWTZJ
bDkwYjJ0bGJpSTdjem8wTURvaWMyUlBXRTFQYzFsak9GTlhabWhzWlRsWFZtTXhVakJTVTJOM1pI
cDRTR2wzYTFseFJuRlhXaUk3Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pPaUoxY213
aU8zTTZNemM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVMM1Z6WlhKekx6RXhMMlZr
YVhRaU8zTTZOVG9pY205MWRHVWlPM002TXpVNkltWnBiR0Z0Wlc1MExtRmtiV2x1TG5KbGMyOTFj
bU5sY3k1MWMyVnljeTVsWkdsMElqdDljem8yT2lKZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJH
UWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6b3pPaUoxY213aU8yRTZNRHA3ZlhN
Nk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16WmhaR1JqTW1JeVpqazBNREUxT0RCbU1ERTBZemRt
TlRobFlUUmxNekE1T0Rsa0lqdHBPakV5TzNNNk1UYzZJbkJoYzNOM2IzSmtYMmhoYzJoZmQyVmlJ
anR6T2pZME9pSXpabVpsT0RGak5UVmxOamMzTURNek9EVXdabUZqWTJSbFltTmpObVJoT0dRek1q
QmtOams1TldFMFkyVmlaREl5WldOak9EQXlZbVZrTTJabFkyUmpJanR6T2pZNkluUmhZbXhsY3lJ
N1lUb3hPbnR6T2pRd09pSTNaV0k0TTJReE1tUTFOR1U1TXpOak9EWTNZamRsTUdSaU9UTXpOemsz
T0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpi
MngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKdVlXMWxJanR6T2pVNklteGhZbVZzSWp0ek9q
UTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJ
N1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhs
WkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3hPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpP
alk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbVZ0WVdsc0lqdHpPalU2SW14aFlt
VnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1qdGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2ljbTlzWlhNdWJt
RnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpTYjJ4bGN5STdjem80T2lKcGMwaHBaR1JsYmlJ
N1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhs
SWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBP
ak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8z
TTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldR
Z1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlhNNk9Eb2labWxzWVcxbGJuUWlPMkU2TURwN2ZY
MD2aJGxqV2i8qA==
'/*!*/;
# at 125459
#260731 11:29:14 server id 1  end_log_pos 125490 CRC32 0x2e045960 	Xid = 1381
COMMIT/*!*/;
# at 125490
#260731 11:29:18 server id 1  end_log_pos 125569 CRC32 0x0c73e853 	Anonymous_GTID	last_committed=55	sequence_number=56	rbr_only=yes	original_committed_timestamp=1785472158169760	immediate_commit_timestamp=1785472158169760	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472158169760 (2026-07-31 11:29:18.169760 SE Asia Standard Time)
# immediate_commit_timestamp=1785472158169760 (2026-07-31 11:29:18.169760 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472158169760*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 125569
#260731 11:29:18 server id 1  end_log_pos 125644 CRC32 0x896180aa 	Query	thread_id=65	exec_time=0	error_code=0
SET TIMESTAMP=1785472158/*!*/;
BEGIN
/*!*/;
# at 125644
#260731 11:29:18 server id 1  end_log_pos 125703 CRC32 0xb1b28b77 	Table_map: `news`.`cache` mapped to number 88
# at 125703
#260731 11:29:18 server id 1  end_log_pos 125901 CRC32 0x6a6fe6af 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
niRsahMBAAAAOwAAAAfrAQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4HeL
srE=
niRsah8BAAAAxgAAAM3rAQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaTo4O9YkbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaTo5O9okbGqv5m9q
'/*!*/;
# at 125901
#260731 11:29:18 server id 1  end_log_pos 125932 CRC32 0x4d21abea 	Xid = 1396
COMMIT/*!*/;
# at 125932
#260731 11:29:18 server id 1  end_log_pos 126011 CRC32 0x29445eca 	Anonymous_GTID	last_committed=56	sequence_number=57	rbr_only=yes	original_committed_timestamp=1785472158725031	immediate_commit_timestamp=1785472158725031	transaction_length=590
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472158725031 (2026-07-31 11:29:18.725031 SE Asia Standard Time)
# immediate_commit_timestamp=1785472158725031 (2026-07-31 11:29:18.725031 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472158725031*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 126011
#260731 11:29:18 server id 1  end_log_pos 126105 CRC32 0x795dad6b 	Query	thread_id=65	exec_time=0	error_code=0
SET TIMESTAMP=1785472158/*!*/;
BEGIN
/*!*/;
# at 126105
#260731 11:29:18 server id 1  end_log_pos 126181 CRC32 0xbefae8b5 	Table_map: `news`.`users` mapped to number 110
# at 126181
#260731 11:29:18 server id 1  end_log_pos 126491 CRC32 0x2c635a2a 	Update_rows: table id 110 flags: STMT_END_F

BINLOG '
niRsahMBAAAATAAAAOXsAQAAAG4AAAAAAAMABG5ld3MABXVzZXJzAAkIDw8RDw8PEREN/AP8AwD8
A/wDkAEAAOgBAQGAAgHgtej6vg==
niRsah8BAAAANgEAABvuAQAAAG4AAAAAAAEAAgAJ/////2gACwAAAAAAAAAdAE9wZXJhdG9yIFdp
c2F0YSBEaXNwYXJidWRwb3JhFwBvcGVyYXRvcndpc2F0YUBtYWlsLmNvbTwAJDJ5JDEyJDhwSk1W
eHlzVDAucW80Z3ZGWkNVaE9vUG8wN216RXpveElBUzVYcEMvNUNsbTYyUURpeHNhamu4lGpruUFo
AAsAAAAAAAAAHQBPcGVyYXRvciBXaXNhdGEgRGlzcGFyYnVkcG9yYRcAb3BlcmF0b3J3aXNhdGFA
bWFpbC5jb208ACQyeSQxMiRYLmJCMDhDbmE4YUNmVUlJanFQNWR1WGJXdkRaOXBqc3BNYmQ3dHNF
ZEhvdUkyUEZzR0Q4cWpruJRqa8IuKlpjLA==
'/*!*/;
# at 126491
#260731 11:29:18 server id 1  end_log_pos 126522 CRC32 0xd8cb471e 	Xid = 1432
COMMIT/*!*/;
# at 126522
#260731 11:29:18 server id 1  end_log_pos 126601 CRC32 0xb70e5824 	Anonymous_GTID	last_committed=57	sequence_number=58	rbr_only=yes	original_committed_timestamp=1785472158755034	immediate_commit_timestamp=1785472158755034	transaction_length=4446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472158755034 (2026-07-31 11:29:18.755034 SE Asia Standard Time)
# immediate_commit_timestamp=1785472158755034 (2026-07-31 11:29:18.755034 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472158755034*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 126601
#260731 11:29:18 server id 1  end_log_pos 126685 CRC32 0xc98b2aa0 	Query	thread_id=65	exec_time=0	error_code=0
SET TIMESTAMP=1785472158/*!*/;
BEGIN
/*!*/;
# at 126685
#260731 11:29:18 server id 1  end_log_pos 126753 CRC32 0x2359e1a9 	Table_map: `news`.`sessions` mapped to number 83
# at 126753
#260731 11:29:18 server id 1  end_log_pos 130937 CRC32 0x4a95712b 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
niRsahMBAAAARAAAACHvAQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4KnhWSM=
niRsah8BAAAAWBAAAHn/AQAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaEBgAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV4TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1EcDdmWDA9miRs
agAoAGRmT1hwTXhJSkNvYzVHQUNFMFNnemIyRUtZa2hrZmlaYzhnd2RGVEsMAAAAAAAAAAkxMjcu
MC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2Vi
S2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUz
Ny4zNkQIAABZVG80T250ek9qWTZJbDkwYjJ0bGJpSTdjem8wTURvaWMyUlBXRTFQYzFsak9GTlha
bWhzWlRsWFZtTXhVakJTVTJOM1pIcDRTR2wzYTFseFJuRlhXaUk3Y3pvNU9pSmZjSEpsZG1sdmRY
TWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNemM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJG
a2JXbHVMM1Z6WlhKekx6RXhMMlZrYVhRaU8zTTZOVG9pY205MWRHVWlPM002TXpVNkltWnBiR0Z0
Wlc1MExtRmtiV2x1TG5KbGMyOTFjbU5sY3k1MWMyVnljeTVsWkdsMElqdDljem8yT2lKZlpteGhj
MmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6
b3pPaUoxY213aU8yRTZNRHA3ZlhNNk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16WmhaR1JqTW1J
eVpqazBNREUxT0RCbU1ERTBZemRtTlRobFlUUmxNekE1T0Rsa0lqdHBPakV5TzNNNk1UYzZJbkJo
YzNOM2IzSmtYMmhoYzJoZmQyVmlJanR6T2pZME9pSXpabVpsT0RGak5UVmxOamMzTURNek9EVXda
bUZqWTJSbFltTmpObVJoT0dRek1qQmtOams1TldFMFkyVmlaREl5WldOak9EQXlZbVZrTTJabFky
UmpJanR6T2pZNkluUmhZbXhsY3lJN1lUb3hPbnR6T2pRd09pSTNaV0k0TTJReE1tUTFOR1U1TXpO
ak9EWTNZamRsTUdSaU9UTXpOemszT0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0aE9qYzZlM002
TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKdVlXMWxJ
anR6T2pVNklteGhZbVZzSWp0ek9qUTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3hPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qVTZJ
bVZ0WVdsc0lqdHpPalU2SW14aFltVnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJbWx6U0dsa1pH
VnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldG
aWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3
ZldrNk1qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRa
U0k3Y3pveE1Eb2ljbTlzWlhNdWJtRnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpTYjJ4bGN5
STdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pv
eE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1
UW5sRVpXWmhkV3gwSWp0T08zMXBPak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNk
VzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpX
d2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2pr
NkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002
TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlhNNk9Eb2la
bWxzWVcxbGJuUWlPMkU2TVRwN2N6b3hNem9pYm05MGFXWnBZMkYwYVc5dWN5STdZVG94T250cE9q
QTdZVG94TVRwN2N6b3lPaUpwWkNJN2N6b3pOam9pWVRJMk16UXpOakF0WWpnM09DMDBZbUUwTFRo
aU1tWXRPVGN3TW1Fd05tSXhZVFU0SWp0ek9qYzZJbUZqZEdsdmJuTWlPMkU2TURwN2ZYTTZORG9p
WW05a2VTSTdUanR6T2pVNkltTnZiRzl5SWp0T08zTTZPRG9pWkhWeVlYUnBiMjRpTzJrNk5qQXdN
RHR6T2pRNkltbGpiMjRpTzNNNk1qTTZJbWhsY205cFkyOXVMVzh0WTJobFkyc3RZMmx5WTJ4bElq
dHpPams2SW1samIyNURiMnh2Y2lJN2N6bzNPaUp6ZFdOalpYTnpJanR6T2pZNkluTjBZWFIxY3lJ
N2N6bzNPaUp6ZFdOalpYTnpJanR6T2pVNkluUnBkR3hsSWp0ek9qSXlPaUpFWVhSaElHSmxjbWho
YzJsc0lHUnBjMmx0Y0dGdUlqdHpPalE2SW5acFpYY2lPMDQ3Y3pvNE9pSjJhV1YzUkdGMFlTSTdZ
VG93T250OWZYMTlmUT09niRsaitxlUo=
'/*!*/;
# at 130937
#260731 11:29:18 server id 1  end_log_pos 130968 CRC32 0x90ac6c35 	Xid = 1435
COMMIT/*!*/;
# at 130968
#260731 11:29:19 server id 1  end_log_pos 131047 CRC32 0x41666883 	Anonymous_GTID	last_committed=58	sequence_number=59	rbr_only=yes	original_committed_timestamp=1785472159615784	immediate_commit_timestamp=1785472159615784	transaction_length=4438
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472159615784 (2026-07-31 11:29:19.615784 SE Asia Standard Time)
# immediate_commit_timestamp=1785472159615784 (2026-07-31 11:29:19.615784 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472159615784*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 131047
#260731 11:29:19 server id 1  end_log_pos 131131 CRC32 0x32e3d670 	Query	thread_id=66	exec_time=0	error_code=0
SET TIMESTAMP=1785472159/*!*/;
BEGIN
/*!*/;
# at 131131
#260731 11:29:19 server id 1  end_log_pos 131199 CRC32 0x0ca2bf17 	Table_map: `news`.`sessions` mapped to number 83
# at 131199
#260731 11:29:19 server id 1  end_log_pos 135375 CRC32 0xe06e79a5 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
nyRsahMBAAAARAAAAH8AAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4Be/ogw=
nyRsah8BAAAAUBAAAM8QAgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZECAAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV4TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1UcDdjem94TXpv
aWJtOTBhV1pwWTJGMGFXOXVjeUk3WVRveE9udHBPakE3WVRveE1UcDdjem95T2lKcFpDSTdjem96
TmpvaVlUSTJNelF6TmpBdFlqZzNPQzAwWW1FMExUaGlNbVl0T1Rjd01tRXdObUl4WVRVNElqdHpP
amM2SW1GamRHbHZibk1pTzJFNk1EcDdmWE02TkRvaVltOWtlU0k3VGp0ek9qVTZJbU52Ykc5eUlq
dE9PM002T0RvaVpIVnlZWFJwYjI0aU8yazZOakF3TUR0ek9qUTZJbWxqYjI0aU8zTTZNak02SW1o
bGNtOXBZMjl1TFc4dFkyaGxZMnN0WTJseVkyeGxJanR6T2prNkltbGpiMjVEYjJ4dmNpSTdjem8z
T2lKemRXTmpaWE56SWp0ek9qWTZJbk4wWVhSMWN5STdjem8zT2lKemRXTmpaWE56SWp0ek9qVTZJ
blJwZEd4bElqdHpPakl5T2lKRVlYUmhJR0psY21oaGMybHNJR1JwYzJsdGNHRnVJanR6T2pRNklu
WnBaWGNpTzA0N2N6bzRPaUoyYVdWM1JHRjBZU0k3WVRvd09udDlmWDE5ZlE9PZ4kbGoAKABkZk9Y
cE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBN
b3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81Mzcu
MzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZ8BgAA
WVRvNE9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhW
bU14VWpCU1UyTjNaSHA0U0dsM2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1q
cDdjem96T2lKMWNtd2lPM002TWprNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNW
elpYSnpJanR6T2pVNkluSnZkWFJsSWp0ek9qTTJPaUptYVd4aGJXVnVkQzVoWkcxcGJpNXlaWE52
ZFhKalpYTXVkWE5sY25NdWFXNWtaWGdpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJ
bTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pNNkluVnliQ0k3WVRvd09u
dDljem8xTURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRS
ak4yWTFPR1ZoTkdVek1EazRPV1FpTzJrNk1USTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkz
WldJaU8zTTZOalE2SWpObVptVTRNV00xTldVMk56Y3dNek00TlRCbVlXTmpaR1ZpWTJNMlpHRTRa
RE15TUdRMk9UazFZVFJqWldKa01qSmxZMk00TURKaVpXUXpabVZqWkdNaU8zTTZOam9pZEdGaWJH
VnpJanRoT2pFNmUzTTZOREE2SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpN
M09UYzRYMk52YkhWdGJuTWlPMkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2
SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lP
M002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJH
VmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJk
bmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1Vp
TzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2li
R0ZpWld3aU8zTTZOVG9pUlcxaGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNklt
bHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpR
NkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8w
T2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxj
eTV1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pH
VnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldG
aWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3
ZldrNk16dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRa
U0k3Y3pveE1Eb2lZM0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlY
UmxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0
aU9qQTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1Zr
U0dsa1pHVnVRbmxFWldaaGRXeDBJanRpT2pFN2ZYMTljem80T2lKbWFXeGhiV1Z1ZENJN1lUb3dP
bnQ5ZlE9PZ8kbGqleW7g
'/*!*/;
# at 135375
#260731 11:29:19 server id 1  end_log_pos 135406 CRC32 0xe1491c44 	Xid = 1468
COMMIT/*!*/;
# at 135406
#260731 11:29:25 server id 1  end_log_pos 135485 CRC32 0x63d0d753 	Anonymous_GTID	last_committed=59	sequence_number=60	rbr_only=yes	original_committed_timestamp=1785472165202929	immediate_commit_timestamp=1785472165202929	transaction_length=3990
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472165202929 (2026-07-31 11:29:25.202929 SE Asia Standard Time)
# immediate_commit_timestamp=1785472165202929 (2026-07-31 11:29:25.202929 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472165202929*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 135485
#260731 11:29:25 server id 1  end_log_pos 135569 CRC32 0xa1b1f054 	Query	thread_id=67	exec_time=0	error_code=0
SET TIMESTAMP=1785472165/*!*/;
BEGIN
/*!*/;
# at 135569
#260731 11:29:25 server id 1  end_log_pos 135637 CRC32 0x94ec440c 	Table_map: `news`.`sessions` mapped to number 83
# at 135637
#260731 11:29:25 server id 1  end_log_pos 139365 CRC32 0x99a70384 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
pSRsahMBAAAARAAAANURAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4AxE7JQ=
pSRsah8BAAAAkA4AAGUgAgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZ8BgAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TWprNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpJanR6T2pVNkluSnZk
WFJsSWp0ek9qTTJPaUptYVd4aGJXVnVkQzVoWkcxcGJpNXlaWE52ZFhKalpYTXVkWE5sY25NdWFX
NWtaWGdpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pv
ek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pNNkluVnliQ0k3WVRvd09udDljem8xTURvaWJHOW5hVzVm
ZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRP
V1FpTzJrNk1USTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpObVpt
VTRNV00xTldVMk56Y3dNek00TlRCbVlXTmpaR1ZpWTJNMlpHRTRaRE15TUdRMk9UazFZVFJqWldK
a01qSmxZMk00TURKaVpXUXpabVZqWkdNaU8zTTZOam9pZEdGaWJHVnpJanRoT2pFNmUzTTZOREE2
SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlP
MkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9p
SnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pv
NE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9p
YVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVa
V1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlq
dHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcx
aGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14
aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpw
YzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBP
aUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5E
b2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhS
bFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpw
YzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlVi
MmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRX
eDBJanRpT2pFN2ZYMTljem80T2lKbWFXeGhiV1Z1ZENJN1lUb3dPbnQ5ZlE9PZ8kbGoAKABkZk9Y
cE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBN
b3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81Mzcu
MzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaEBgAA
WVRvNE9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhW
bU14VWpCU1UyTjNaSHA0U0dsM2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1q
cDdjem96T2lKMWNtd2lPM002TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNW
elpYSnpMekV3TDJWa2FYUWlPM002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZr
YldsdUxuSmxjMjkxY21ObGN5NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZN
anA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNt
d2lPMkU2TURwN2ZYTTZOVEE2SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURF
MU9EQm1NREUwWXpkbU5UaGxZVFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0pr
WDJoaGMyaGZkMlZpSWp0ek9qWTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZ
bU5qTm1SaE9HUXpNakJrTmprNU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9q
WTZJblJoWW14bGN5STdZVG94T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpk
bE1HUmlPVE16TnprM09GOWpiMngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3
WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJ
bXhoWW1Wc0lqdHpPalE2SWs1aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNklt
bHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpR
NkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8w
T2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJ
anR6T2pVNklteGhZbVZzSWp0ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9q
QTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJ
Nk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRo
T2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hN
RG9pY205c1pYTXVibUZ0WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9p
SnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhO
VWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1po
ZFd4MElqdE9PMzFwT2pNN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpP
alE2SW01aGJXVWlPM002TVRBNkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1U
QTZJa055WldGMFpXUWdZWFFpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5
bloyeGxaQ0k3WWpvd08zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6
Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxi
blFpTzJFNk1EcDdmWDA9pSRsaoQDp5k=
'/*!*/;
# at 139365
#260731 11:29:25 server id 1  end_log_pos 139396 CRC32 0x47545fa7 	Xid = 1504
COMMIT/*!*/;
# at 139396
#260731 11:29:27 server id 1  end_log_pos 139475 CRC32 0x904b6161 	Anonymous_GTID	last_committed=60	sequence_number=61	rbr_only=yes	original_committed_timestamp=1785472167912784	immediate_commit_timestamp=1785472167912784	transaction_length=443
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472167912784 (2026-07-31 11:29:27.912784 SE Asia Standard Time)
# immediate_commit_timestamp=1785472167912784 (2026-07-31 11:29:27.912784 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472167912784*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 139475
#260731 11:29:27 server id 1  end_log_pos 139550 CRC32 0xf406b920 	Query	thread_id=68	exec_time=0	error_code=0
SET TIMESTAMP=1785472167/*!*/;
BEGIN
/*!*/;
# at 139550
#260731 11:29:27 server id 1  end_log_pos 139609 CRC32 0xae1323c1 	Table_map: `news`.`cache` mapped to number 88
# at 139609
#260731 11:29:27 server id 1  end_log_pos 139808 CRC32 0x3dc6cd71 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
pyRsahMBAAAAOwAAAFkhAgAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4MEj
E64=
pyRsah8BAAAAxwAAACAiAgAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaTo5O9okbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBQAAaToxMDvjJGxqcc3GPQ==
'/*!*/;
# at 139808
#260731 11:29:27 server id 1  end_log_pos 139839 CRC32 0x44ad5e79 	Xid = 1519
COMMIT/*!*/;
# at 139839
#260731 11:29:28 server id 1  end_log_pos 139918 CRC32 0xdb31f4e6 	Anonymous_GTID	last_committed=61	sequence_number=62	rbr_only=yes	original_committed_timestamp=1785472168084589	immediate_commit_timestamp=1785472168084589	transaction_length=4490
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472168084589 (2026-07-31 11:29:28.084589 SE Asia Standard Time)
# immediate_commit_timestamp=1785472168084589 (2026-07-31 11:29:28.084589 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472168084589*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 139918
#260731 11:29:28 server id 1  end_log_pos 140002 CRC32 0x4761aab2 	Query	thread_id=68	exec_time=0	error_code=0
SET TIMESTAMP=1785472168/*!*/;
BEGIN
/*!*/;
# at 140002
#260731 11:29:28 server id 1  end_log_pos 140070 CRC32 0x0a2957a9 	Table_map: `news`.`sessions` mapped to number 83
# at 140070
#260731 11:29:28 server id 1  end_log_pos 144298 CRC32 0xa577e2e1 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
qCRsahMBAAAARAAAACYjAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4KlXKQo=
qCRsah8BAAAAhBAAAKozAgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaEBgAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV3TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1EcDdmWDA9pSRs
agAoAGRmT1hwTXhJSkNvYzVHQUNFMFNnemIyRUtZa2hrZmlaYzhnd2RGVEsMAAAAAAAAAAkxMjcu
MC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2Vi
S2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUz
Ny4zNnAIAABZVG80T250ek9qWTZJbDkwYjJ0bGJpSTdjem8wTURvaWMyUlBXRTFQYzFsak9GTlha
bWhzWlRsWFZtTXhVakJTVTJOM1pIcDRTR2wzYTFseFJuRlhXaUk3Y3pvNU9pSmZjSEpsZG1sdmRY
TWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNemM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJG
a2JXbHVMM1Z6WlhKekx6RXdMMlZrYVhRaU8zTTZOVG9pY205MWRHVWlPM002TXpVNkltWnBiR0Z0
Wlc1MExtRmtiV2x1TG5KbGMyOTFjbU5sY3k1MWMyVnljeTVsWkdsMElqdDljem8yT2lKZlpteGhj
MmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6
b3pPaUoxY213aU8yRTZNRHA3ZlhNNk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16WmhaR1JqTW1J
eVpqazBNREUxT0RCbU1ERTBZemRtTlRobFlUUmxNekE1T0Rsa0lqdHBPakV5TzNNNk1UYzZJbkJo
YzNOM2IzSmtYMmhoYzJoZmQyVmlJanR6T2pZME9pSXpabVpsT0RGak5UVmxOamMzTURNek9EVXda
bUZqWTJSbFltTmpObVJoT0dRek1qQmtOams1TldFMFkyVmlaREl5WldOak9EQXlZbVZrTTJabFky
UmpJanR6T2pZNkluUmhZbXhsY3lJN1lUb3hPbnR6T2pRd09pSTNaV0k0TTJReE1tUTFOR1U1TXpO
ak9EWTNZamRsTUdSaU9UTXpOemszT0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0aE9qYzZlM002
TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKdVlXMWxJ
anR6T2pVNklteGhZbVZzSWp0ek9qUTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3hPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qVTZJ
bVZ0WVdsc0lqdHpPalU2SW14aFltVnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJbWx6U0dsa1pH
VnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldG
aWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3
ZldrNk1qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRa
U0k3Y3pveE1Eb2ljbTlzWlhNdWJtRnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpTYjJ4bGN5
STdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pv
eE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1
UW5sRVpXWmhkV3gwSWp0T08zMXBPak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNk
VzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpX
d2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2pr
NkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002
TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlhNNk9Eb2la
bWxzWVcxbGJuUWlPMkU2TVRwN2N6b3lNVG9pWTJ4aGFXMWxaRjl1YjNScFptbGpZWFJwYjI1eklq
dGhPakU2ZTJrNk1EdGhPakV4T250ek9qSTZJbWxrSWp0ek9qTTJPaUpoTWpZek5ETTJaUzFrWm1R
d0xUUmhZamN0T0RnNVlpMDFNRFkwTVRVelpEYzRPV1FpTzNNNk56b2lZV04wYVc5dWN5STdZVG93
T250OWN6bzBPaUppYjJSNUlqdHpPakl5T2lKUVlYTnpkMjl5WkRvZ1hTd3plMGgyVGtSVmRUTnhJ
anR6T2pVNkltTnZiRzl5SWp0T08zTTZPRG9pWkhWeVlYUnBiMjRpTzJrNk1UQXdNREE3Y3pvME9p
SnBZMjl1SWp0ek9qSXpPaUpvWlhKdmFXTnZiaTF2TFdOb1pXTnJMV05wY21Oc1pTSTdjem81T2lK
cFkyOXVRMjlzYjNJaU8zTTZOem9pYzNWalkyVnpjeUk3Y3pvMk9pSnpkR0YwZFhNaU8zTTZOem9p
YzNWalkyVnpjeUk3Y3pvMU9pSjBhWFJzWlNJN2N6b3hPRG9pVUdGemMzZHZjbVFnUjJWdVpYSmhk
R1ZrSWp0ek9qUTZJblpwWlhjaU8wNDdjem80T2lKMmFXVjNSR0YwWVNJN1lUb3dPbnQ5ZlgxOWZR
PT2oJGxq4eJ3pQ==
'/*!*/;
# at 144298
#260731 11:29:28 server id 1  end_log_pos 144329 CRC32 0x5ca89eba 	Xid = 1549
COMMIT/*!*/;
# at 144329
#260731 11:29:28 server id 1  end_log_pos 144408 CRC32 0x21c68660 	Anonymous_GTID	last_committed=62	sequence_number=63	rbr_only=yes	original_committed_timestamp=1785472168484402	immediate_commit_timestamp=1785472168484402	transaction_length=444
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472168484402 (2026-07-31 11:29:28.484402 SE Asia Standard Time)
# immediate_commit_timestamp=1785472168484402 (2026-07-31 11:29:28.484402 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472168484402*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 144408
#260731 11:29:28 server id 1  end_log_pos 144483 CRC32 0xa482c400 	Query	thread_id=69	exec_time=0	error_code=0
SET TIMESTAMP=1785472168/*!*/;
BEGIN
/*!*/;
# at 144483
#260731 11:29:28 server id 1  end_log_pos 144542 CRC32 0x2b0b3e0f 	Table_map: `news`.`cache` mapped to number 88
# at 144542
#260731 11:29:28 server id 1  end_log_pos 144742 CRC32 0x06ef61b0 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
qCRsahMBAAAAOwAAAJ40AgAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4A8+
Cys=
qCRsah8BAAAAyAAAAGY1AgAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBQAAaToxMDvjJGxq
AEMAbGFyYXZlbC1jYWNoZS1wYWdlX3JlZnJlc2g6MWYyNTY5MmU5MDcxODg2ZDdkNGIzODIwMTkw
YjA5NjAyZjc0ODAyMgUAAGk6MTE75CRsarBh7wY=
'/*!*/;
# at 144742
#260731 11:29:28 server id 1  end_log_pos 144773 CRC32 0x2710160e 	Xid = 1564
COMMIT/*!*/;
# at 144773
#260731 11:29:28 server id 1  end_log_pos 144852 CRC32 0x29a5d306 	Anonymous_GTID	last_committed=63	sequence_number=64	rbr_only=yes	original_committed_timestamp=1785472168546578	immediate_commit_timestamp=1785472168546578	transaction_length=4490
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472168546578 (2026-07-31 11:29:28.546578 SE Asia Standard Time)
# immediate_commit_timestamp=1785472168546578 (2026-07-31 11:29:28.546578 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472168546578*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 144852
#260731 11:29:28 server id 1  end_log_pos 144936 CRC32 0xb34e9429 	Query	thread_id=69	exec_time=0	error_code=0
SET TIMESTAMP=1785472168/*!*/;
BEGIN
/*!*/;
# at 144936
#260731 11:29:28 server id 1  end_log_pos 145004 CRC32 0x22fdf454 	Table_map: `news`.`sessions` mapped to number 83
# at 145004
#260731 11:29:28 server id 1  end_log_pos 149232 CRC32 0x308e2645 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
qCRsahMBAAAARAAAAGw2AgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4FT0/SI=
qCRsah8BAAAAhBAAAPBGAgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZwCAAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV3TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1UcDdjem95TVRv
aVkyeGhhVzFsWkY5dWIzUnBabWxqWVhScGIyNXpJanRoT2pFNmUyazZNRHRoT2pFeE9udHpPakk2
SW1sa0lqdHpPak0yT2lKaE1qWXpORE0yWlMxa1ptUXdMVFJoWWpjdE9EZzVZaTAxTURZME1UVXpa
RGM0T1dRaU8zTTZOem9pWVdOMGFXOXVjeUk3WVRvd09udDljem8wT2lKaWIyUjVJanR6T2pJeU9p
SlFZWE56ZDI5eVpEb2dYU3d6ZTBoMlRrUlZkVE54SWp0ek9qVTZJbU52Ykc5eUlqdE9PM002T0Rv
aVpIVnlZWFJwYjI0aU8yazZNVEF3TURBN2N6bzBPaUpwWTI5dUlqdHpPakl6T2lKb1pYSnZhV052
YmkxdkxXTm9aV05yTFdOcGNtTnNaU0k3Y3pvNU9pSnBZMjl1UTI5c2IzSWlPM002TnpvaWMzVmpZ
MlZ6Y3lJN2N6bzJPaUp6ZEdGMGRYTWlPM002TnpvaWMzVmpZMlZ6Y3lJN2N6bzFPaUowYVhSc1pT
STdjem94T0RvaVVHRnpjM2R2Y21RZ1IyVnVaWEpoZEdWa0lqdHpPalE2SW5acFpYY2lPMDQ3Y3pv
NE9pSjJhV1YzUkdGMFlTSTdZVG93T250OWZYMTlmUT09qCRsagAoAGRmT1hwTXhJSkNvYzVHQUNF
MFNnemIyRUtZa2hrZmlaYzhnd2RGVEsMAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChX
aW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxp
a2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNoQGAABZVG80T250ek9qWTZJ
bDkwYjJ0bGJpSTdjem8wTURvaWMyUlBXRTFQYzFsak9GTlhabWhzWlRsWFZtTXhVakJTVTJOM1pI
cDRTR2wzYTFseFJuRlhXaUk3Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pPaUoxY213
aU8zTTZNemM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVMM1Z6WlhKekx6RXdMMlZr
YVhRaU8zTTZOVG9pY205MWRHVWlPM002TXpVNkltWnBiR0Z0Wlc1MExtRmtiV2x1TG5KbGMyOTFj
bU5sY3k1MWMyVnljeTVsWkdsMElqdDljem8yT2lKZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJH
UWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6b3pPaUoxY213aU8yRTZNRHA3ZlhN
Nk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16WmhaR1JqTW1JeVpqazBNREUxT0RCbU1ERTBZemRt
TlRobFlUUmxNekE1T0Rsa0lqdHBPakV5TzNNNk1UYzZJbkJoYzNOM2IzSmtYMmhoYzJoZmQyVmlJ
anR6T2pZME9pSXpabVpsT0RGak5UVmxOamMzTURNek9EVXdabUZqWTJSbFltTmpObVJoT0dRek1q
QmtOams1TldFMFkyVmlaREl5WldOak9EQXlZbVZrTTJabFkyUmpJanR6T2pZNkluUmhZbXhsY3lJ
N1lUb3hPbnR6T2pRd09pSTNaV0k0TTJReE1tUTFOR1U1TXpOak9EWTNZamRsTUdSaU9UTXpOemsz
T0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpi
MngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKdVlXMWxJanR6T2pVNklteGhZbVZzSWp0ek9q
UTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJ
N1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhs
WkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3hPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpP
alk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbVZ0WVdsc0lqdHpPalU2SW14aFlt
VnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1qdGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2ljbTlzWlhNdWJt
RnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpTYjJ4bGN5STdjem80T2lKcGMwaHBaR1JsYmlJ
N1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhs
SWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBP
ak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8z
TTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldR
Z1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlhNNk9Eb2labWxzWVcxbGJuUWlPMkU2TURwN2ZY
MD2oJGxqRSaOMA==
'/*!*/;
# at 149232
#260731 11:29:28 server id 1  end_log_pos 149263 CRC32 0xad7bb73f 	Xid = 1576
COMMIT/*!*/;
# at 149263
#260731 11:29:30 server id 1  end_log_pos 149342 CRC32 0x9976e79e 	Anonymous_GTID	last_committed=64	sequence_number=65	rbr_only=yes	original_committed_timestamp=1785472170564188	immediate_commit_timestamp=1785472170564188	transaction_length=444
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472170564188 (2026-07-31 11:29:30.564188 SE Asia Standard Time)
# immediate_commit_timestamp=1785472170564188 (2026-07-31 11:29:30.564188 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472170564188*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 149342
#260731 11:29:30 server id 1  end_log_pos 149417 CRC32 0x92155fba 	Query	thread_id=70	exec_time=0	error_code=0
SET TIMESTAMP=1785472170/*!*/;
BEGIN
/*!*/;
# at 149417
#260731 11:29:30 server id 1  end_log_pos 149476 CRC32 0x3af964a4 	Table_map: `news`.`cache` mapped to number 88
# at 149476
#260731 11:29:30 server id 1  end_log_pos 149676 CRC32 0x320ead9f 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
qiRsahMBAAAAOwAAAORHAgAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4KRk
+To=
qiRsah8BAAAAyAAAAKxIAgAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBQAAaToxMTvkJGxq
AEMAbGFyYXZlbC1jYWNoZS1wYWdlX3JlZnJlc2g6MWYyNTY5MmU5MDcxODg2ZDdkNGIzODIwMTkw
YjA5NjAyZjc0ODAyMgUAAGk6MTI75iRsap+tDjI=
'/*!*/;
# at 149676
#260731 11:29:30 server id 1  end_log_pos 149707 CRC32 0xb2ebf5d6 	Xid = 1594
COMMIT/*!*/;
# at 149707
#260731 11:29:31 server id 1  end_log_pos 149786 CRC32 0x045a6157 	Anonymous_GTID	last_committed=65	sequence_number=66	rbr_only=yes	original_committed_timestamp=1785472171008980	immediate_commit_timestamp=1785472171008980	transaction_length=560
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472171008980 (2026-07-31 11:29:31.008980 SE Asia Standard Time)
# immediate_commit_timestamp=1785472171008980 (2026-07-31 11:29:31.008980 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472171008980*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 149786
#260731 11:29:31 server id 1  end_log_pos 149880 CRC32 0xb12f8713 	Query	thread_id=70	exec_time=0	error_code=0
SET TIMESTAMP=1785472171/*!*/;
BEGIN
/*!*/;
# at 149880
#260731 11:29:31 server id 1  end_log_pos 149956 CRC32 0x6218ae96 	Table_map: `news`.`users` mapped to number 110
# at 149956
#260731 11:29:31 server id 1  end_log_pos 150236 CRC32 0xef5cc8aa 	Update_rows: table id 110 flags: STMT_END_F

BINLOG '
qyRsahMBAAAATAAAAMRJAgAAAG4AAAAAAAMABG5ld3MABXVzZXJzAAkIDw8RDw8PEREN/AP8AwD8
A/wDkAEAAOgBAQGAAgHglq4YYg==
qyRsah8BAAAAGAEAANxKAgAAAG4AAAAAAAEAAgAJ/////2gACgAAAAAAAAARAFN1cGVyIEFkbWlu
IFV0YW1hFABhZG1pbkBzdXBlcmFkbWluLmNvbTwAJDJ5JDEwJEdNOVBmSS5VcnJuOXMwTXBGOC81
ZS5aZDVrTXliZ2czVU43cWUxUERWQVFxQmtPem1RZ1ouamu3OWprtzloAAoAAAAAAAAAEQBTdXBl
ciBBZG1pbiBVdGFtYRQAYWRtaW5Ac3VwZXJhZG1pbi5jb208ACQyeSQxMiRHWFJ2QlRwZHdhbVZP
U1pselE3SXJlN0QyNDdZOVVTa2FseDhFSnhPQlJqd2pSVFBFZDhiQ2prtzlqa8I7qshc7w==
'/*!*/;
# at 150236
#260731 11:29:31 server id 1  end_log_pos 150267 CRC32 0x434cb129 	Xid = 1630
COMMIT/*!*/;
# at 150267
#260731 11:29:31 server id 1  end_log_pos 150346 CRC32 0x64fc3f07 	Anonymous_GTID	last_committed=66	sequence_number=67	rbr_only=yes	original_committed_timestamp=1785472171039083	immediate_commit_timestamp=1785472171039083	transaction_length=4446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472171039083 (2026-07-31 11:29:31.039083 SE Asia Standard Time)
# immediate_commit_timestamp=1785472171039083 (2026-07-31 11:29:31.039083 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472171039083*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 150346
#260731 11:29:31 server id 1  end_log_pos 150430 CRC32 0xc5e872a6 	Query	thread_id=70	exec_time=0	error_code=0
SET TIMESTAMP=1785472171/*!*/;
BEGIN
/*!*/;
# at 150430
#260731 11:29:31 server id 1  end_log_pos 150498 CRC32 0x382b9a6d 	Table_map: `news`.`sessions` mapped to number 83
# at 150498
#260731 11:29:31 server id 1  end_log_pos 154682 CRC32 0x24a73d87 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
qyRsahMBAAAARAAAAOJLAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4G2aKzg=
qyRsah8BAAAAWBAAADpcAgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaEBgAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV3TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1EcDdmWDA9qCRs
agAoAGRmT1hwTXhJSkNvYzVHQUNFMFNnemIyRUtZa2hrZmlaYzhnd2RGVEsMAAAAAAAAAAkxMjcu
MC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2Vi
S2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUz
Ny4zNkQIAABZVG80T250ek9qWTZJbDkwYjJ0bGJpSTdjem8wTURvaWMyUlBXRTFQYzFsak9GTlha
bWhzWlRsWFZtTXhVakJTVTJOM1pIcDRTR2wzYTFseFJuRlhXaUk3Y3pvNU9pSmZjSEpsZG1sdmRY
TWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNemM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJG
a2JXbHVMM1Z6WlhKekx6RXdMMlZrYVhRaU8zTTZOVG9pY205MWRHVWlPM002TXpVNkltWnBiR0Z0
Wlc1MExtRmtiV2x1TG5KbGMyOTFjbU5sY3k1MWMyVnljeTVsWkdsMElqdDljem8yT2lKZlpteGhj
MmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6
b3pPaUoxY213aU8yRTZNRHA3ZlhNNk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16WmhaR1JqTW1J
eVpqazBNREUxT0RCbU1ERTBZemRtTlRobFlUUmxNekE1T0Rsa0lqdHBPakV5TzNNNk1UYzZJbkJo
YzNOM2IzSmtYMmhoYzJoZmQyVmlJanR6T2pZME9pSXpabVpsT0RGak5UVmxOamMzTURNek9EVXda
bUZqWTJSbFltTmpObVJoT0dRek1qQmtOams1TldFMFkyVmlaREl5WldOak9EQXlZbVZrTTJabFky
UmpJanR6T2pZNkluUmhZbXhsY3lJN1lUb3hPbnR6T2pRd09pSTNaV0k0TTJReE1tUTFOR1U1TXpO
ak9EWTNZamRsTUdSaU9UTXpOemszT0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0aE9qYzZlM002
TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKdVlXMWxJ
anR6T2pVNklteGhZbVZzSWp0ek9qUTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3hPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qVTZJ
bVZ0WVdsc0lqdHpPalU2SW14aFltVnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJbWx6U0dsa1pH
VnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldG
aWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3
ZldrNk1qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRa
U0k3Y3pveE1Eb2ljbTlzWlhNdWJtRnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpTYjJ4bGN5
STdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pv
eE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1
UW5sRVpXWmhkV3gwSWp0T08zMXBPak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNk
VzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpX
d2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2pr
NkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002
TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlhNNk9Eb2la
bWxzWVcxbGJuUWlPMkU2TVRwN2N6b3hNem9pYm05MGFXWnBZMkYwYVc5dWN5STdZVG94T250cE9q
QTdZVG94TVRwN2N6b3lPaUpwWkNJN2N6b3pOam9pWVRJMk16UXpOek10TnpjeE15MDBZak0yTFdJ
NVpqa3RaV1V3TVdJd01qa3lNREJsSWp0ek9qYzZJbUZqZEdsdmJuTWlPMkU2TURwN2ZYTTZORG9p
WW05a2VTSTdUanR6T2pVNkltTnZiRzl5SWp0T08zTTZPRG9pWkhWeVlYUnBiMjRpTzJrNk5qQXdN
RHR6T2pRNkltbGpiMjRpTzNNNk1qTTZJbWhsY205cFkyOXVMVzh0WTJobFkyc3RZMmx5WTJ4bElq
dHpPams2SW1samIyNURiMnh2Y2lJN2N6bzNPaUp6ZFdOalpYTnpJanR6T2pZNkluTjBZWFIxY3lJ
N2N6bzNPaUp6ZFdOalpYTnpJanR6T2pVNkluUnBkR3hsSWp0ek9qSXlPaUpFWVhSaElHSmxjbWho
YzJsc0lHUnBjMmx0Y0dGdUlqdHpPalE2SW5acFpYY2lPMDQ3Y3pvNE9pSjJhV1YzUkdGMFlTSTdZ
VG93T250OWZYMTlmUT09qyRsaoc9pyQ=
'/*!*/;
# at 154682
#260731 11:29:31 server id 1  end_log_pos 154713 CRC32 0xa43ada68 	Xid = 1633
COMMIT/*!*/;
# at 154713
#260731 11:29:31 server id 1  end_log_pos 154792 CRC32 0xecbe3ed6 	Anonymous_GTID	last_committed=67	sequence_number=68	rbr_only=yes	original_committed_timestamp=1785472171903060	immediate_commit_timestamp=1785472171903060	transaction_length=4438
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472171903060 (2026-07-31 11:29:31.903060 SE Asia Standard Time)
# immediate_commit_timestamp=1785472171903060 (2026-07-31 11:29:31.903060 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472171903060*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 154792
#260731 11:29:31 server id 1  end_log_pos 154876 CRC32 0x3aaf0e2e 	Query	thread_id=71	exec_time=0	error_code=0
SET TIMESTAMP=1785472171/*!*/;
BEGIN
/*!*/;
# at 154876
#260731 11:29:31 server id 1  end_log_pos 154944 CRC32 0x73079ddd 	Table_map: `news`.`sessions` mapped to number 83
# at 154944
#260731 11:29:31 server id 1  end_log_pos 159120 CRC32 0x7d108b92 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
qyRsahMBAAAARAAAAEBdAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4N2dB3M=
qyRsah8BAAAAUBAAAJBtAgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZECAAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV3TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1UcDdjem94TXpv
aWJtOTBhV1pwWTJGMGFXOXVjeUk3WVRveE9udHBPakE3WVRveE1UcDdjem95T2lKcFpDSTdjem96
TmpvaVlUSTJNelF6TnpNdE56Y3hNeTAwWWpNMkxXSTVaamt0WldVd01XSXdNamt5TURCbElqdHpP
amM2SW1GamRHbHZibk1pTzJFNk1EcDdmWE02TkRvaVltOWtlU0k3VGp0ek9qVTZJbU52Ykc5eUlq
dE9PM002T0RvaVpIVnlZWFJwYjI0aU8yazZOakF3TUR0ek9qUTZJbWxqYjI0aU8zTTZNak02SW1o
bGNtOXBZMjl1TFc4dFkyaGxZMnN0WTJseVkyeGxJanR6T2prNkltbGpiMjVEYjJ4dmNpSTdjem8z
T2lKemRXTmpaWE56SWp0ek9qWTZJbk4wWVhSMWN5STdjem8zT2lKemRXTmpaWE56SWp0ek9qVTZJ
blJwZEd4bElqdHpPakl5T2lKRVlYUmhJR0psY21oaGMybHNJR1JwYzJsdGNHRnVJanR6T2pRNklu
WnBaWGNpTzA0N2N6bzRPaUoyYVdWM1JHRjBZU0k3WVRvd09udDlmWDE5ZlE9PaskbGoAKABkZk9Y
cE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBN
b3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81Mzcu
MzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZ8BgAA
WVRvNE9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhW
bU14VWpCU1UyTjNaSHA0U0dsM2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1q
cDdjem96T2lKMWNtd2lPM002TWprNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNW
elpYSnpJanR6T2pVNkluSnZkWFJsSWp0ek9qTTJPaUptYVd4aGJXVnVkQzVoWkcxcGJpNXlaWE52
ZFhKalpYTXVkWE5sY25NdWFXNWtaWGdpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJ
bTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pNNkluVnliQ0k3WVRvd09u
dDljem8xTURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRS
ak4yWTFPR1ZoTkdVek1EazRPV1FpTzJrNk1USTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkz
WldJaU8zTTZOalE2SWpObVptVTRNV00xTldVMk56Y3dNek00TlRCbVlXTmpaR1ZpWTJNMlpHRTRa
RE15TUdRMk9UazFZVFJqWldKa01qSmxZMk00TURKaVpXUXpabVZqWkdNaU8zTTZOam9pZEdGaWJH
VnpJanRoT2pFNmUzTTZOREE2SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpN
M09UYzRYMk52YkhWdGJuTWlPMkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2
SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lP
M002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJH
VmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJk
bmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1Vp
TzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2li
R0ZpWld3aU8zTTZOVG9pUlcxaGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNklt
bHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpR
NkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8w
T2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxj
eTV1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pH
VnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldG
aWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3
ZldrNk16dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRa
U0k3Y3pveE1Eb2lZM0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlY
UmxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0
aU9qQTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1Zr
U0dsa1pHVnVRbmxFWldaaGRXeDBJanRpT2pFN2ZYMTljem80T2lKbWFXeGhiV1Z1ZENJN1lUb3dP
bnQ5ZlE9PaskbGqSixB9
'/*!*/;
# at 159120
#260731 11:29:31 server id 1  end_log_pos 159151 CRC32 0xe254db51 	Xid = 1666
COMMIT/*!*/;
# at 159151
#260731 11:29:37 server id 1  end_log_pos 159230 CRC32 0xabea85d7 	Anonymous_GTID	last_committed=68	sequence_number=69	rbr_only=yes	original_committed_timestamp=1785472177512854	immediate_commit_timestamp=1785472177512854	transaction_length=3990
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472177512854 (2026-07-31 11:29:37.512854 SE Asia Standard Time)
# immediate_commit_timestamp=1785472177512854 (2026-07-31 11:29:37.512854 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472177512854*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 159230
#260731 11:29:37 server id 1  end_log_pos 159314 CRC32 0x1d6d0fff 	Query	thread_id=72	exec_time=0	error_code=0
SET TIMESTAMP=1785472177/*!*/;
BEGIN
/*!*/;
# at 159314
#260731 11:29:37 server id 1  end_log_pos 159382 CRC32 0x933a9d56 	Table_map: `news`.`sessions` mapped to number 83
# at 159382
#260731 11:29:37 server id 1  end_log_pos 163110 CRC32 0x5044eabf 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
sSRsahMBAAAARAAAAJZuAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4FadOpM=
sSRsah8BAAAAkA4AACZ9AgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZ8BgAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TWprNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpJanR6T2pVNkluSnZk
WFJsSWp0ek9qTTJPaUptYVd4aGJXVnVkQzVoWkcxcGJpNXlaWE52ZFhKalpYTXVkWE5sY25NdWFX
NWtaWGdpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pv
ek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pNNkluVnliQ0k3WVRvd09udDljem8xTURvaWJHOW5hVzVm
ZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRP
V1FpTzJrNk1USTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpObVpt
VTRNV00xTldVMk56Y3dNek00TlRCbVlXTmpaR1ZpWTJNMlpHRTRaRE15TUdRMk9UazFZVFJqWldK
a01qSmxZMk00TURKaVpXUXpabVZqWkdNaU8zTTZOam9pZEdGaWJHVnpJanRoT2pFNmUzTTZOREE2
SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlP
MkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9p
SnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pv
NE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9p
YVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVa
V1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlq
dHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcx
aGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14
aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpw
YzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBP
aUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5E
b2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhS
bFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpw
YzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlVi
MmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRX
eDBJanRpT2pFN2ZYMTljem80T2lKbWFXeGhiV1Z1ZENJN1lUb3dPbnQ5ZlE9PaskbGoAKABkZk9Y
cE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBN
b3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81Mzcu
MzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaEBgAA
WVRvNE9udHpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhW
bU14VWpCU1UyTjNaSHA0U0dsM2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1q
cDdjem96T2lKMWNtd2lPM002TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNW
elpYSnpMekV5TDJWa2FYUWlPM002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZr
YldsdUxuSmxjMjkxY21ObGN5NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZN
anA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNt
d2lPMkU2TURwN2ZYTTZOVEE2SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURF
MU9EQm1NREUwWXpkbU5UaGxZVFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0pr
WDJoaGMyaGZkMlZpSWp0ek9qWTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZ
bU5qTm1SaE9HUXpNakJrTmprNU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9q
WTZJblJoWW14bGN5STdZVG94T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpk
bE1HUmlPVE16TnprM09GOWpiMngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3
WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJ
bXhoWW1Wc0lqdHpPalE2SWs1aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNklt
bHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpR
NkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8w
T2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJ
anR6T2pVNklteGhZbVZzSWp0ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9q
QTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJ
Nk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRo
T2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hN
RG9pY205c1pYTXVibUZ0WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9p
SnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhO
VWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1po
ZFd4MElqdE9PMzFwT2pNN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpP
alE2SW01aGJXVWlPM002TVRBNkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1U
QTZJa055WldGMFpXUWdZWFFpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5
bloyeGxaQ0k3WWpvd08zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6
Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxi
blFpTzJFNk1EcDdmWDA9sSRsar/qRFA=
'/*!*/;
# at 163110
#260731 11:29:37 server id 1  end_log_pos 163141 CRC32 0xb718e02a 	Xid = 1702
COMMIT/*!*/;
# at 163141
#260731 11:29:40 server id 1  end_log_pos 163220 CRC32 0x4a07f204 	Anonymous_GTID	last_committed=69	sequence_number=70	rbr_only=yes	original_committed_timestamp=1785472180726433	immediate_commit_timestamp=1785472180726433	transaction_length=444
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472180726433 (2026-07-31 11:29:40.726433 SE Asia Standard Time)
# immediate_commit_timestamp=1785472180726433 (2026-07-31 11:29:40.726433 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472180726433*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 163220
#260731 11:29:40 server id 1  end_log_pos 163295 CRC32 0x4859440d 	Query	thread_id=73	exec_time=0	error_code=0
SET TIMESTAMP=1785472180/*!*/;
BEGIN
/*!*/;
# at 163295
#260731 11:29:40 server id 1  end_log_pos 163354 CRC32 0xc3945868 	Table_map: `news`.`cache` mapped to number 88
# at 163354
#260731 11:29:40 server id 1  end_log_pos 163554 CRC32 0x5e9aab6d 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
tCRsahMBAAAAOwAAABp+AgAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4GhY
lMM=
tCRsah8BAAAAyAAAAOJ+AgAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBQAAaToxMjvmJGxq
AEMAbGFyYXZlbC1jYWNoZS1wYWdlX3JlZnJlc2g6MWYyNTY5MmU5MDcxODg2ZDdkNGIzODIwMTkw
YjA5NjAyZjc0ODAyMgUAAGk6MTM78CRsam2rml4=
'/*!*/;
# at 163554
#260731 11:29:40 server id 1  end_log_pos 163585 CRC32 0x72a86b47 	Xid = 1717
COMMIT/*!*/;
# at 163585
#260731 11:29:40 server id 1  end_log_pos 163664 CRC32 0xe5e4f96d 	Anonymous_GTID	last_committed=70	sequence_number=71	rbr_only=yes	original_committed_timestamp=1785472180921183	immediate_commit_timestamp=1785472180921183	transaction_length=4490
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472180921183 (2026-07-31 11:29:40.921183 SE Asia Standard Time)
# immediate_commit_timestamp=1785472180921183 (2026-07-31 11:29:40.921183 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472180921183*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 163664
#260731 11:29:40 server id 1  end_log_pos 163748 CRC32 0xc96cc5f4 	Query	thread_id=73	exec_time=0	error_code=0
SET TIMESTAMP=1785472180/*!*/;
BEGIN
/*!*/;
# at 163748
#260731 11:29:40 server id 1  end_log_pos 163816 CRC32 0xb8ce026d 	Table_map: `news`.`sessions` mapped to number 83
# at 163816
#260731 11:29:40 server id 1  end_log_pos 168044 CRC32 0xd2ae16d1 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
tCRsahMBAAAARAAAAOh/AgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4G0Czrg=
tCRsah8BAAAAhBAAAGyQAgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaEBgAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV5TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1EcDdmWDA9sSRs
agAoAGRmT1hwTXhJSkNvYzVHQUNFMFNnemIyRUtZa2hrZmlaYzhnd2RGVEsMAAAAAAAAAAkxMjcu
MC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2Vi
S2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUz
Ny4zNnAIAABZVG80T250ek9qWTZJbDkwYjJ0bGJpSTdjem8wTURvaWMyUlBXRTFQYzFsak9GTlha
bWhzWlRsWFZtTXhVakJTVTJOM1pIcDRTR2wzYTFseFJuRlhXaUk3Y3pvNU9pSmZjSEpsZG1sdmRY
TWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNemM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJG
a2JXbHVMM1Z6WlhKekx6RXlMMlZrYVhRaU8zTTZOVG9pY205MWRHVWlPM002TXpVNkltWnBiR0Z0
Wlc1MExtRmtiV2x1TG5KbGMyOTFjbU5sY3k1MWMyVnljeTVsWkdsMElqdDljem8yT2lKZlpteGhj
MmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6
b3pPaUoxY213aU8yRTZNRHA3ZlhNNk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16WmhaR1JqTW1J
eVpqazBNREUxT0RCbU1ERTBZemRtTlRobFlUUmxNekE1T0Rsa0lqdHBPakV5TzNNNk1UYzZJbkJo
YzNOM2IzSmtYMmhoYzJoZmQyVmlJanR6T2pZME9pSXpabVpsT0RGak5UVmxOamMzTURNek9EVXda
bUZqWTJSbFltTmpObVJoT0dRek1qQmtOams1TldFMFkyVmlaREl5WldOak9EQXlZbVZrTTJabFky
UmpJanR6T2pZNkluUmhZbXhsY3lJN1lUb3hPbnR6T2pRd09pSTNaV0k0TTJReE1tUTFOR1U1TXpO
ak9EWTNZamRsTUdSaU9UTXpOemszT0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0aE9qYzZlM002
TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKdVlXMWxJ
anR6T2pVNklteGhZbVZzSWp0ek9qUTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3hPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qVTZJ
bVZ0WVdsc0lqdHpPalU2SW14aFltVnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJbWx6U0dsa1pH
VnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldG
aWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3
ZldrNk1qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRa
U0k3Y3pveE1Eb2ljbTlzWlhNdWJtRnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpTYjJ4bGN5
STdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pv
eE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1
UW5sRVpXWmhkV3gwSWp0T08zMXBPak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNk
VzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpX
d2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2pr
NkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002
TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlhNNk9Eb2la
bWxzWVcxbGJuUWlPMkU2TVRwN2N6b3lNVG9pWTJ4aGFXMWxaRjl1YjNScFptbGpZWFJwYjI1eklq
dGhPakU2ZTJrNk1EdGhPakV4T250ek9qSTZJbWxrSWp0ek9qTTJPaUpoTWpZek5ETTRNaTAzTkdR
MUxUUXlOV010T1dSbE1pMDJaRGRqWldZMFpqSmhNekFpTzNNNk56b2lZV04wYVc5dWN5STdZVG93
T250OWN6bzBPaUppYjJSNUlqdHpPakl5T2lKUVlYTnpkMjl5WkRvZ2FqTlBaR3RNUzJvaE4weFFJ
anR6T2pVNkltTnZiRzl5SWp0T08zTTZPRG9pWkhWeVlYUnBiMjRpTzJrNk1UQXdNREE3Y3pvME9p
SnBZMjl1SWp0ek9qSXpPaUpvWlhKdmFXTnZiaTF2TFdOb1pXTnJMV05wY21Oc1pTSTdjem81T2lK
cFkyOXVRMjlzYjNJaU8zTTZOem9pYzNWalkyVnpjeUk3Y3pvMk9pSnpkR0YwZFhNaU8zTTZOem9p
YzNWalkyVnpjeUk3Y3pvMU9pSjBhWFJzWlNJN2N6b3hPRG9pVUdGemMzZHZjbVFnUjJWdVpYSmhk
R1ZrSWp0ek9qUTZJblpwWlhjaU8wNDdjem80T2lKMmFXVjNSR0YwWVNJN1lUb3dPbnQ5ZlgxOWZR
PT20JGxq0Rau0g==
'/*!*/;
# at 168044
#260731 11:29:40 server id 1  end_log_pos 168075 CRC32 0xbc81dd7e 	Xid = 1747
COMMIT/*!*/;
# at 168075
#260731 11:29:41 server id 1  end_log_pos 168154 CRC32 0x6c039e79 	Anonymous_GTID	last_committed=71	sequence_number=72	rbr_only=yes	original_committed_timestamp=1785472181393666	immediate_commit_timestamp=1785472181393666	transaction_length=444
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472181393666 (2026-07-31 11:29:41.393666 SE Asia Standard Time)
# immediate_commit_timestamp=1785472181393666 (2026-07-31 11:29:41.393666 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472181393666*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 168154
#260731 11:29:41 server id 1  end_log_pos 168229 CRC32 0x6ea209c2 	Query	thread_id=74	exec_time=0	error_code=0
SET TIMESTAMP=1785472181/*!*/;
BEGIN
/*!*/;
# at 168229
#260731 11:29:41 server id 1  end_log_pos 168288 CRC32 0x6f4df7e2 	Table_map: `news`.`cache` mapped to number 88
# at 168288
#260731 11:29:41 server id 1  end_log_pos 168488 CRC32 0x942b2582 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
tSRsahMBAAAAOwAAAGCRAgAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4OL3
TW8=
tSRsah8BAAAAyAAAACiSAgAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBQAAaToxMzvwJGxq
AEMAbGFyYXZlbC1jYWNoZS1wYWdlX3JlZnJlc2g6MWYyNTY5MmU5MDcxODg2ZDdkNGIzODIwMTkw
YjA5NjAyZjc0ODAyMgUAAGk6MTQ78SRsaoIlK5Q=
'/*!*/;
# at 168488
#260731 11:29:41 server id 1  end_log_pos 168519 CRC32 0x1309a9a9 	Xid = 1762
COMMIT/*!*/;
# at 168519
#260731 11:29:41 server id 1  end_log_pos 168598 CRC32 0x05fc6340 	Anonymous_GTID	last_committed=72	sequence_number=73	rbr_only=yes	original_committed_timestamp=1785472181452872	immediate_commit_timestamp=1785472181452872	transaction_length=4490
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472181452872 (2026-07-31 11:29:41.452872 SE Asia Standard Time)
# immediate_commit_timestamp=1785472181452872 (2026-07-31 11:29:41.452872 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472181452872*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 168598
#260731 11:29:41 server id 1  end_log_pos 168682 CRC32 0x63238a5c 	Query	thread_id=74	exec_time=0	error_code=0
SET TIMESTAMP=1785472181/*!*/;
BEGIN
/*!*/;
# at 168682
#260731 11:29:41 server id 1  end_log_pos 168750 CRC32 0xd7988a0b 	Table_map: `news`.`sessions` mapped to number 83
# at 168750
#260731 11:29:41 server id 1  end_log_pos 172978 CRC32 0x3630d70a 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
tSRsahMBAAAARAAAAC6TAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4AuKmNc=
tSRsah8BAAAAhBAAALKjAgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZwCAAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV5TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1UcDdjem95TVRv
aVkyeGhhVzFsWkY5dWIzUnBabWxqWVhScGIyNXpJanRoT2pFNmUyazZNRHRoT2pFeE9udHpPakk2
SW1sa0lqdHpPak0yT2lKaE1qWXpORE00TWkwM05HUTFMVFF5TldNdE9XUmxNaTAyWkRkalpXWTBa
akpoTXpBaU8zTTZOem9pWVdOMGFXOXVjeUk3WVRvd09udDljem8wT2lKaWIyUjVJanR6T2pJeU9p
SlFZWE56ZDI5eVpEb2dhak5QWkd0TVMyb2hOMHhRSWp0ek9qVTZJbU52Ykc5eUlqdE9PM002T0Rv
aVpIVnlZWFJwYjI0aU8yazZNVEF3TURBN2N6bzBPaUpwWTI5dUlqdHpPakl6T2lKb1pYSnZhV052
YmkxdkxXTm9aV05yTFdOcGNtTnNaU0k3Y3pvNU9pSnBZMjl1UTI5c2IzSWlPM002TnpvaWMzVmpZ
MlZ6Y3lJN2N6bzJPaUp6ZEdGMGRYTWlPM002TnpvaWMzVmpZMlZ6Y3lJN2N6bzFPaUowYVhSc1pT
STdjem94T0RvaVVHRnpjM2R2Y21RZ1IyVnVaWEpoZEdWa0lqdHpPalE2SW5acFpYY2lPMDQ3Y3pv
NE9pSjJhV1YzUkdGMFlTSTdZVG93T250OWZYMTlmUT09tCRsagAoAGRmT1hwTXhJSkNvYzVHQUNF
MFNnemIyRUtZa2hrZmlaYzhnd2RGVEsMAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChX
aW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxp
a2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNoQGAABZVG80T250ek9qWTZJ
bDkwYjJ0bGJpSTdjem8wTURvaWMyUlBXRTFQYzFsak9GTlhabWhzWlRsWFZtTXhVakJTVTJOM1pI
cDRTR2wzYTFseFJuRlhXaUk3Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pPaUoxY213
aU8zTTZNemM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVMM1Z6WlhKekx6RXlMMlZr
YVhRaU8zTTZOVG9pY205MWRHVWlPM002TXpVNkltWnBiR0Z0Wlc1MExtRmtiV2x1TG5KbGMyOTFj
bU5sY3k1MWMyVnljeTVsWkdsMElqdDljem8yT2lKZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJH
UWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6b3pPaUoxY213aU8yRTZNRHA3ZlhN
Nk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16WmhaR1JqTW1JeVpqazBNREUxT0RCbU1ERTBZemRt
TlRobFlUUmxNekE1T0Rsa0lqdHBPakV5TzNNNk1UYzZJbkJoYzNOM2IzSmtYMmhoYzJoZmQyVmlJ
anR6T2pZME9pSXpabVpsT0RGak5UVmxOamMzTURNek9EVXdabUZqWTJSbFltTmpObVJoT0dRek1q
QmtOams1TldFMFkyVmlaREl5WldOak9EQXlZbVZrTTJabFkyUmpJanR6T2pZNkluUmhZbXhsY3lJ
N1lUb3hPbnR6T2pRd09pSTNaV0k0TTJReE1tUTFOR1U1TXpOak9EWTNZamRsTUdSaU9UTXpOemsz
T0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpi
MngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKdVlXMWxJanR6T2pVNklteGhZbVZzSWp0ek9q
UTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJ
N1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhs
WkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3hPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpP
alk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbVZ0WVdsc0lqdHpPalU2SW14aFlt
VnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1qdGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2ljbTlzWlhNdWJt
RnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpTYjJ4bGN5STdjem80T2lKcGMwaHBaR1JsYmlJ
N1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhs
SWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBP
ak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8z
TTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldR
Z1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlhNNk9Eb2labWxzWVcxbGJuUWlPMkU2TURwN2ZY
MD21JGxqCtcwNg==
'/*!*/;
# at 172978
#260731 11:29:41 server id 1  end_log_pos 173009 CRC32 0x834a1074 	Xid = 1774
COMMIT/*!*/;
# at 173009
#260731 11:29:43 server id 1  end_log_pos 173088 CRC32 0x568fbd03 	Anonymous_GTID	last_committed=73	sequence_number=74	rbr_only=yes	original_committed_timestamp=1785472183454800	immediate_commit_timestamp=1785472183454800	transaction_length=444
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472183454800 (2026-07-31 11:29:43.454800 SE Asia Standard Time)
# immediate_commit_timestamp=1785472183454800 (2026-07-31 11:29:43.454800 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472183454800*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 173088
#260731 11:29:43 server id 1  end_log_pos 173163 CRC32 0xb86b5040 	Query	thread_id=75	exec_time=0	error_code=0
SET TIMESTAMP=1785472183/*!*/;
BEGIN
/*!*/;
# at 173163
#260731 11:29:43 server id 1  end_log_pos 173222 CRC32 0x9fefff63 	Table_map: `news`.`cache` mapped to number 88
# at 173222
#260731 11:29:43 server id 1  end_log_pos 173422 CRC32 0xa256d695 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
tyRsahMBAAAAOwAAAKakAgAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4GP/
758=
tyRsah8BAAAAyAAAAG6lAgAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBQAAaToxNDvxJGxq
AEMAbGFyYXZlbC1jYWNoZS1wYWdlX3JlZnJlc2g6MWYyNTY5MmU5MDcxODg2ZDdkNGIzODIwMTkw
YjA5NjAyZjc0ODAyMgUAAGk6MTU78yRsapXWVqI=
'/*!*/;
# at 173422
#260731 11:29:43 server id 1  end_log_pos 173453 CRC32 0x017d9553 	Xid = 1789
COMMIT/*!*/;
# at 173453
#260731 11:29:43 server id 1  end_log_pos 173532 CRC32 0x1ca39528 	Anonymous_GTID	last_committed=74	sequence_number=75	rbr_only=yes	original_committed_timestamp=1785472183889246	immediate_commit_timestamp=1785472183889246	transaction_length=584
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472183889246 (2026-07-31 11:29:43.889246 SE Asia Standard Time)
# immediate_commit_timestamp=1785472183889246 (2026-07-31 11:29:43.889246 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472183889246*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 173532
#260731 11:29:43 server id 1  end_log_pos 173626 CRC32 0x470a8b70 	Query	thread_id=75	exec_time=0	error_code=0
SET TIMESTAMP=1785472183/*!*/;
BEGIN
/*!*/;
# at 173626
#260731 11:29:43 server id 1  end_log_pos 173702 CRC32 0x8ca02b3e 	Table_map: `news`.`users` mapped to number 110
# at 173702
#260731 11:29:43 server id 1  end_log_pos 174006 CRC32 0xc47d447f 	Update_rows: table id 110 flags: STMT_END_F

BINLOG '
tyRsahMBAAAATAAAAIamAgAAAG4AAAAAAAMABG5ld3MABXVzZXJzAAkIDw8RDw8PEREN/AP8AwD8
A/wDkAEAAOgBAQGAAgHgPiugjA==
tyRsah8BAAAAMAEAALanAgAAAG4AAAAAAAEAAgAJ/////2AADAAAAAAAAAAZAEZ1bGwgQWNjZXNz
IEFkbWluaXN0cmF0b3IUAGZ1bGxhY2Nlc3NAYWRtaW4uY29tamvB3zwAJDJ5JDEyJEZmbEdjazZO
RDEyMzRpUkl0cWxJaS5XNmxhRzhQalFqa0RvMS9JRTd4Lzc3bFZkNFZLSnBTamvB32prwd9gAAwA
AAAAAAAAGQBGdWxsIEFjY2VzcyBBZG1pbmlzdHJhdG9yFABmdWxsYWNjZXNzQGFkbWluLmNvbWpr
wd88ACQyeSQxMiRQS2J4NzZ6M2hEeUI4a1oubGp0WWF1and3cmd3MlBURFd6a3h3N09uVENwVkRN
d1B5eXBYcWprwd9qa8JHf0R9xA==
'/*!*/;
# at 174006
#260731 11:29:43 server id 1  end_log_pos 174037 CRC32 0x82b69d54 	Xid = 1825
COMMIT/*!*/;
# at 174037
#260731 11:29:43 server id 1  end_log_pos 174116 CRC32 0x855ca675 	Anonymous_GTID	last_committed=75	sequence_number=76	rbr_only=yes	original_committed_timestamp=1785472183918394	immediate_commit_timestamp=1785472183918394	transaction_length=4446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472183918394 (2026-07-31 11:29:43.918394 SE Asia Standard Time)
# immediate_commit_timestamp=1785472183918394 (2026-07-31 11:29:43.918394 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472183918394*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 174116
#260731 11:29:43 server id 1  end_log_pos 174200 CRC32 0xe8f47045 	Query	thread_id=75	exec_time=0	error_code=0
SET TIMESTAMP=1785472183/*!*/;
BEGIN
/*!*/;
# at 174200
#260731 11:29:43 server id 1  end_log_pos 174268 CRC32 0x3822189f 	Table_map: `news`.`sessions` mapped to number 83
# at 174268
#260731 11:29:43 server id 1  end_log_pos 178452 CRC32 0xedd100e7 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
tyRsahMBAAAARAAAALyoAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4J8YIjg=
tyRsah8BAAAAWBAAABS5AgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaEBgAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV5TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1EcDdmWDA9tSRs
agAoAGRmT1hwTXhJSkNvYzVHQUNFMFNnemIyRUtZa2hrZmlaYzhnd2RGVEsMAAAAAAAAAAkxMjcu
MC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2Vi
S2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUz
Ny4zNkQIAABZVG80T250ek9qWTZJbDkwYjJ0bGJpSTdjem8wTURvaWMyUlBXRTFQYzFsak9GTlha
bWhzWlRsWFZtTXhVakJTVTJOM1pIcDRTR2wzYTFseFJuRlhXaUk3Y3pvNU9pSmZjSEpsZG1sdmRY
TWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNemM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJG
a2JXbHVMM1Z6WlhKekx6RXlMMlZrYVhRaU8zTTZOVG9pY205MWRHVWlPM002TXpVNkltWnBiR0Z0
Wlc1MExtRmtiV2x1TG5KbGMyOTFjbU5sY3k1MWMyVnljeTVsWkdsMElqdDljem8yT2lKZlpteGhj
MmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6
b3pPaUoxY213aU8yRTZNRHA3ZlhNNk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16WmhaR1JqTW1J
eVpqazBNREUxT0RCbU1ERTBZemRtTlRobFlUUmxNekE1T0Rsa0lqdHBPakV5TzNNNk1UYzZJbkJo
YzNOM2IzSmtYMmhoYzJoZmQyVmlJanR6T2pZME9pSXpabVpsT0RGak5UVmxOamMzTURNek9EVXda
bUZqWTJSbFltTmpObVJoT0dRek1qQmtOams1TldFMFkyVmlaREl5WldOak9EQXlZbVZrTTJabFky
UmpJanR6T2pZNkluUmhZbXhsY3lJN1lUb3hPbnR6T2pRd09pSTNaV0k0TTJReE1tUTFOR1U1TXpO
ak9EWTNZamRsTUdSaU9UTXpOemszT0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0aE9qYzZlM002
TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKdVlXMWxJ
anR6T2pVNklteGhZbVZzSWp0ek9qUTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3hPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qVTZJ
bVZ0WVdsc0lqdHpPalU2SW14aFltVnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJbWx6U0dsa1pH
VnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldG
aWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3
ZldrNk1qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRa
U0k3Y3pveE1Eb2ljbTlzWlhNdWJtRnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpTYjJ4bGN5
STdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pv
eE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1
UW5sRVpXWmhkV3gwSWp0T08zMXBPak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNk
VzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpX
d2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2pr
NkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002
TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlhNNk9Eb2la
bWxzWVcxbGJuUWlPMkU2TVRwN2N6b3hNem9pYm05MGFXWnBZMkYwYVc5dWN5STdZVG94T250cE9q
QTdZVG94TVRwN2N6b3lPaUpwWkNJN2N6b3pOam9pWVRJMk16UXpPRGN0TVdVeU1pMDBaRFEwTFRr
d1pESXROV0ZrTkRjME5qYzBOMk5sSWp0ek9qYzZJbUZqZEdsdmJuTWlPMkU2TURwN2ZYTTZORG9p
WW05a2VTSTdUanR6T2pVNkltTnZiRzl5SWp0T08zTTZPRG9pWkhWeVlYUnBiMjRpTzJrNk5qQXdN
RHR6T2pRNkltbGpiMjRpTzNNNk1qTTZJbWhsY205cFkyOXVMVzh0WTJobFkyc3RZMmx5WTJ4bElq
dHpPams2SW1samIyNURiMnh2Y2lJN2N6bzNPaUp6ZFdOalpYTnpJanR6T2pZNkluTjBZWFIxY3lJ
N2N6bzNPaUp6ZFdOalpYTnpJanR6T2pVNkluUnBkR3hsSWp0ek9qSXlPaUpFWVhSaElHSmxjbWho
YzJsc0lHUnBjMmx0Y0dGdUlqdHpPalE2SW5acFpYY2lPMDQ3Y3pvNE9pSjJhV1YzUkdGMFlTSTdZ
VG93T250OWZYMTlmUT09tyRsaucA0e0=
'/*!*/;
# at 178452
#260731 11:29:43 server id 1  end_log_pos 178483 CRC32 0x73db1227 	Xid = 1828
COMMIT/*!*/;
# at 178483
#260731 11:29:44 server id 1  end_log_pos 178562 CRC32 0x5f39dd01 	Anonymous_GTID	last_committed=76	sequence_number=77	rbr_only=yes	original_committed_timestamp=1785472184354780	immediate_commit_timestamp=1785472184354780	transaction_length=3106
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472184354780 (2026-07-31 11:29:44.354780 SE Asia Standard Time)
# immediate_commit_timestamp=1785472184354780 (2026-07-31 11:29:44.354780 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472184354780*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 178562
#260731 11:29:44 server id 1  end_log_pos 178646 CRC32 0xb34c1473 	Query	thread_id=76	exec_time=0	error_code=0
SET TIMESTAMP=1785472184/*!*/;
BEGIN
/*!*/;
# at 178646
#260731 11:29:44 server id 1  end_log_pos 178714 CRC32 0x29a605a1 	Table_map: `news`.`sessions` mapped to number 83
# at 178714
#260731 11:29:44 server id 1  end_log_pos 181558 CRC32 0xcea8d1da 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
uCRsahMBAAAARAAAABq6AgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4KEFpik=
uCRsah8BAAAAHAsAADbFAgAAAFMAAAAAAAEAAgAG//8AKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLDAAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZECAAAWVRvNE9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2ljMlJQV0UxUGMxbGpPRk5YWm1oc1pUbFhWbU14VWpCU1UyTjNaSHA0U0ds
M2ExbHhSbkZYV2lJN2N6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002
TXpjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpMekV5TDJWa2FYUWlP
M002TlRvaWNtOTFkR1VpTzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5
NTFjMlZ5Y3k1bFpHbDBJanQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJF
Nk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem96T2lKMWNtd2lPMkU2TURwN2ZYTTZOVEE2
SW14dloybHVYM2RsWWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZ
VFJsTXpBNU9EbGtJanRwT2pFeU8zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9q
WTBPaUl6Wm1abE9ERmpOVFZsTmpjM01ETXpPRFV3Wm1GalkyUmxZbU5qTm1SaE9HUXpNakJrTmpr
NU5XRTBZMlZpWkRJeVpXTmpPREF5WW1Wa00yWmxZMlJqSWp0ek9qWTZJblJoWW14bGN5STdZVG94
T250ek9qUXdPaUkzWldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpi
MngxYlc1eklqdGhPalE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1
aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0
ek9qVTZJa1Z0WVdsc0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJ
N2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRB
NkltTnlaV0YwWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFp
TzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZN
VEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJr
SjVSR1ZtWVhWc2RDSTdZam94TzMxOWZYTTZPRG9pWm1sc1lXMWxiblFpTzJFNk1UcDdjem94TXpv
aWJtOTBhV1pwWTJGMGFXOXVjeUk3WVRveE9udHBPakE3WVRveE1UcDdjem95T2lKcFpDSTdjem96
TmpvaVlUSTJNelF6T0RjdE1XVXlNaTAwWkRRMExUa3daREl0TldGa05EYzBOamMwTjJObElqdHpP
amM2SW1GamRHbHZibk1pTzJFNk1EcDdmWE02TkRvaVltOWtlU0k3VGp0ek9qVTZJbU52Ykc5eUlq
dE9PM002T0RvaVpIVnlZWFJwYjI0aU8yazZOakF3TUR0ek9qUTZJbWxqYjI0aU8zTTZNak02SW1o
bGNtOXBZMjl1TFc4dFkyaGxZMnN0WTJseVkyeGxJanR6T2prNkltbGpiMjVEYjJ4dmNpSTdjem8z
T2lKemRXTmpaWE56SWp0ek9qWTZJbk4wWVhSMWN5STdjem8zT2lKemRXTmpaWE56SWp0ek9qVTZJ
blJwZEd4bElqdHpPakl5T2lKRVlYUmhJR0psY21oaGMybHNJR1JwYzJsdGNHRnVJanR6T2pRNklu
WnBaWGNpTzA0N2N6bzRPaUoyYVdWM1JHRjBZU0k3WVRvd09udDlmWDE5ZlE9PbckbGoCKABkZk9Y
cE14SUpDb2M1R0FDRTBTZ3piMkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81
LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRN
TCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2UAEAAFlUb3pPbnR6
T2pNNkluVnliQ0k3WVRveE9udHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZM
MjVsZDNNdWRHVnpkQzloWkcxcGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9q
STZlM002TXpvaWRYSnNJanR6T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5
MWMyVnljeUk3Y3pvMU9pSnliM1YwWlNJN2N6b3pOam9pWm1sc1lXMWxiblF1WVdSdGFXNHVjbVZ6
YjNWeVkyVnpMblZ6WlhKekxtbHVaR1Y0SWp0OWN6bzJPaUpmWm14aGMyZ2lPMkU2TWpwN2N6b3pP
aUp2YkdRaU8yRTZNRHA3ZlhNNk16b2libVYzSWp0aE9qQTZlMzE5ZlE9PbgkbGra0ajO
'/*!*/;
# at 181558
#260731 11:29:44 server id 1  end_log_pos 181589 CRC32 0xcf2cbc1a 	Xid = 1840
COMMIT/*!*/;
# at 181589
#260731 11:29:44 server id 1  end_log_pos 181668 CRC32 0x5f398cf1 	Anonymous_GTID	last_committed=77	sequence_number=78	rbr_only=yes	original_committed_timestamp=1785472184834821	immediate_commit_timestamp=1785472184834821	transaction_length=1382
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472184834821 (2026-07-31 11:29:44.834821 SE Asia Standard Time)
# immediate_commit_timestamp=1785472184834821 (2026-07-31 11:29:44.834821 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472184834821*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 181668
#260731 11:29:44 server id 1  end_log_pos 181752 CRC32 0x92b76786 	Query	thread_id=77	exec_time=0	error_code=0
SET TIMESTAMP=1785472184/*!*/;
BEGIN
/*!*/;
# at 181752
#260731 11:29:44 server id 1  end_log_pos 181820 CRC32 0x9e658d64 	Table_map: `news`.`sessions` mapped to number 83
# at 181820
#260731 11:29:44 server id 1  end_log_pos 182940 CRC32 0xe3c601f5 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
uCRsahMBAAAARAAAADzGAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4GSNZZ4=
uCRsah8BAAAAYAQAAJzKAgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2UAEAAFlUb3pPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5MWMyVnljeUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3pOam9pWm1sc1lXMWxiblF1WVdSdGFXNHVjbVZ6YjNWeVkyVnpMblZ6WlhKekxt
bHVaR1Y0SWp0OWN6bzJPaUpmWm14aGMyZ2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3ZlhN
Nk16b2libVYzSWp0aE9qQTZlMzE5ZlE9PbgkbGoCKABkZk9YcE14SUpDb2M1R0FDRTBTZ3piMkVL
WWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsg
V2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21l
LzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9udHpP
amc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJp
OTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6T2pJ
NU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnliM1Yw
WlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5qb2lY
MlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRvd09u
dDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmczTjNa
YU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDm4JGxq9QHG4w==
'/*!*/;
# at 182940
#260731 11:29:44 server id 1  end_log_pos 182971 CRC32 0x7bc6492b 	Xid = 1852
COMMIT/*!*/;
# at 182971
#260731 11:29:50 server id 1  end_log_pos 183050 CRC32 0xc9db0179 	Anonymous_GTID	last_committed=78	sequence_number=79	rbr_only=yes	original_committed_timestamp=1785472190588059	immediate_commit_timestamp=1785472190588059	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472190588059 (2026-07-31 11:29:50.588059 SE Asia Standard Time)
# immediate_commit_timestamp=1785472190588059 (2026-07-31 11:29:50.588059 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472190588059*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 183050
#260731 11:29:50 server id 1  end_log_pos 183134 CRC32 0xe8f6bda7 	Query	thread_id=78	exec_time=0	error_code=0
SET TIMESTAMP=1785472190/*!*/;
BEGIN
/*!*/;
# at 183134
#260731 11:29:50 server id 1  end_log_pos 183202 CRC32 0x85f26c37 	Table_map: `news`.`sessions` mapped to number 83
# at 183202
#260731 11:29:50 server id 1  end_log_pos 184386 CRC32 0x5b0d4a6d 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
viRsahMBAAAARAAAAKLLAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4Dds8oU=
viRsah8BAAAAoAQAAELQAgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDm4JGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ5viRsam1KDVs=
'/*!*/;
# at 184386
#260731 11:29:50 server id 1  end_log_pos 184417 CRC32 0x991db27d 	Xid = 1867
COMMIT/*!*/;
# at 184417
#260731 11:29:54 server id 1  end_log_pos 184496 CRC32 0xbde080af 	Anonymous_GTID	last_committed=79	sequence_number=80	rbr_only=yes	original_committed_timestamp=1785472194207140	immediate_commit_timestamp=1785472194207140	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472194207140 (2026-07-31 11:29:54.207140 SE Asia Standard Time)
# immediate_commit_timestamp=1785472194207140 (2026-07-31 11:29:54.207140 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472194207140*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 184496
#260731 11:29:54 server id 1  end_log_pos 184580 CRC32 0xfff501ed 	Query	thread_id=79	exec_time=0	error_code=0
SET TIMESTAMP=1785472194/*!*/;
BEGIN
/*!*/;
# at 184580
#260731 11:29:54 server id 1  end_log_pos 184648 CRC32 0x67905dd7 	Table_map: `news`.`sessions` mapped to number 83
# at 184648
#260731 11:29:54 server id 1  end_log_pos 185832 CRC32 0x70d7e1bc 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
wiRsahMBAAAARAAAAEjRAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4NddkGc=
wiRsah8BAAAAoAQAAOjVAgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDm+JGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ5wiRsarzh13A=
'/*!*/;
# at 185832
#260731 11:29:54 server id 1  end_log_pos 185863 CRC32 0x850e667e 	Xid = 1879
COMMIT/*!*/;
# at 185863
#260731 11:29:57 server id 1  end_log_pos 185942 CRC32 0x7952a2e4 	Anonymous_GTID	last_committed=80	sequence_number=81	rbr_only=yes	original_committed_timestamp=1785472197959038	immediate_commit_timestamp=1785472197959038	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472197959038 (2026-07-31 11:29:57.959038 SE Asia Standard Time)
# immediate_commit_timestamp=1785472197959038 (2026-07-31 11:29:57.959038 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472197959038*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 185942
#260731 11:29:57 server id 1  end_log_pos 186026 CRC32 0x86512688 	Query	thread_id=80	exec_time=0	error_code=0
SET TIMESTAMP=1785472197/*!*/;
BEGIN
/*!*/;
# at 186026
#260731 11:29:57 server id 1  end_log_pos 186094 CRC32 0x03d1ff6c 	Table_map: `news`.`sessions` mapped to number 83
# at 186094
#260731 11:29:57 server id 1  end_log_pos 187278 CRC32 0xaa4a9760 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
xSRsahMBAAAARAAAAO7WAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4Gz/0QM=
xSRsah8BAAAAoAQAAI7bAgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDnCJGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ5xSRsamCXSqo=
'/*!*/;
# at 187278
#260731 11:29:57 server id 1  end_log_pos 187309 CRC32 0xc5b05ec4 	Xid = 1894
COMMIT/*!*/;
# at 187309
#260731 11:30:01 server id 1  end_log_pos 187388 CRC32 0x15ef98cc 	Anonymous_GTID	last_committed=81	sequence_number=82	rbr_only=yes	original_committed_timestamp=1785472201404273	immediate_commit_timestamp=1785472201404273	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472201404273 (2026-07-31 11:30:01.404273 SE Asia Standard Time)
# immediate_commit_timestamp=1785472201404273 (2026-07-31 11:30:01.404273 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472201404273*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 187388
#260731 11:30:01 server id 1  end_log_pos 187472 CRC32 0xfbae49b7 	Query	thread_id=81	exec_time=0	error_code=0
SET TIMESTAMP=1785472201/*!*/;
BEGIN
/*!*/;
# at 187472
#260731 11:30:01 server id 1  end_log_pos 187540 CRC32 0x1826b223 	Table_map: `news`.`sessions` mapped to number 83
# at 187540
#260731 11:30:01 server id 1  end_log_pos 188724 CRC32 0xa94658a4 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
ySRsahMBAAAARAAAAJTcAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4COyJhg=
ySRsah8BAAAAoAQAADThAgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDnFJGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ5ySRsaqRYRqk=
'/*!*/;
# at 188724
#260731 11:30:01 server id 1  end_log_pos 188755 CRC32 0x01235ef4 	Xid = 1906
COMMIT/*!*/;
# at 188755
#260731 11:30:09 server id 1  end_log_pos 188834 CRC32 0x2cf7fe0e 	Anonymous_GTID	last_committed=82	sequence_number=83	rbr_only=yes	original_committed_timestamp=1785472209449324	immediate_commit_timestamp=1785472209449324	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472209449324 (2026-07-31 11:30:09.449324 SE Asia Standard Time)
# immediate_commit_timestamp=1785472209449324 (2026-07-31 11:30:09.449324 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472209449324*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 188834
#260731 11:30:09 server id 1  end_log_pos 188918 CRC32 0x25f53fea 	Query	thread_id=82	exec_time=0	error_code=0
SET TIMESTAMP=1785472209/*!*/;
BEGIN
/*!*/;
# at 188918
#260731 11:30:09 server id 1  end_log_pos 188986 CRC32 0xb046c707 	Table_map: `news`.`sessions` mapped to number 83
# at 188986
#260731 11:30:09 server id 1  end_log_pos 190170 CRC32 0x7434d13c 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
0SRsahMBAAAARAAAADriAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4AfHRrA=
0SRsah8BAAAAoAQAANrmAgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDnJJGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ50SRsajzRNHQ=
'/*!*/;
# at 190170
#260731 11:30:09 server id 1  end_log_pos 190201 CRC32 0x0d627b7b 	Xid = 1921
COMMIT/*!*/;
# at 190201
#260731 11:30:15 server id 1  end_log_pos 190280 CRC32 0xfd959e9f 	Anonymous_GTID	last_committed=83	sequence_number=84	rbr_only=yes	original_committed_timestamp=1785472215824959	immediate_commit_timestamp=1785472215824959	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472215824959 (2026-07-31 11:30:15.824959 SE Asia Standard Time)
# immediate_commit_timestamp=1785472215824959 (2026-07-31 11:30:15.824959 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472215824959*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 190280
#260731 11:30:15 server id 1  end_log_pos 190364 CRC32 0x2f1f4d33 	Query	thread_id=83	exec_time=0	error_code=0
SET TIMESTAMP=1785472215/*!*/;
BEGIN
/*!*/;
# at 190364
#260731 11:30:15 server id 1  end_log_pos 190432 CRC32 0x98b63978 	Table_map: `news`.`sessions` mapped to number 83
# at 190432
#260731 11:30:15 server id 1  end_log_pos 191616 CRC32 0x5bec2574 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
1yRsahMBAAAARAAAAODnAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4Hg5tpg=
1yRsah8BAAAAoAQAAIDsAgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDnRJGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ51yRsanQl7Fs=
'/*!*/;
# at 191616
#260731 11:30:15 server id 1  end_log_pos 191647 CRC32 0x4f6ab5b0 	Xid = 1936
COMMIT/*!*/;
# at 191647
#260731 11:30:33 server id 1  end_log_pos 191726 CRC32 0x0860da85 	Anonymous_GTID	last_committed=84	sequence_number=85	rbr_only=yes	original_committed_timestamp=1785472233457040	immediate_commit_timestamp=1785472233457040	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472233457040 (2026-07-31 11:30:33.457040 SE Asia Standard Time)
# immediate_commit_timestamp=1785472233457040 (2026-07-31 11:30:33.457040 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472233457040*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 191726
#260731 11:30:33 server id 1  end_log_pos 191810 CRC32 0x67cb7fae 	Query	thread_id=84	exec_time=0	error_code=0
SET TIMESTAMP=1785472233/*!*/;
BEGIN
/*!*/;
# at 191810
#260731 11:30:33 server id 1  end_log_pos 191878 CRC32 0x533473d2 	Table_map: `news`.`sessions` mapped to number 83
# at 191878
#260731 11:30:33 server id 1  end_log_pos 193062 CRC32 0xb7d39473 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
6SRsahMBAAAARAAAAIbtAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4NJzNFM=
6SRsah8BAAAAoAQAACbyAgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDnXJGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ56SRsanOU07c=
'/*!*/;
# at 193062
#260731 11:30:33 server id 1  end_log_pos 193093 CRC32 0xbc2d82c3 	Xid = 1948
COMMIT/*!*/;
# at 193093
#260731 11:30:34 server id 1  end_log_pos 193172 CRC32 0xe0e4fde0 	Anonymous_GTID	last_committed=85	sequence_number=86	rbr_only=yes	original_committed_timestamp=1785472234062799	immediate_commit_timestamp=1785472234062799	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472234062799 (2026-07-31 11:30:34.062799 SE Asia Standard Time)
# immediate_commit_timestamp=1785472234062799 (2026-07-31 11:30:34.062799 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472234062799*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 193172
#260731 11:30:34 server id 1  end_log_pos 193256 CRC32 0x6f41023c 	Query	thread_id=85	exec_time=0	error_code=0
SET TIMESTAMP=1785472234/*!*/;
BEGIN
/*!*/;
# at 193256
#260731 11:30:34 server id 1  end_log_pos 193324 CRC32 0x4fda5d4f 	Table_map: `news`.`sessions` mapped to number 83
# at 193324
#260731 11:30:34 server id 1  end_log_pos 194508 CRC32 0x5c4510a8 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
6iRsahMBAAAARAAAACzzAgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4E9d2k8=
6iRsah8BAAAAoAQAAMz3AgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDnpJGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ56iRsaqgQRVw=
'/*!*/;
# at 194508
#260731 11:30:34 server id 1  end_log_pos 194539 CRC32 0x969d832e 	Xid = 1960
COMMIT/*!*/;
# at 194539
#260731 11:30:35 server id 1  end_log_pos 194618 CRC32 0x31144558 	Anonymous_GTID	last_committed=86	sequence_number=87	rbr_only=yes	original_committed_timestamp=1785472235221160	immediate_commit_timestamp=1785472235221160	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472235221160 (2026-07-31 11:30:35.221160 SE Asia Standard Time)
# immediate_commit_timestamp=1785472235221160 (2026-07-31 11:30:35.221160 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472235221160*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 194618
#260731 11:30:35 server id 1  end_log_pos 194702 CRC32 0x722593aa 	Query	thread_id=88	exec_time=0	error_code=0
SET TIMESTAMP=1785472235/*!*/;
BEGIN
/*!*/;
# at 194702
#260731 11:30:35 server id 1  end_log_pos 194770 CRC32 0x9d582ccb 	Table_map: `news`.`sessions` mapped to number 83
# at 194770
#260731 11:30:35 server id 1  end_log_pos 195954 CRC32 0x49e5be8a 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
6yRsahMBAAAARAAAANL4AgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4MssWJ0=
6yRsah8BAAAAoAQAAHL9AgAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDnqJGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ56yRsaoq+5Uk=
'/*!*/;
# at 195954
#260731 11:30:35 server id 1  end_log_pos 195985 CRC32 0xaeb739d6 	Xid = 1996
COMMIT/*!*/;
# at 195985
#260731 11:30:37 server id 1  end_log_pos 196064 CRC32 0x5a2ef33c 	Anonymous_GTID	last_committed=87	sequence_number=88	rbr_only=yes	original_committed_timestamp=1785472237919186	immediate_commit_timestamp=1785472237919186	transaction_length=1446
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472237919186 (2026-07-31 11:30:37.919186 SE Asia Standard Time)
# immediate_commit_timestamp=1785472237919186 (2026-07-31 11:30:37.919186 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472237919186*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 196064
#260731 11:30:37 server id 1  end_log_pos 196148 CRC32 0x81be75e6 	Query	thread_id=89	exec_time=0	error_code=0
SET TIMESTAMP=1785472237/*!*/;
BEGIN
/*!*/;
# at 196148
#260731 11:30:37 server id 1  end_log_pos 196216 CRC32 0x8b46fb07 	Table_map: `news`.`sessions` mapped to number 83
# at 196216
#260731 11:30:37 server id 1  end_log_pos 197400 CRC32 0x20d73f3e 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
7SRsahMBAAAARAAAAHj+AgAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4Af7Ros=
7SRsah8BAAAAoAQAABgDAwAAAFMAAAAAAAEAAgAG//8CKABkZk9YcE14SUpDb2M1R0FDRTBTZ3pi
MkVLWWtoa2ZpWmM4Z3dkRlRLCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2kAEAAFlUbzBPbnR6T2pNNkluVnliQ0k3WVRveE9u
dHpPamc2SW1sdWRHVnVaR1ZrSWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcx
cGJpOTFjMlZ5Y3lJN2ZYTTZPVG9pWDNCeVpYWnBiM1Z6SWp0aE9qSTZlM002TXpvaWRYSnNJanR6
T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFwYmk5c2IyZHBiaUk3Y3pvMU9pSnli
M1YwWlNJN2N6b3lOVG9pWm1sc1lXMWxiblF1WVdSdGFXNHVZWFYwYUM1c2IyZHBiaUk3ZlhNNk5q
b2lYMlpzWVhOb0lqdGhPakk2ZTNNNk16b2liMnhrSWp0aE9qQTZlMzF6T2pNNkltNWxkeUk3WVRv
d09udDlmWE02TmpvaVgzUnZhMlZ1SWp0ek9qUXdPaUl4VVVsclUxWlNiMDF6ZG1oSGVrSmhWRmcz
TjNaYU5HMHdhV0YwTXpCaVdFaG9UMmsyWTNBMElqdDnrJGxqAigAZGZPWHBNeElKQ29jNUdBQ0Uw
U2d6YjJFS1lraGtmaVpjOGd3ZEZUSwkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNpABAABZVG8wT250ek9qTTZJblZ5YkNJN1lU
b3hPbnR6T2pnNkltbHVkR1Z1WkdWa0lqdHpPakk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5
aFpHMXBiaTkxYzJWeWN5STdmWE02T1RvaVgzQnlaWFpwYjNWeklqdGhPakk2ZTNNNk16b2lkWEpz
SWp0ek9qSTVPaUpvZEhSd2N6b3ZMMjVsZDNNdWRHVnpkQzloWkcxcGJpOXNiMmRwYmlJN2N6bzFP
aUp5YjNWMFpTSTdjem95TlRvaVptbHNZVzFsYm5RdVlXUnRhVzR1WVhWMGFDNXNiMmRwYmlJN2ZY
TTZOam9pWDJac1lYTm9JanRoT2pJNmUzTTZNem9pYjJ4a0lqdGhPakE2ZTMxek9qTTZJbTVsZHlJ
N1lUb3dPbnQ5ZlhNNk5qb2lYM1J2YTJWdUlqdHpPalF3T2lJeFVVbHJVMVpTYjAxemRtaEhla0po
VkZnM04zWmFORzB3YVdGME16QmlXRWhvVDJrMlkzQTBJanQ57SRsaj4/1yA=
'/*!*/;
# at 197400
#260731 11:30:37 server id 1  end_log_pos 197431 CRC32 0xa99899e3 	Xid = 2011
COMMIT/*!*/;
# at 197431
#260731 11:30:47 server id 1  end_log_pos 197510 CRC32 0xc4694e3b 	Anonymous_GTID	last_committed=88	sequence_number=89	rbr_only=yes	original_committed_timestamp=1785472247837420	immediate_commit_timestamp=1785472247837420	transaction_length=361
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472247837420 (2026-07-31 11:30:47.837420 SE Asia Standard Time)
# immediate_commit_timestamp=1785472247837420 (2026-07-31 11:30:47.837420 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472247837420*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 197510
#260731 11:30:47 server id 1  end_log_pos 197585 CRC32 0x5b606cc5 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472247/*!*/;
BEGIN
/*!*/;
# at 197585
#260731 11:30:47 server id 1  end_log_pos 197644 CRC32 0xfdc49cdc 	Table_map: `news`.`cache` mapped to number 88
# at 197644
#260731 11:30:47 server id 1  end_log_pos 197761 CRC32 0x57561078 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
9yRsahMBAAAAOwAAAAwEAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Nyc
xP0=
9yRsaiABAAAAdQAAAIEEAwAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjFmMjU2OTJlOTA3MTg4NmQ3ZDRiMzgyMDE5MGIwOTYwMmY3NDgwMjIFAABpOjE1O/MkbGp4
EFZX
'/*!*/;
# at 197761
#260731 11:30:47 server id 1  end_log_pos 197792 CRC32 0x5c6efe4b 	Xid = 2026
COMMIT/*!*/;
# at 197792
#260731 11:30:47 server id 1  end_log_pos 197871 CRC32 0xe3b1bc68 	Anonymous_GTID	last_committed=89	sequence_number=90	rbr_only=yes	original_committed_timestamp=1785472247839779	immediate_commit_timestamp=1785472247839779	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472247839779 (2026-07-31 11:30:47.839779 SE Asia Standard Time)
# immediate_commit_timestamp=1785472247839779 (2026-07-31 11:30:47.839779 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472247839779*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 197871
#260731 11:30:47 server id 1  end_log_pos 197946 CRC32 0x08aee3b4 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472247/*!*/;
BEGIN
/*!*/;
# at 197946
#260731 11:30:47 server id 1  end_log_pos 198005 CRC32 0xc4f2a22e 	Table_map: `news`.`cache` mapped to number 88
# at 198005
#260731 11:30:47 server id 1  end_log_pos 198121 CRC32 0x8a112d39 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
9yRsahMBAAAAOwAAAHUFAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4C6i
8sQ=
9yRsah4BAAAAdAAAAOkFAwAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjFmMjU2OTJlOTA3MTg4NmQ3ZDRiMzgyMDE5MGIwOTYwMmY3NDgwMjIEAABpOjE7MyVsajkt
EYo=
'/*!*/;
# at 198121
#260731 11:30:47 server id 1  end_log_pos 198152 CRC32 0x4bb9cb15 	Xid = 2029
COMMIT/*!*/;
# at 198152
#260731 11:30:47 server id 1  end_log_pos 198231 CRC32 0x1e608103 	Anonymous_GTID	last_committed=90	sequence_number=91	rbr_only=yes	original_committed_timestamp=1785472247906742	immediate_commit_timestamp=1785472247906742	transaction_length=369
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472247906742 (2026-07-31 11:30:47.906742 SE Asia Standard Time)
# immediate_commit_timestamp=1785472247906742 (2026-07-31 11:30:47.906742 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472247906742*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 198231
#260731 11:30:47 server id 1  end_log_pos 198306 CRC32 0x61f966c7 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472247/*!*/;
BEGIN
/*!*/;
# at 198306
#260731 11:30:47 server id 1  end_log_pos 198365 CRC32 0x91ffb897 	Table_map: `news`.`cache` mapped to number 88
# at 198365
#260731 11:30:47 server id 1  end_log_pos 198490 CRC32 0x02f93913 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
9yRsahMBAAAAOwAAAN0GAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Je4
/5E=
9yRsaiABAAAAfQAAAFoHAwAAAFgAAAAAAAEAAgAD/wBMAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTYEAABp
OjE7oSRsahM5+QI=
'/*!*/;
# at 198490
#260731 11:30:47 server id 1  end_log_pos 198521 CRC32 0x19be7f72 	Xid = 2041
COMMIT/*!*/;
# at 198521
#260731 11:30:47 server id 1  end_log_pos 198600 CRC32 0x29430027 	Anonymous_GTID	last_committed=91	sequence_number=92	rbr_only=yes	original_committed_timestamp=1785472247909080	immediate_commit_timestamp=1785472247909080	transaction_length=384
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472247909080 (2026-07-31 11:30:47.909080 SE Asia Standard Time)
# immediate_commit_timestamp=1785472247909080 (2026-07-31 11:30:47.909080 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472247909080*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 198600
#260731 11:30:47 server id 1  end_log_pos 198675 CRC32 0x28384bc4 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472247/*!*/;
BEGIN
/*!*/;
# at 198675
#260731 11:30:47 server id 1  end_log_pos 198734 CRC32 0x13dbe4f3 	Table_map: `news`.`cache` mapped to number 88
# at 198734
#260731 11:30:47 server id 1  end_log_pos 198874 CRC32 0x45d42c23 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
9yRsahMBAAAAOwAAAE4IAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4PPk
2xM=
9yRsaiABAAAAjAAAANoIAwAAAFgAAAAAAAEAAgAD/wBSAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTY6dGlt
ZXINAABpOjE3ODU0NzIxNjE7oSRsaiMs1EU=
'/*!*/;
# at 198874
#260731 11:30:47 server id 1  end_log_pos 198905 CRC32 0x7bd24c22 	Xid = 2047
COMMIT/*!*/;
# at 198905
#260731 11:30:47 server id 1  end_log_pos 198984 CRC32 0xf4308cc9 	Anonymous_GTID	last_committed=92	sequence_number=93	rbr_only=yes	original_committed_timestamp=1785472247910598	immediate_commit_timestamp=1785472247910598	transaction_length=384
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472247910598 (2026-07-31 11:30:47.910598 SE Asia Standard Time)
# immediate_commit_timestamp=1785472247910598 (2026-07-31 11:30:47.910598 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472247910598*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 198984
#260731 11:30:47 server id 1  end_log_pos 199059 CRC32 0x3cc7f092 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472247/*!*/;
BEGIN
/*!*/;
# at 199059
#260731 11:30:47 server id 1  end_log_pos 199118 CRC32 0x627f3f22 	Table_map: `news`.`cache` mapped to number 88
# at 199118
#260731 11:30:47 server id 1  end_log_pos 199258 CRC32 0x81ae1c8d 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
9yRsahMBAAAAOwAAAM4JAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4CI/
f2I=
9yRsah4BAAAAjAAAAFoKAwAAAFgAAAAAAAEAAgAD/wBSAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTY6dGlt
ZXINAABpOjE3ODU0NzIzMDc7MyVsao0croE=
'/*!*/;
# at 199258
#260731 11:30:47 server id 1  end_log_pos 199289 CRC32 0x0adb67f9 	Xid = 2050
COMMIT/*!*/;
# at 199289
#260731 11:30:47 server id 1  end_log_pos 199368 CRC32 0x517356c5 	Anonymous_GTID	last_committed=93	sequence_number=94	rbr_only=yes	original_committed_timestamp=1785472247912601	immediate_commit_timestamp=1785472247912601	transaction_length=369
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472247912601 (2026-07-31 11:30:47.912601 SE Asia Standard Time)
# immediate_commit_timestamp=1785472247912601 (2026-07-31 11:30:47.912601 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472247912601*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 199368
#260731 11:30:47 server id 1  end_log_pos 199443 CRC32 0x01c73d68 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472247/*!*/;
BEGIN
/*!*/;
# at 199443
#260731 11:30:47 server id 1  end_log_pos 199502 CRC32 0xf0925351 	Table_map: `news`.`cache` mapped to number 88
# at 199502
#260731 11:30:47 server id 1  end_log_pos 199627 CRC32 0xbdd301a4 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
9yRsahMBAAAAOwAAAE4LAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4FFT
kvA=
9yRsah4BAAAAfQAAAMsLAwAAAFgAAAAAAAEAAgAD/wBMAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTYEAABp
OjA7MyVsaqQB070=
'/*!*/;
# at 199627
#260731 11:30:47 server id 1  end_log_pos 199658 CRC32 0xdf2d54e1 	Xid = 2056
COMMIT/*!*/;
# at 199658
#260731 11:30:47 server id 1  end_log_pos 199737 CRC32 0x9f77c75b 	Anonymous_GTID	last_committed=94	sequence_number=95	rbr_only=yes	original_committed_timestamp=1785472247916788	immediate_commit_timestamp=1785472247916788	transaction_length=469
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472247916788 (2026-07-31 11:30:47.916788 SE Asia Standard Time)
# immediate_commit_timestamp=1785472247916788 (2026-07-31 11:30:47.916788 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472247916788*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 199737
#260731 11:30:47 server id 1  end_log_pos 199821 CRC32 0x72a9963b 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472247/*!*/;
BEGIN
/*!*/;
# at 199821
#260731 11:30:47 server id 1  end_log_pos 199880 CRC32 0xeca3f763 	Table_map: `news`.`cache` mapped to number 88
# at 199880
#260731 11:30:47 server id 1  end_log_pos 200096 CRC32 0x39f1b19e 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
9yRsahMBAAAAOwAAAMgMAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4GP3
o+w=
9yRsah8BAAAA2AAAAKANAwAAAFgAAAAAAAEAAgAD//8ATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJl
LXJhdGUtbGltaXRlcjoxNmQzNmRmZjlhYmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAA
aTowOzMlbGoATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJlLXJhdGUtbGltaXRlcjoxNmQzNmRmZjlh
YmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAAaToxOzMlbGqesfE5
'/*!*/;
# at 200096
#260731 11:30:47 server id 1  end_log_pos 200127 CRC32 0x582a2036 	Xid = 2060
COMMIT/*!*/;
# at 200127
#260731 11:30:48 server id 1  end_log_pos 200206 CRC32 0xb6f71e41 	Anonymous_GTID	last_committed=95	sequence_number=96	rbr_only=yes	original_committed_timestamp=1785472248603124	immediate_commit_timestamp=1785472248603124	transaction_length=862
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472248603124 (2026-07-31 11:30:48.603124 SE Asia Standard Time)
# immediate_commit_timestamp=1785472248603124 (2026-07-31 11:30:48.603124 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472248603124*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 200206
#260731 11:30:48 server id 1  end_log_pos 200281 CRC32 0xdf8c8126 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472248/*!*/;
BEGIN
/*!*/;
# at 200281
#260731 11:30:48 server id 1  end_log_pos 200349 CRC32 0xa36f00ae 	Table_map: `news`.`sessions` mapped to number 83
# at 200349
#260731 11:30:48 server id 1  end_log_pos 200958 CRC32 0x4592821d 	Delete_rows: table id 83 flags: STMT_END_F

BINLOG '
+CRsahMBAAAARAAAAJ0OAwAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4K4Ab6M=
+CRsaiABAAAAYQIAAP4QAwAAAFMAAAAAAAEAAgAG/wIoAGRmT1hwTXhJSkNvYzVHQUNFMFNnemIy
RUtZa2hrZmlaYzhnd2RGVEsJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4w
OyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJv
bWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaQAQAAWVRvME9udHpPak02SW5WeWJDSTdZVG94T250
ek9qZzZJbWx1ZEdWdVpHVmtJanR6T2pJNU9pSm9kSFJ3Y3pvdkwyNWxkM011ZEdWemRDOWhaRzFw
Ymk5MWMyVnljeUk3ZlhNNk9Ub2lYM0J5WlhacGIzVnpJanRoT2pJNmUzTTZNem9pZFhKc0lqdHpP
akk1T2lKb2RIUndjem92TDI1bGQzTXVkR1Z6ZEM5aFpHMXBiaTlzYjJkcGJpSTdjem8xT2lKeWIz
VjBaU0k3Y3pveU5Ub2labWxzWVcxbGJuUXVZV1J0YVc0dVlYVjBhQzVzYjJkcGJpSTdmWE02Tmpv
aVgyWnNZWE5vSWp0aE9qSTZlM002TXpvaWIyeGtJanRoT2pBNmUzMXpPak02SW01bGR5STdZVG93
T250OWZYTTZOam9pWDNSdmEyVnVJanR6T2pRd09pSXhVVWxyVTFaU2IwMXpkbWhIZWtKaFZGZzNO
M1phTkcwd2FXRjBNekJpV0Vob1QyazJZM0EwSWp0Oe0kbGodgpJF
'/*!*/;
# at 200958
#260731 11:30:48 server id 1  end_log_pos 200989 CRC32 0xfde2c3c3 	Xid = 2073
COMMIT/*!*/;
# at 200989
#260731 11:30:48 server id 1  end_log_pos 201068 CRC32 0xeffde73f 	Anonymous_GTID	last_committed=96	sequence_number=97	rbr_only=yes	original_committed_timestamp=1785472248607701	immediate_commit_timestamp=1785472248607701	transaction_length=501
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472248607701 (2026-07-31 11:30:48.607701 SE Asia Standard Time)
# immediate_commit_timestamp=1785472248607701 (2026-07-31 11:30:48.607701 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472248607701*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 201068
#260731 11:30:48 server id 1  end_log_pos 201151 CRC32 0x4bc9d59d 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472248/*!*/;
BEGIN
/*!*/;
# at 201151
#260731 11:30:48 server id 1  end_log_pos 201229 CRC32 0x897d956f 	Table_map: `news`.`activity_logs` mapped to number 101
# at 201229
#260731 11:30:48 server id 1  end_log_pos 201459 CRC32 0x559b0813 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
+CRsahMBAAAATgAAAA0SAwAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeBvlX2J
+CRsah4BAAAA5gAAAPMSAwAAAGUAAAAAAAEAAgAI/wgjAwAAAAAAAAoAAAAAAAAABQBsb2dpbioA
aHR0cHM6Ly9uZXdzLnRlc3QvbGl2ZXdpcmUtZTYwNDQ3NGIvdXBkYXRlCTEyNy4wLjAuMW8ATW96
aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2
IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2amvCiBMI
m1U=
'/*!*/;
# at 201459
#260731 11:30:48 server id 1  end_log_pos 201490 CRC32 0x83cacc1a 	Xid = 2076
COMMIT/*!*/;
# at 201490
#260731 11:30:48 server id 1  end_log_pos 201569 CRC32 0x794bbf8d 	Anonymous_GTID	last_committed=97	sequence_number=98	rbr_only=yes	original_committed_timestamp=1785472248624644	immediate_commit_timestamp=1785472248624644	transaction_length=886
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472248624644 (2026-07-31 11:30:48.624644 SE Asia Standard Time)
# immediate_commit_timestamp=1785472248624644 (2026-07-31 11:30:48.624644 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472248624644*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 201569
#260731 11:30:48 server id 1  end_log_pos 201644 CRC32 0x1829761c 	Query	thread_id=90	exec_time=0	error_code=0
SET TIMESTAMP=1785472248/*!*/;
BEGIN
/*!*/;
# at 201644
#260731 11:30:48 server id 1  end_log_pos 201712 CRC32 0x41d6aa91 	Table_map: `news`.`sessions` mapped to number 83
# at 201712
#260731 11:30:48 server id 1  end_log_pos 202345 CRC32 0xf805d7f3 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
+CRsahMBAAAARAAAAPATAwAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4JGq1kE=
+CRsah4BAAAAeQIAAGkWAwAAAFMAAAAAAAEAAgAG/wAoAFJHSER3dGRZNUs3S2hZUGFXeTZYb3Qx
WE9EejZFZWRyeXFCbkF4ZUUKAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dz
IE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vj
a28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNqABAABZVG8xT250ek9qTTZJblZ5YkNJ
N1lUb3dPbnQ5Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNams2
SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVMMnh2WjJsdUlqdHpPalU2SW5KdmRYUmxJ
anR6T2pJMU9pSm1hV3hoYldWdWRDNWhaRzFwYmk1aGRYUm9MbXh2WjJsdUlqdDljem8yT2lKZlpt
eGhjMmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMx
OWN6bzJPaUpmZEc5clpXNGlPM002TkRBNklqbDZTa3BEU2pseFJGWjFhVXRQYlhwUFpucEljVmRS
Y1doaWJFcElOVVJHWmxVelUwOVFkVUlpTzNNNk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16Wmha
R1JqTW1JeVpqazBNREUxT0RCbU1ERTBZemRtTlRobFlUUmxNekE1T0Rsa0lqdHBPakV3TzMwPfgk
bGrz1wX4
'/*!*/;
# at 202345
#260731 11:30:48 server id 1  end_log_pos 202376 CRC32 0x0d0f081c 	Xid = 2103
COMMIT/*!*/;
# at 202376
#260731 11:30:49 server id 1  end_log_pos 202455 CRC32 0x9a6d4c20 	Anonymous_GTID	last_committed=98	sequence_number=99	rbr_only=yes	original_committed_timestamp=1785472249509829	immediate_commit_timestamp=1785472249509829	transaction_length=2710
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472249509829 (2026-07-31 11:30:49.509829 SE Asia Standard Time)
# immediate_commit_timestamp=1785472249509829 (2026-07-31 11:30:49.509829 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472249509829*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 202455
#260731 11:30:49 server id 1  end_log_pos 202539 CRC32 0xe2cccd98 	Query	thread_id=91	exec_time=0	error_code=0
SET TIMESTAMP=1785472249/*!*/;
BEGIN
/*!*/;
# at 202539
#260731 11:30:49 server id 1  end_log_pos 202607 CRC32 0xf589b7c7 	Table_map: `news`.`sessions` mapped to number 83
# at 202607
#260731 11:30:49 server id 1  end_log_pos 205055 CRC32 0xd15827cb 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
+SRsahMBAAAARAAAAG8XAwAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4Me3ifU=
+SRsah8BAAAAkAkAAP8gAwAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzagAQAAWVRvMU9udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpr
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNkluSnZkWFJs
SWp0ek9qSTFPaUptYVd4aGJXVnVkQzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5Y3pvMk9pSmZa
bXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUz
MTljem8yT2lKZmRHOXJaVzRpTzNNNk5EQTZJamw2U2twRFNqbHhSRloxYVV0UGJYcFBabnBJY1Zk
UmNXaGliRXBJTlVSR1psVXpVMDlRZFVJaU8zTTZOVEE2SW14dloybHVYM2RsWWw4MU9XSmhNelpo
WkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZVFJsTXpBNU9EbGtJanRwT2pFd08zMD34
JGxqACgAUkdIRHd0ZFk1SzdLaFlQYVd5NlhvdDFYT0R6NkVlZHJ5cUJuQXhlRQoAAAAAAAAACTEy
Ny4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVX
ZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkv
NTM3LjM2YAYAAFlUbzNPbnR6T2pNNkluVnliQ0k3WVRvd09udDljem81T2lKZmNISmxkbWx2ZFhN
aU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qazZJbWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZr
YldsdUwzVnpaWEp6SWp0ek9qVTZJbkp2ZFhSbElqdHpPak0yT2lKbWFXeGhiV1Z1ZEM1aFpHMXBi
aTV5WlhOdmRYSmpaWE11ZFhObGNuTXVhVzVrWlhnaU8zMXpPalk2SWw5bWJHRnphQ0k3WVRveU9u
dHpPak02SW05c1pDSTdZVG93T250OWN6b3pPaUp1WlhjaU8yRTZNRHA3Zlgxek9qWTZJbDkwYjJ0
bGJpSTdjem8wTURvaU9YcEtTa05LT1hGRVZuVnBTMDl0ZWs5bWVraHhWMUZ4YUdKc1NrZzFSRVpt
VlROVFQxQjFRaUk3Y3pvMU1Eb2liRzluYVc1ZmQyVmlYelU1WW1Fek5tRmtaR015WWpKbU9UUXdN
VFU0TUdZd01UUmpOMlkxT0dWaE5HVXpNRGs0T1dRaU8yazZNVEE3Y3pveE56b2ljR0Z6YzNkdmNt
UmZhR0Z6YUY5M1pXSWlPM002TmpRNklqSmlZVGcwTldFM04ySmxaVFV4TkRjME16bGpZVE5qWkdN
d05HTmxaalV3WTJJeFl6RTFNbUk0WkRNNU9USmtZMk5qTTJZNE9HRTBNVGszTlRnNE1HSWlPM002
TmpvaWRHRmliR1Z6SWp0aE9qRTZlM002TkRBNklqZGxZamd6WkRFeVpEVTBaVGt6TTJNNE5qZGlO
MlV3WkdJNU16TTNPVGM0WDJOdmJIVnRibk1pTzJFNk5EcDdhVG93TzJFNk56cDdjem8wT2lKMGVY
QmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2SW01aGJXVWlPM002TlRv
aWJHRmlaV3dpTzNNNk5Eb2lUbUZ0WlNJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9p
YVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lO
RG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qRTdZVG8zT250ek9q
UTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2laVzFoYVd3
aU8zTTZOVG9pYkdGaVpXd2lPM002TlRvaVJXMWhhV3dpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2
TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZ
am93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRveU8y
RTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pF
d09pSnliMnhsY3k1dVlXMWxJanR6T2pVNklteGhZbVZzSWp0ek9qVTZJbEp2YkdWeklqdHpPamc2
SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBj
MVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFpt
RjFiSFFpTzA0N2ZXazZNenRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNN
Nk5Eb2libUZ0WlNJN2N6b3hNRG9pWTNKbFlYUmxaRjloZENJN2N6bzFPaUpzWVdKbGJDSTdjem94
TURvaVEzSmxZWFJsWkNCaGRDSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlVi
MmRuYkdWa0lqdGlPakE3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qRTdjem95TkRvaWFY
TlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0aU9qRTdmWDE5ZlE9PfkkbGrLJ1jR
'/*!*/;
# at 205055
#260731 11:30:49 server id 1  end_log_pos 205086 CRC32 0x0d41d205 	Xid = 2136
COMMIT/*!*/;
# at 205086
#260731 11:31:05 server id 1  end_log_pos 205165 CRC32 0x08d68eda 	Anonymous_GTID	last_committed=99	sequence_number=100	rbr_only=yes	original_committed_timestamp=1785472265690340	immediate_commit_timestamp=1785472265690340	transaction_length=6214
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472265690340 (2026-07-31 11:31:05.690340 SE Asia Standard Time)
# immediate_commit_timestamp=1785472265690340 (2026-07-31 11:31:05.690340 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472265690340*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 205165
#260731 11:31:05 server id 1  end_log_pos 205249 CRC32 0xbc268467 	Query	thread_id=92	exec_time=0	error_code=0
SET TIMESTAMP=1785472265/*!*/;
BEGIN
/*!*/;
# at 205249
#260731 11:31:05 server id 1  end_log_pos 205317 CRC32 0xbfeb6c15 	Table_map: `news`.`sessions` mapped to number 83
# at 205317
#260731 11:31:05 server id 1  end_log_pos 211269 CRC32 0xe8e44fd6 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
CSVsahMBAAAARAAAAAUiAwAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4BVs678=
CSVsah8BAAAAQBcAAEU5AwAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZgBgAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpr
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDNWelpYSnpJanR6T2pVNkluSnZkWFJs
SWp0ek9qTTJPaUptYVd4aGJXVnVkQzVoWkcxcGJpNXlaWE52ZFhKalpYTXVkWE5sY25NdWFXNWta
WGdpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9p
SnVaWGNpTzJFNk1EcDdmWDF6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5W
cFMwOXRlazltZWtoeFYxRnhhR0pzU2tnMVJFWm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVm
ZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRP
V1FpTzJrNk1UQTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlU
ZzBOV0UzTjJKbFpUVXhORGMwTXpsallUTmpaR013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RK
a1kyTmpNMlk0T0dFME1UazNOVGc0TUdJaU8zTTZOam9pZEdGaWJHVnpJanRoT2pFNmUzTTZOREE2
SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlP
MkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9p
SnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pv
NE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9p
YVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVa
V1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlq
dHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcx
aGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14
aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpw
YzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBP
aUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5E
b2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhS
bFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpw
YzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlVi
MmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRX
eDBJanRpT2pFN2ZYMTlmUT09+SRsagAoAFJHSER3dGRZNUs3S2hZUGFXeTZYb3QxWE9EejZFZWRy
eXFCbkF4ZUUKAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7
IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9t
ZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNlAPAABZVG8zT250ek9qTTZJblZ5YkNJN1lUb3dPbnQ5
Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNamc2SW1oMGRIQnpP
aTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVMMjVsZDNNaU8zTTZOVG9pY205MWRHVWlPM002TXpVNklt
WnBiR0Z0Wlc1MExtRmtiV2x1TG5KbGMyOTFjbU5sY3k1dVpYZHpMbWx1WkdWNElqdDljem8yT2lK
ZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2
ZTMxOWN6bzJPaUpmZEc5clpXNGlPM002TkRBNklqbDZTa3BEU2pseFJGWjFhVXRQYlhwUFpucElj
VmRSY1doaWJFcElOVVJHWmxVelUwOVFkVUlpTzNNNk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16
WmhaR1JqTW1JeVpqazBNREUxT0RCbU1ERTBZemRtTlRobFlUUmxNekE1T0Rsa0lqdHBPakV3TzNN
Nk1UYzZJbkJoYzNOM2IzSmtYMmhoYzJoZmQyVmlJanR6T2pZME9pSXlZbUU0TkRWaE56ZGlaV1Ux
TVRRM05ETTVZMkV6WTJSak1EUmpaV1kxTUdOaU1XTXhOVEppT0dRek9Ua3laR05qWXpObU9EaGhO
REU1TnpVNE9EQmlJanR6T2pZNkluUmhZbXhsY3lJN1lUb3lPbnR6T2pRd09pSTNaV0k0TTJReE1t
UTFOR1U1TXpOak9EWTNZamRsTUdSaU9UTXpOemszT0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0
aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8w
T2lKdVlXMWxJanR6T2pVNklteGhZbVZzSWp0ek9qUTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmta
VzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlX
SnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0
OWFUb3hPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFs
SWp0ek9qVTZJbVZ0WVdsc0lqdHpPalU2SW14aFltVnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJ
bWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMx
UnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1G
MWJIUWlPMDQ3ZldrNk1qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002
TkRvaWJtRnRaU0k3Y3pveE1Eb2ljbTlzWlhNdWJtRnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFP
aUpTYjJ4bGN5STdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lq
dGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdW
a1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPak03WVRvM09udHpPalE2SW5SNWNHVWlPM002
TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZO
VG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5
Y3pvME1Eb2lPRFV4Tm1Vd016TTBZV1k0Wm1ZNU1tSXpNV05rTURJMFptTTVaVGMwTkdWZlkyOXNk
VzF1Y3lJN1lUbzVPbnRwT2pBN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlq
dHpPalE2SW01aGJXVWlPM002T1RvaWRHaDFiV0p1WVdsc0lqdHpPalU2SW14aFltVnNJanR6T2pr
NklsUm9kVzFpYm1GcGJDSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRu
YkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlVi
MmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPakU3WVRvM09udHpPalE2SW5SNWNH
VWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pZEdsMGJHVWlPM002TlRv
aWJHRmlaV3dpTzNNNk5Ub2lWR2wwYkdVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2
SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZN
alE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3lPMkU2TnpwN2N6
bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXpPaUpqWVhS
bFoyOXllUzV1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pnNklrTmhkR1ZuYjNKNUlqdHpPamc2
SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBj
MVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFpt
RjFiSFFpTzA0N2ZXazZNenRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNN
Nk5Eb2libUZ0WlNJN2N6bzVPaUoxYzJWeUxtNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZOem9p
VUdWdWRXeHBjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJ
anRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJH
VmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pRN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNN
Nk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TmpvaWMzUmhkSFZ6SWp0ek9qVTZJbXho
WW1Wc0lqdHpPalk2SWxOMFlYUjFjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lh
WE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5E
b2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pVN1lUbzNPbnR6T2pR
NkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRFNkltbHpYMmhs
WVdSc2FXNWxJanR6T2pVNklteGhZbVZzSWp0ek9qZzZJa2hsWVdSc2FXNWxJanR6T2pnNkltbHpT
R2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloy
ZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhR
aU8wNDdmV2s2Tmp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9p
Ym1GdFpTSTdjem94TVRvaWFYTmZZbkpsWVd0cGJtY2lPM002TlRvaWJHRmlaV3dpTzNNNk9Eb2lR
bkpsWVd0cGJtY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpD
STdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4
bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG8zTzJFNk56cDdjem8wT2lKMGVYQmxJanR6
T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW5acFpYZHpJanR6T2pVNklteGhZ
bVZzSWp0ek9qVTZJbFpwWlhkeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMx
UnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lK
cGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZPRHRoT2pjNmUzTTZORG9p
ZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNam9pY0hWaWJHbHph
R1ZrWDJGMElqdHpPalU2SW14aFltVnNJanR6T2pFeU9pSlFkV0pzYVhOb1pXUWdZWFFpTzNNNk9E
b2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1s
elZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1Zt
WVhWc2RDSTdUanQ5ZlgxOQklbGrWT+To
'/*!*/;
# at 211269
#260731 11:31:05 server id 1  end_log_pos 211300 CRC32 0x0ef41e1e 	Xid = 2166
COMMIT/*!*/;
# at 211300
#260731 11:31:15 server id 1  end_log_pos 211379 CRC32 0x24d7ba71 	Anonymous_GTID	last_committed=100	sequence_number=101	rbr_only=yes	original_committed_timestamp=1785472275822076	immediate_commit_timestamp=1785472275822076	transaction_length=8514
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472275822076 (2026-07-31 11:31:15.822076 SE Asia Standard Time)
# immediate_commit_timestamp=1785472275822076 (2026-07-31 11:31:15.822076 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472275822076*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 211379
#260731 11:31:15 server id 1  end_log_pos 211463 CRC32 0x65fc46ad 	Query	thread_id=93	exec_time=0	error_code=0
SET TIMESTAMP=1785472275/*!*/;
BEGIN
/*!*/;
# at 211463
#260731 11:31:15 server id 1  end_log_pos 211531 CRC32 0xf3157386 	Table_map: `news`.`sessions` mapped to number 83
# at 211531
#260731 11:31:15 server id 1  end_log_pos 219783 CRC32 0xc47c18f3 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
EyVsahMBAAAARAAAAEs6AwAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4IZzFfM=
EyVsah8BAAAAPCAAAIdaAwAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZQDwAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpn
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDI1bGQzTWlPM002TlRvaWNtOTFkR1Vp
TzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5NXVaWGR6TG1sdVpHVjRJ
anQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJt
VjNJanRoT2pBNmUzMTljem8yT2lKZmRHOXJaVzRpTzNNNk5EQTZJamw2U2twRFNqbHhSRloxYVV0
UGJYcFBabnBJY1ZkUmNXaGliRXBJTlVSR1psVXpVMDlRZFVJaU8zTTZOVEE2SW14dloybHVYM2Rs
WWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZVFJsTXpBNU9EbGtJ
anRwT2pFd08zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9qWTBPaUl5WW1FNE5E
VmhOemRpWldVMU1UUTNORE01WTJFelkyUmpNRFJqWldZMU1HTmlNV014TlRKaU9HUXpPVGt5WkdO
all6Tm1PRGhoTkRFNU56VTRPREJpSWp0ek9qWTZJblJoWW14bGN5STdZVG95T250ek9qUXdPaUkz
WldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpiMngxYlc1eklqdGhP
alE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJt
RnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1aGJXVWlPM002T0Rv
aWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6
Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1Z
WFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6
bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0ek9qVTZJa1Z0WVds
c0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6
T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmta
VzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIy
eDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJN2N6bzFPaUpzWVdK
bGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5V
YjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lh
WE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lUbzNPbnR6T2pRNklu
UjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRBNkltTnlaV0YwWldS
ZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFpTzNNNk9Eb2lhWE5J
YVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZNVEk2SW1selZHOW5a
MnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RD
STdZam94TzMxOWN6bzBNRG9pT0RVeE5tVXdNek0wWVdZNFptWTVNbUl6TVdOa01ESTBabU01WlRj
ME5HVmZZMjlzZFcxdWN5STdZVG81T250cE9qQTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9p
WTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk9Ub2lkR2gxYldKdVlXbHNJanR6T2pVNklteGhZ
bVZzSWp0ek9qazZJbFJvZFcxaWJtRnBiQ0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9U
b2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pv
eU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6
T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaWRHbDBi
R1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pVkdsMGJHVWlPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95
TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpP
akV6T2lKallYUmxaMjl5ZVM1dVlXMWxJanR6T2pVNklteGhZbVZzSWp0ek9qZzZJa05oZEdWbmIz
SjVJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0
ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1Jr
Wlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TXp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpi
MngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem81T2lKMWMyVnlMbTVoYldVaU8zTTZOVG9pYkdGaVpX
d2lPM002TnpvaVVHVnVkV3hwY3lJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qUTdZVG8zT250ek9qUTZJ
blI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5qb2ljM1JoZEhWeklq
dHpPalU2SW14aFltVnNJanR6T2pZNklsTjBZWFIxY3lJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpv
d08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRp
T2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qVTdZ
VG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1U
RTZJbWx6WDJobFlXUnNhVzVsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPamc2SWtobFlXUnNhVzVsSWp0
ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5
T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNl
VVJsWm1GMWJIUWlPMDQ3ZldrNk5qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pveE1Ub2lhWE5mWW5KbFlXdHBibWNpTzNNNk5Ub2liR0ZpWld3
aU8zTTZPRG9pUW5KbFlXdHBibWNpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6
Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJ
bWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvM08yRTZOenA3Y3pvME9p
SjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pVNkluWnBaWGR6SWp0
ek9qVTZJbXhoWW1Wc0lqdHpPalU2SWxacFpYZHpJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3
Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZN
RHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2T0R0aE9q
YzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TWpv
aWNIVmliR2x6YUdWa1gyRjBJanR6T2pVNklteGhZbVZzSWp0ek9qRXlPaUpRZFdKc2FYTm9aV1Fn
WVhRaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hP
M002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpH
Umxia0o1UkdWbVlYVnNkQ0k3VGp0OWZYMTkJJWxqACgAUkdIRHd0ZFk1SzdLaFlQYVd5NlhvdDFY
T0R6NkVlZHJ5cUJuQXhlRQoAAAAAAAAACTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3Mg
TlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNr
bykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2XA8AAFlUbzNPbnR6T2pNNkluVnliQ0k3
WVRvd09udDljem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk16VTZJ
bWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyNWxkM012WTNKbFlYUmxJanR6T2pVNklu
SnZkWFJsSWp0ek9qTTJPaUptYVd4aGJXVnVkQzVoWkcxcGJpNXlaWE52ZFhKalpYTXVibVYzY3k1
amNtVmhkR1VpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5
Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pT1hwS1NrTktP
WEZFVm5WcFMwOXRlazltZWtoeFYxRnhhR0pzU2tnMVJFWm1WVE5UVDFCMVFpSTdjem8xTURvaWJH
OW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdV
ek1EazRPV1FpTzJrNk1UQTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2
SWpKaVlUZzBOV0UzTjJKbFpUVXhORGMwTXpsallUTmpaR013TkdObFpqVXdZMkl4WXpFMU1tSTRa
RE01T1RKa1kyTmpNMlk0T0dFME1UazNOVGc0TUdJaU8zTTZOam9pZEdGaWJHVnpJanRoT2pJNmUz
TTZOREE2SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhW
dGJuTWlPMkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3
Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRa
U0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6
b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdW
dVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlz
ZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZO
VG9pUlcxaGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpD
STdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4
bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6
T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpP
alU2SW14aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6
bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0
ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2
ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZ
M0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6
bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpv
aWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxF
WldaaGRXeDBJanRpT2pFN2ZYMXpPalF3T2lJNE5URTJaVEF6TXpSaFpqaG1aamt5WWpNeFkyUXdN
alJtWXpsbE56UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUyazZNRHRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzVPaUowYUhWdFltNWhhV3dpTzNN
Nk5Ub2liR0ZpWld3aU8zTTZPVG9pVkdoMWJXSnVZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRp
T2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlP
Mkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1U
dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pv
MU9pSjBhWFJzWlNJN2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhw
WkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5i
R1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElq
dE9PMzFwT2pJN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01
aGJXVWlPM002TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9p
UTJGMFpXZHZjbmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxa
Q0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloy
eGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0
ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2prNkluVnpaWEl1Ym1GdFpTSTdjem8x
T2lKc1lXSmxiQ0k3Y3pvM09pSlFaVzUxYkdseklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdj
em81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1E
dHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZORHRoT2pj
NmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6
ZEdGMGRYTWlPM002TlRvaWJHRmlaV3dpTzNNNk5qb2lVM1JoZEhWeklqdHpPamc2SW1selNHbGta
R1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pX
RmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0
N2ZXazZOVHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0
WlNJN2N6b3hNVG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZOVG9pYkdGaVpXd2lPM002T0RvaVNHVmha
R3hwYm1VaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lq
b3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVo
cFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2
SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhPaUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFP
aUpzWVdKbGJDSTdjem80T2lKQ2NtVmhhMmx1WnlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08z
TTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pB
N2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qYzdZVG8z
T250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2lk
bWxsZDNNaU8zTTZOVG9pYkdGaVpXd2lPM002TlRvaVZtbGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pX
NGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdK
c1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5
YVRvNE8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJ
anR6T2pFeU9pSndkV0pzYVhOb1pXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxCMVlt
eHBjMmhsWkNCaGRDSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdW
a0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRu
YkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMTlmWDA9EyVsavMYfMQ=
'/*!*/;
# at 219783
#260731 11:31:15 server id 1  end_log_pos 219814 CRC32 0x1e721d71 	Xid = 2196
COMMIT/*!*/;
# at 219814
#260731 11:31:17 server id 1  end_log_pos 219893 CRC32 0x441bdcee 	Anonymous_GTID	last_committed=101	sequence_number=102	rbr_only=yes	original_committed_timestamp=1785472277094172	immediate_commit_timestamp=1785472277094172	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472277094172 (2026-07-31 11:31:17.094172 SE Asia Standard Time)
# immediate_commit_timestamp=1785472277094172 (2026-07-31 11:31:17.094172 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472277094172*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 219893
#260731 11:31:17 server id 1  end_log_pos 219968 CRC32 0x22a1d3d3 	Query	thread_id=94	exec_time=0	error_code=0
SET TIMESTAMP=1785472277/*!*/;
BEGIN
/*!*/;
# at 219968
#260731 11:31:17 server id 1  end_log_pos 220027 CRC32 0x54312ec9 	Table_map: `news`.`cache` mapped to number 88
# at 220027
#260731 11:31:17 server id 1  end_log_pos 220225 CRC32 0x6a4e7f3b 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
FSVsahMBAAAAOwAAAHtbAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Mku
MVQ=
FSVsah8BAAAAxgAAAEFcAwAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaToxOzMlbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaToyO1ElbGo7f05q
'/*!*/;
# at 220225
#260731 11:31:17 server id 1  end_log_pos 220256 CRC32 0xb7ce96aa 	Xid = 2211
COMMIT/*!*/;
# at 220256
#260731 11:31:17 server id 1  end_log_pos 220335 CRC32 0x47c2932d 	Anonymous_GTID	last_committed=102	sequence_number=103	rbr_only=yes	original_committed_timestamp=1785472277226379	immediate_commit_timestamp=1785472277226379	transaction_length=8526
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472277226379 (2026-07-31 11:31:17.226379 SE Asia Standard Time)
# immediate_commit_timestamp=1785472277226379 (2026-07-31 11:31:17.226379 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472277226379*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 220335
#260731 11:31:17 server id 1  end_log_pos 220419 CRC32 0x93f88058 	Query	thread_id=94	exec_time=0	error_code=0
SET TIMESTAMP=1785472277/*!*/;
BEGIN
/*!*/;
# at 220419
#260731 11:31:17 server id 1  end_log_pos 220487 CRC32 0xd08c3ff2 	Table_map: `news`.`sessions` mapped to number 83
# at 220487
#260731 11:31:17 server id 1  end_log_pos 228751 CRC32 0x8ebb1b99 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
FSVsahMBAAAARAAAAEddAwAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4PI/jNA=
FSVsah8BAAAASCAAAI99AwAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZcDwAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TXpV
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDI1bGQzTXZZM0psWVhSbElqdHpPalU2
SW5KdmRYUmxJanR6T2pNMk9pSm1hV3hoYldWdWRDNWhaRzFwYmk1eVpYTnZkWEpqWlhNdWJtVjNj
eTVqY21WaGRHVWlPMzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNaQ0k3WVRvd09u
dDljem96T2lKdVpYY2lPMkU2TURwN2ZYMXpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2lPWHBLU2tO
S09YRkVWblZwUzA5dGVrOW1la2h4VjFGeGFHSnNTa2cxUkVabVZUTlRUMUIxUWlJN2N6bzFNRG9p
Ykc5bmFXNWZkMlZpWHpVNVltRXpObUZrWkdNeVlqSm1PVFF3TVRVNE1HWXdNVFJqTjJZMU9HVmhO
R1V6TURrNE9XUWlPMms2TVRBN2N6b3hOem9pY0dGemMzZHZjbVJmYUdGemFGOTNaV0lpTzNNNk5q
UTZJakppWVRnME5XRTNOMkpsWlRVeE5EYzBNemxqWVROalpHTXdOR05sWmpVd1kySXhZekUxTW1J
NFpETTVPVEprWTJOak0yWTRPR0UwTVRrM05UZzRNR0lpTzNNNk5qb2lkR0ZpYkdWeklqdGhPakk2
ZTNNNk5EQTZJamRsWWpnelpERXlaRFUwWlRrek0yTTROamRpTjJVd1pHSTVNek0zT1RjNFgyTnZi
SFZ0Ym5NaU8yRTZORHA3YVRvd08yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJp
STdjem8wT2lKdVlXMWxJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZORG9pVG1G
dFpTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3
Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGta
R1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPakU3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVky
OXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pWlcxaGFXd2lPM002TlRvaWJHRmlaV3dpTzNN
Nk5Ub2lSVzFoYVd3aU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhs
WkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5a
MnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3lPMkU2TnpwN2N6bzBPaUowZVhCbElq
dHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXdPaUp5YjJ4bGN5NXVZVzFsSWp0
ek9qVTZJbXhoWW1Wc0lqdHpPalU2SWxKdmJHVnpJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3
Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZN
RHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TXp0aE9q
YzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TURv
aVkzSmxZWFJsWkY5aGRDSTdjem8xT2lKc1lXSmxiQ0k3Y3pveE1Eb2lRM0psWVhSbFpDQmhkQ0k3
Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pBN2N6b3hN
am9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakU3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFu
bEVaV1poZFd4MElqdGlPakU3Zlgxek9qUXdPaUk0TlRFMlpUQXpNelJoWmpobVpqa3lZak14WTJR
d01qUm1ZemxsTnpRMFpWOWpiMngxYlc1eklqdGhPams2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3
WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvNU9pSjBhSFZ0WW01aGFXd2lP
M002TlRvaWJHRmlaV3dpTzNNNk9Ub2lWR2gxYldKdVlXbHNJanR6T2pnNkltbHpTR2xrWkdWdUlq
dGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdV
aU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2
TVR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdj
em8xT2lKMGFYUnNaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpVYVhSc1pTSTdjem80T2lKcGMw
aHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJk
bmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gw
SWp0T08zMXBPakk3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJ
bTVoYldVaU8zTTZNVE02SW1OaGRHVm5iM0o1TG01aGJXVWlPM002TlRvaWJHRmlaV3dpTzNNNk9E
b2lRMkYwWldkdmNua2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4
bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzlu
WjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG96TzJFNk56cDdjem8wT2lKMGVYQmxJ
anR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPams2SW5WelpYSXVibUZ0WlNJN2N6
bzFPaUpzWVdKbGJDSTdjem8zT2lKUVpXNTFiR2x6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pB
N2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2
TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk5EdGhP
amM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMk9p
SnpkR0YwZFhNaU8zTTZOVG9pYkdGaVpXd2lPM002TmpvaVUzUmhkSFZ6SWp0ek9qZzZJbWx6U0ds
a1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRz
WldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlP
MDQ3ZldrNk5UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJt
RnRaU0k3Y3pveE1Ub2lhWE5mYUdWaFpHeHBibVVpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pU0dW
aFpHeHBibVVpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3
WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxa
RWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvMk8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9q
WTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeE9pSnBjMTlpY21WaGEybHVaeUk3Y3pv
MU9pSnNZV0psYkNJN2N6bzRPaUpDY21WaGEybHVaeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pjN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRv
aWRtbGxkM01pTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pVm1sbGQzTWlPM002T0RvaWFYTklhV1Jr
Wlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZ
V0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1Rq
dDlhVG80TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcx
bElqdHpPakV5T2lKd2RXSnNhWE5vWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1USTZJbEIx
WW14cGMyaGxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5i
R1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIy
ZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxOWZYMD0TJWxqACgAUkdIRHd0ZFk1SzdL
aFlQYVd5NlhvdDFYT0R6NkVlZHJ5cUJuQXhlRQoAAAAAAAAACTEyNy4wLjAuMW8ATW96aWxsYS81
LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRN
TCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2XA8AAFlUbzNPbnR6
T2pNNkluVnliQ0k3WVRvd09udDljem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFj
bXdpTzNNNk16VTZJbWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyNWxkM012WTNKbFlY
UmxJanR6T2pVNkluSnZkWFJsSWp0ek9qTTJPaUptYVd4aGJXVnVkQzVoWkcxcGJpNXlaWE52ZFhK
alpYTXVibVYzY3k1amNtVmhkR1VpTzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlz
WkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pZNklsOTBiMnRsYmlJN2N6bzBN
RG9pT1hwS1NrTktPWEZFVm5WcFMwOXRlazltZWtoeFYxRnhhR0pzU2tnMVJFWm1WVE5UVDFCMVFp
STdjem8xTURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRS
ak4yWTFPR1ZoTkdVek1EazRPV1FpTzJrNk1UQTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkz
WldJaU8zTTZOalE2SWpKaVlUZzBOV0UzTjJKbFpUVXhORGMwTXpsallUTmpaR013TkdObFpqVXdZ
Mkl4WXpFMU1tSTRaRE01T1RKa1kyTmpNMlk0T0dFME1UazNOVGc0TUdJaU8zTTZOam9pZEdGaWJH
VnpJanRoT2pJNmUzTTZOREE2SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpN
M09UYzRYMk52YkhWdGJuTWlPMkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2
SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lP
M002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJH
VmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJk
bmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1Vp
TzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2li
R0ZpWld3aU8zTTZOVG9pUlcxaGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNklt
bHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpR
NkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8w
T2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxj
eTV1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pH
VnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldG
aWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3
ZldrNk16dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRa
U0k3Y3pveE1Eb2lZM0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlY
UmxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0
aU9qQTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1Zr
U0dsa1pHVnVRbmxFWldaaGRXeDBJanRpT2pFN2ZYMXpPalF3T2lJNE5URTJaVEF6TXpSaFpqaG1a
amt5WWpNeFkyUXdNalJtWXpsbE56UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUyazZNRHRoT2pjNmUz
TTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzVPaUowYUhW
dFltNWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZPVG9pVkdoMWJXSnVZV2xzSWp0ek9qZzZJbWx6
U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZa
MmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJI
UWlPMDQ3ZldrNk1UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRv
aWJtRnRaU0k3Y3pvMU9pSjBhWFJzWlNJN2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKVWFYUnNaU0k3
Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hN
am9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFu
bEVaV1poZFd4MElqdE9PMzFwT2pJN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcx
dUlqdHpPalE2SW01aGJXVWlPM002TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1VpTzNNNk5Ub2liR0Zp
Wld3aU8zTTZPRG9pUTJGMFpXZHZjbmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJ
bWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1q
UTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvek8yRTZOenA3Y3pv
ME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2prNkluVnpaWEl1
Ym1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvM09pSlFaVzUxYkdseklqdHpPamc2SW1selNHbGta
R1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pX
RmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0
N2ZXazZORHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0
WlNJN2N6bzJPaUp6ZEdGMGRYTWlPM002TlRvaWJHRmlaV3dpTzNNNk5qb2lVM1JoZEhWeklqdHpP
amc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9p
SnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVS
bFptRjFiSFFpTzA0N2ZXazZOVHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRp
TzNNNk5Eb2libUZ0WlNJN2N6b3hNVG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZOVG9pYkdGaVpXd2lP
M002T0RvaVNHVmhaR3hwYm1VaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZH
OW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1s
elZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2TnpwN2N6bzBPaUow
ZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhPaUpwYzE5aWNtVmhh
Mmx1WnlJN2N6bzFPaUpzWVdKbGJDSTdjem80T2lKQ2NtVmhhMmx1WnlJN2N6bzRPaUpwYzBocFpH
UmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdW
aFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRP
TzMxcE9qYzdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhi
V1VpTzNNNk5Ub2lkbWxsZDNNaU8zTTZOVG9pYkdGaVpXd2lPM002TlRvaVZtbGxkM01pTzNNNk9E
b2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1s
elZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1Zt
WVhWc2RDSTdUanQ5YVRvNE8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdj
em8wT2lKdVlXMWxJanR6T2pFeU9pSndkV0pzYVhOb1pXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8z
TTZNVEk2SWxCMVlteHBjMmhsWkNCaGRDSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1Rv
aWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95
TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMTlmWDA9FSVsapkbu44=
'/*!*/;
# at 228751
#260731 11:31:17 server id 1  end_log_pos 228782 CRC32 0xf1a66434 	Xid = 2232
COMMIT/*!*/;
# at 228782
#260731 11:31:22 server id 1  end_log_pos 228861 CRC32 0x053023a5 	Anonymous_GTID	last_committed=103	sequence_number=104	rbr_only=yes	original_committed_timestamp=1785472282593989	immediate_commit_timestamp=1785472282593989	transaction_length=9818
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472282593989 (2026-07-31 11:31:22.593989 SE Asia Standard Time)
# immediate_commit_timestamp=1785472282593989 (2026-07-31 11:31:22.593989 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472282593989*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 228861
#260731 11:31:22 server id 1  end_log_pos 228945 CRC32 0xfb73b5a2 	Query	thread_id=95	exec_time=0	error_code=0
SET TIMESTAMP=1785472282/*!*/;
BEGIN
/*!*/;
# at 228945
#260731 11:31:22 server id 1  end_log_pos 229013 CRC32 0xc0992af5 	Table_map: `news`.`sessions` mapped to number 83
# at 229013
#260731 11:31:22 server id 1  end_log_pos 238569 CRC32 0xb3b320d3 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
GiVsahMBAAAARAAAAJV+AwAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4PUqmcA=
GiVsah8BAAAAVCUAAOmjAwAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZcDwAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TXpV
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDI1bGQzTXZZM0psWVhSbElqdHpPalU2
SW5KdmRYUmxJanR6T2pNMk9pSm1hV3hoYldWdWRDNWhaRzFwYmk1eVpYTnZkWEpqWlhNdWJtVjNj
eTVqY21WaGRHVWlPMzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNaQ0k3WVRvd09u
dDljem96T2lKdVpYY2lPMkU2TURwN2ZYMXpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2lPWHBLU2tO
S09YRkVWblZwUzA5dGVrOW1la2h4VjFGeGFHSnNTa2cxUkVabVZUTlRUMUIxUWlJN2N6bzFNRG9p
Ykc5bmFXNWZkMlZpWHpVNVltRXpObUZrWkdNeVlqSm1PVFF3TVRVNE1HWXdNVFJqTjJZMU9HVmhO
R1V6TURrNE9XUWlPMms2TVRBN2N6b3hOem9pY0dGemMzZHZjbVJmYUdGemFGOTNaV0lpTzNNNk5q
UTZJakppWVRnME5XRTNOMkpsWlRVeE5EYzBNemxqWVROalpHTXdOR05sWmpVd1kySXhZekUxTW1J
NFpETTVPVEprWTJOak0yWTRPR0UwTVRrM05UZzRNR0lpTzNNNk5qb2lkR0ZpYkdWeklqdGhPakk2
ZTNNNk5EQTZJamRsWWpnelpERXlaRFUwWlRrek0yTTROamRpTjJVd1pHSTVNek0zT1RjNFgyTnZi
SFZ0Ym5NaU8yRTZORHA3YVRvd08yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJp
STdjem8wT2lKdVlXMWxJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZORG9pVG1G
dFpTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3
Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGta
R1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPakU3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVky
OXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pWlcxaGFXd2lPM002TlRvaWJHRmlaV3dpTzNN
Nk5Ub2lSVzFoYVd3aU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhs
WkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5a
MnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3lPMkU2TnpwN2N6bzBPaUowZVhCbElq
dHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXdPaUp5YjJ4bGN5NXVZVzFsSWp0
ek9qVTZJbXhoWW1Wc0lqdHpPalU2SWxKdmJHVnpJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3
Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZN
RHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TXp0aE9q
YzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TURv
aVkzSmxZWFJsWkY5aGRDSTdjem8xT2lKc1lXSmxiQ0k3Y3pveE1Eb2lRM0psWVhSbFpDQmhkQ0k3
Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pBN2N6b3hN
am9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakU3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFu
bEVaV1poZFd4MElqdGlPakU3Zlgxek9qUXdPaUk0TlRFMlpUQXpNelJoWmpobVpqa3lZak14WTJR
d01qUm1ZemxsTnpRMFpWOWpiMngxYlc1eklqdGhPams2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3
WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvNU9pSjBhSFZ0WW01aGFXd2lP
M002TlRvaWJHRmlaV3dpTzNNNk9Ub2lWR2gxYldKdVlXbHNJanR6T2pnNkltbHpTR2xrWkdWdUlq
dGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdV
aU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2
TVR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdj
em8xT2lKMGFYUnNaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpVYVhSc1pTSTdjem80T2lKcGMw
aHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJk
bmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gw
SWp0T08zMXBPakk3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJ
bTVoYldVaU8zTTZNVE02SW1OaGRHVm5iM0o1TG01aGJXVWlPM002TlRvaWJHRmlaV3dpTzNNNk9E
b2lRMkYwWldkdmNua2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4
bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzlu
WjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG96TzJFNk56cDdjem8wT2lKMGVYQmxJ
anR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPams2SW5WelpYSXVibUZ0WlNJN2N6
bzFPaUpzWVdKbGJDSTdjem8zT2lKUVpXNTFiR2x6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pB
N2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2
TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk5EdGhP
amM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMk9p
SnpkR0YwZFhNaU8zTTZOVG9pYkdGaVpXd2lPM002TmpvaVUzUmhkSFZ6SWp0ek9qZzZJbWx6U0ds
a1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRz
WldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlP
MDQ3ZldrNk5UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJt
RnRaU0k3Y3pveE1Ub2lhWE5mYUdWaFpHeHBibVVpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pU0dW
aFpHeHBibVVpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3
WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxa
RWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvMk8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9q
WTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeE9pSnBjMTlpY21WaGEybHVaeUk3Y3pv
MU9pSnNZV0psYkNJN2N6bzRPaUpDY21WaGEybHVaeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93
TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlP
akE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pjN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRv
aWRtbGxkM01pTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pVm1sbGQzTWlPM002T0RvaWFYTklhV1Jr
Wlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZ
V0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1Rq
dDlhVG80TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcx
bElqdHpPakV5T2lKd2RXSnNhWE5vWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1USTZJbEIx
WW14cGMyaGxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5i
R1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIy
ZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxOWZYMD0VJWxqACgAUkdIRHd0ZFk1SzdL
aFlQYVd5NlhvdDFYT0R6NkVlZHJ5cUJuQXhlRQoAAAAAAAAACTEyNy4wLjAuMW8ATW96aWxsYS81
LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRN
TCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2aBQAAFlUbzNPbnR6
T2pNNkluVnliQ0k3WVRvd09udDljem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFj
bXdpTzNNNk16UTZJbWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyTmhkR1ZuYjNKcFpY
TWlPM002TlRvaWNtOTFkR1VpTzNNNk5ERTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21O
bGN5NWpZWFJsWjI5eWFXVnpMbWx1WkdWNElqdDljem8yT2lKZlpteGhjMmdpTzJFNk1qcDdjem96
T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6bzJPaUpmZEc5clpXNGlP
M002TkRBNklqbDZTa3BEU2pseFJGWjFhVXRQYlhwUFpucEljVmRSY1doaWJFcElOVVJHWmxVelUw
OVFkVUlpTzNNNk5UQTZJbXh2WjJsdVgzZGxZbDgxT1dKaE16WmhaR1JqTW1JeVpqazBNREUxT0RC
bU1ERTBZemRtTlRobFlUUmxNekE1T0Rsa0lqdHBPakV3TzNNNk1UYzZJbkJoYzNOM2IzSmtYMmho
YzJoZmQyVmlJanR6T2pZME9pSXlZbUU0TkRWaE56ZGlaV1UxTVRRM05ETTVZMkV6WTJSak1EUmpa
V1kxTUdOaU1XTXhOVEppT0dRek9Ua3laR05qWXpObU9EaGhOREU1TnpVNE9EQmlJanR6T2pZNklu
UmhZbXhsY3lJN1lUb3pPbnR6T2pRd09pSTNaV0k0TTJReE1tUTFOR1U1TXpOak9EWTNZamRsTUdS
aU9UTXpOemszT0Y5amIyeDFiVzV6SWp0aE9qUTZlMms2TUR0aE9qYzZlM002TkRvaWRIbHdaU0k3
Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKdVlXMWxJanR6T2pVNklteGhZ
bVZzSWp0ek9qUTZJazVoYldVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZH
OW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1s
elZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3hPMkU2TnpwN2N6bzBPaUow
ZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbVZ0WVdsc0lqdHpP
alU2SW14aFltVnNJanR6T2pVNklrVnRZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6
bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0
ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1qdGhPamM2
ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lj
bTlzWlhNdWJtRnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpTYjJ4bGN5STdjem80T2lKcGMw
aHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJk
bmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gw
SWp0T08zMXBPak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJ
bTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpXd2lPM002TVRBNklr
TnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4
bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002TWpRNkltbHpWRzlu
WjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5Y3pvME1Eb2lPRFV4Tm1Vd016TTBZ
V1k0Wm1ZNU1tSXpNV05rTURJMFptTTVaVGMwTkdWZlkyOXNkVzF1Y3lJN1lUbzVPbnRwT2pBN1lU
bzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002T1Rv
aWRHaDFiV0p1WVdsc0lqdHpPalU2SW14aFltVnNJanR6T2prNklsUm9kVzFpYm1GcGJDSTdjem80
T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lh
WE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpX
WmhkV3gwSWp0T08zMXBPakU3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0
ek9qUTZJbTVoYldVaU8zTTZOVG9pZEdsMGJHVWlPM002TlRvaWJHRmlaV3dpTzNNNk5Ub2lWR2ww
YkdVaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hP
M002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpH
Umxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3lPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1O
dmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXpPaUpqWVhSbFoyOXllUzV1WVcxbElqdHpPalU2
SW14aFltVnNJanR6T2pnNklrTmhkR1ZuYjNKNUlqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdj
em81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1E
dHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNenRoT2pj
NmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzVPaUox
YzJWeUxtNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZOem9pVUdWdWRXeHBjeUk3Y3pvNE9pSnBj
MGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIy
ZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4
MElqdE9PMzFwT2pRN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2
SW01aGJXVWlPM002TmpvaWMzUmhkSFZ6SWp0ek9qVTZJbXhoWW1Wc0lqdHpPalk2SWxOMFlYUjFj
eUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6
b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdW
dVFubEVaV1poZFd4MElqdE9PMzFwT2pVN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlz
ZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRFNkltbHpYMmhsWVdSc2FXNWxJanR6T2pVNklteGhZ
bVZzSWp0ek9qZzZJa2hsWVdSc2FXNWxJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9p
SnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJ
ME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2Tmp0aE9qYzZlM002
TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TVRvaWFYTmZZ
bkpsWVd0cGJtY2lPM002TlRvaWJHRmlaV3dpTzNNNk9Eb2lRbkpsWVd0cGJtY2lPM002T0RvaWFY
TklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5
bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZz
ZENJN1RqdDlhVG8zTzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBP
aUp1WVcxbElqdHpPalU2SW5acFpYZHpJanR6T2pVNklteGhZbVZzSWp0ek9qVTZJbFpwWlhkeklq
dHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pF
eU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVD
ZVVSbFptRjFiSFFpTzA0N2ZXazZPRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFi
VzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNam9pY0hWaWJHbHphR1ZrWDJGMElqdHpPalU2SW14aFlt
VnNJanR6T2pFeU9pSlFkV0pzYVhOb1pXUWdZWFFpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0
ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93
TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5ZlhNNk5EQTZJ
ak5oWlRZek1XUTNZMlJoWlRVeVl6ZzNZV00zTnpJMVpURTNZekE1WkRJM1gyTnZiSFZ0Ym5NaU8y
RTZOVHA3YVRvd08yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lK
dVlXMWxJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZORG9pVG1GdFpTSTdjem80
T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lh
WE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpX
WmhkV3gwSWp0T08zMXBPakU3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0
ek9qUTZJbTVoYldVaU8zTTZORG9pYzJ4MVp5STdjem8xT2lKc1lXSmxiQ0k3Y3pvME9pSlRiSFZu
SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpP
akV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pX
NUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4
MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnBZMjl1SWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2
SWtsamIyNGlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZ
am94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpF
aHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG96TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZ
NkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKdVpYZHpYMk52ZFc1MElqdHpPalU2
SW14aFltVnNJanR6T2pFeU9pSlViM1JoYkNCQ1pYSnBkR0VpTzNNNk9Eb2lhWE5JYVdSa1pXNGlP
Mkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pT
STdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRv
ME8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6
T2pFd09pSmpjbVZoZEdWa1gyRjBJanR6T2pVNklteGhZbVZzSWp0ek9qRXdPaUpEY21WaGRHVmtJ
R0YwSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1E
dHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TVR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdS
a1pXNUNlVVJsWm1GMWJIUWlPMkk2TVR0OWZYMTkaJWxq0yCzsw==
'/*!*/;
# at 238569
#260731 11:31:22 server id 1  end_log_pos 238600 CRC32 0xbc3082b3 	Xid = 2262
COMMIT/*!*/;
# at 238600
#260731 11:31:32 server id 1  end_log_pos 238679 CRC32 0x0ab8678c 	Anonymous_GTID	last_committed=104	sequence_number=105	rbr_only=yes	original_committed_timestamp=1785472292574667	immediate_commit_timestamp=1785472292574667	transaction_length=11094
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472292574667 (2026-07-31 11:31:32.574667 SE Asia Standard Time)
# immediate_commit_timestamp=1785472292574667 (2026-07-31 11:31:32.574667 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472292574667*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 238679
#260731 11:31:32 server id 1  end_log_pos 238763 CRC32 0xda870dfc 	Query	thread_id=96	exec_time=0	error_code=0
SET TIMESTAMP=1785472292/*!*/;
BEGIN
/*!*/;
# at 238763
#260731 11:31:32 server id 1  end_log_pos 238831 CRC32 0x5b3ecf37 	Table_map: `news`.`sessions` mapped to number 83
# at 238831
#260731 11:31:32 server id 1  end_log_pos 249663 CRC32 0xea648b09 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
JCVsahMBAAAARAAAAO+kAwAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4DfPPls=
JCVsah8BAAAAUCoAAD/PAwAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZoFAAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TXpR
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJOaGRHVm5iM0pwWlhNaU8zTTZOVG9p
Y205MWRHVWlPM002TkRFNkltWnBiR0Z0Wlc1MExtRmtiV2x1TG5KbGMyOTFjbU5sY3k1allYUmxa
Mjl5YVdWekxtbHVaR1Y0SWp0OWN6bzJPaUpmWm14aGMyZ2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8y
RTZNRHA3ZlhNNk16b2libVYzSWp0aE9qQTZlMzE5Y3pvMk9pSmZkRzlyWlc0aU8zTTZOREE2SWps
NlNrcERTamx4UkZaMWFVdFBiWHBQWm5wSWNWZFJjV2hpYkVwSU5VUkdabFV6VTA5UWRVSWlPM002
TlRBNklteHZaMmx1WDNkbFlsODFPV0poTXpaaFpHUmpNbUl5WmprME1ERTFPREJtTURFMFl6ZG1O
VGhsWVRSbE16QTVPRGxrSWp0cE9qRXdPM002TVRjNkluQmhjM04zYjNKa1gyaGhjMmhmZDJWaUlq
dHpPalkwT2lJeVltRTRORFZoTnpkaVpXVTFNVFEzTkRNNVkyRXpZMlJqTURSalpXWTFNR05pTVdN
eE5USmlPR1F6T1RreVpHTmpZek5tT0RoaE5ERTVOelU0T0RCaUlqdHpPalk2SW5SaFlteGxjeUk3
WVRvek9udHpPalF3T2lJM1pXSTRNMlF4TW1RMU5HVTVNek5qT0RZM1lqZGxNR1JpT1RNek56azNP
RjlqYjJ4MWJXNXpJanRoT2pRNmUyazZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIy
eDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzBPaUp1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pR
NklrNWhiV1VpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3
WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxa
RWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRveE8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9q
WTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pVNkltVnRZV2xzSWp0ek9qVTZJbXhoWW1W
c0lqdHpPalU2SWtWdFlXbHNJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2
WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBj
MVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TWp0aE9qYzZlM002TkRvaWRI
bHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TURvaWNtOXNaWE11Ym1G
dFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvMU9pSlNiMnhsY3lJN2N6bzRPaUpwYzBocFpHUmxiaUk3
WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJ
anRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9q
TTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNN
Nk1UQTZJbU55WldGMFpXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEE2SWtOeVpXRjBaV1Fn
WVhRaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3dP
M002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpveE8zTTZNalE2SW1selZHOW5aMnhsWkVocFpH
Umxia0o1UkdWbVlYVnNkQ0k3WWpveE8zMTljem8wTURvaU9EVXhObVV3TXpNMFlXWTRabVk1TW1J
ek1XTmtNREkwWm1NNVpUYzBOR1ZmWTI5c2RXMXVjeUk3WVRvNU9udHBPakE3WVRvM09udHpPalE2
SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZPVG9pZEdoMWJXSnVZ
V2xzSWp0ek9qVTZJbXhoWW1Wc0lqdHpPams2SWxSb2RXMWlibUZwYkNJN2N6bzRPaUpwYzBocFpH
UmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdW
aFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRP
TzMxcE9qRTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhi
V1VpTzNNNk5Ub2lkR2wwYkdVaU8zTTZOVG9pYkdGaVpXd2lPM002TlRvaVZHbDBiR1VpTzNNNk9E
b2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1s
elZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1Zt
WVhWc2RDSTdUanQ5YVRveU8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdj
em8wT2lKdVlXMWxJanR6T2pFek9pSmpZWFJsWjI5eWVTNXVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lq
dHpPamc2SWtOaGRHVm5iM0o1SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvNU9pSjFjMlZ5TG01aGJX
VWlPM002TlRvaWJHRmlaV3dpTzNNNk56b2lVR1Z1ZFd4cGN5STdjem80T2lKcGMwaHBaR1JsYmlJ
N1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhs
SWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBP
alE3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8z
TTZOam9pYzNSaGRIVnpJanR6T2pVNklteGhZbVZzSWp0ek9qWTZJbE4wWVhSMWN5STdjem80T2lK
cGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5V
YjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhk
V3gwSWp0T08zMXBPalU3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9q
UTZJbTVoYldVaU8zTTZNVEU2SW1selgyaGxZV1JzYVc1bElqdHpPalU2SW14aFltVnNJanR6T2pn
NklraGxZV1JzYVc1bElqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRz
WldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZa
MmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOanRoT2pjNmUzTTZORG9pZEhsd1pT
STdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNVG9pYVhOZlluSmxZV3RwYm1j
aU8zTTZOVG9pYkdGaVpXd2lPM002T0RvaVFuSmxZV3RwYm1jaU8zTTZPRG9pYVhOSWFXUmtaVzRp
TzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNa
U0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFU
bzNPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0
ek9qVTZJblpwWlhkeklqdHpPalU2SW14aFltVnNJanR6T2pVNklsWnBaWGR6SWp0ek9qZzZJbWx6
U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZa
MmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJI
UWlPMDQ3ZldrNk9EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRv
aWJtRnRaU0k3Y3pveE1qb2ljSFZpYkdsemFHVmtYMkYwSWp0ek9qVTZJbXhoWW1Wc0lqdHpPakV5
T2lKUWRXSnNhWE5vWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpW
RzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNklt
bHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlmWE02TkRBNklqTmhaVFl6TVdR
M1kyUmhaVFV5WXpnM1lXTTNOekkxWlRFM1l6QTVaREkzWDJOdmJIVnRibk1pTzJFNk5UcDdhVG93
TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpP
alE2SW01aGJXVWlPM002TlRvaWJHRmlaV3dpTzNNNk5Eb2lUbUZ0WlNJN2N6bzRPaUpwYzBocFpH
UmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdW
aFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRP
TzMxcE9qRTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhi
V1VpTzNNNk5Eb2ljMngxWnlJN2N6bzFPaUpzWVdKbGJDSTdjem8wT2lKVGJIVm5JanR6T2pnNklt
bHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFS
dloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYx
YkhRaU8wNDdmV2s2TWp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZO
RG9pYm1GdFpTSTdjem8wT2lKcFkyOXVJanR6T2pVNklteGhZbVZzSWp0ek9qUTZJa2xqYjI0aU8z
TTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJ
NkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1
UkdWbVlYVnNkQ0k3VGp0OWFUb3pPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRi
aUk3Y3pvME9pSnVZVzFsSWp0ek9qRXdPaUp1WlhkelgyTnZkVzUwSWp0ek9qVTZJbXhoWW1Wc0lq
dHpPakV5T2lKVWIzUmhiQ0JDWlhKcGRHRWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2pr
NkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002
TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG8wTzJFNk56cDdj
em8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKamNt
VmhkR1ZrWDJGMElqdHpPalU2SW14aFltVnNJanR6T2pFd09pSkRjbVZoZEdWa0lHRjBJanR6T2pn
NkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TUR0ek9qRXlPaUpw
YzFSdloyZHNaV0ZpYkdVaU8ySTZNVHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxa
bUYxYkhRaU8ySTZNVHQ5ZlgxORolbGoAKABSR0hEd3RkWTVLN0toWVBhV3k2WG90MVhPRHo2RWVk
cnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4w
OyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJv
bWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZYFAAAWVRvM09udHpPak02SW5WeWJDSTdZVG93T250
OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpnNkltaDBkSEJ6
T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDI1bGQzTWlPM002TlRvaWNtOTFkR1VpTzNNNk16VTZJ
bVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5NXVaWGR6TG1sdVpHVjRJanQ5Y3pvMk9p
SmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pB
NmUzMTljem8yT2lKZmRHOXJaVzRpTzNNNk5EQTZJamw2U2twRFNqbHhSRloxYVV0UGJYcFBabnBJ
Y1ZkUmNXaGliRXBJTlVSR1psVXpVMDlRZFVJaU8zTTZOVEE2SW14dloybHVYM2RsWWw4MU9XSmhN
elpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZVFJsTXpBNU9EbGtJanRwT2pFd08z
TTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9qWTBPaUl5WW1FNE5EVmhOemRpWldV
MU1UUTNORE01WTJFelkyUmpNRFJqWldZMU1HTmlNV014TlRKaU9HUXpPVGt5WkdOall6Tm1PRGho
TkRFNU56VTRPREJpSWp0ek9qWTZJblJoWW14bGN5STdZVG96T250ek9qUXdPaUkzWldJNE0yUXhN
bVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpiMngxYlc1eklqdGhPalE2ZTJrNk1E
dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pv
ME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1aGJXVWlPM002T0RvaWFYTklhV1Jr
Wlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZ
V0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1Rq
dDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcx
bElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0ek9qVTZJa1Z0WVdsc0lqdHpPamc2
SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBj
MVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFpt
RjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNN
Nk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8x
T2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJ
anRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJH
VmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNN
Nk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRBNkltTnlaV0YwWldSZllYUWlPM002
TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFpTzNNNk9Eb2lhWE5JYVdSa1pXNGlP
Mkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pT
STdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdZam94TzMx
OWN6bzBNRG9pT0RVeE5tVXdNek0wWVdZNFptWTVNbUl6TVdOa01ESTBabU01WlRjME5HVmZZMjlz
ZFcxdWN5STdZVG81T250cE9qQTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJ
anR6T2pRNkltNWhiV1VpTzNNNk9Ub2lkR2gxYldKdVlXbHNJanR6T2pVNklteGhZbVZzSWp0ek9q
azZJbFJvZFcxaWJtRnBiQ0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJk
bmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5V
YjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVj
R1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaWRHbDBiR1VpTzNNNk5U
b2liR0ZpWld3aU8zTTZOVG9pVkdsMGJHVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2pr
NkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002
TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdj
em8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV6T2lKallY
UmxaMjl5ZVM1dVlXMWxJanR6T2pVNklteGhZbVZzSWp0ek9qZzZJa05oZEdWbmIzSjVJanR6T2pn
NkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpw
YzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxa
bUYxYkhRaU8wNDdmV2s2TXp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8z
TTZORG9pYm1GdFpTSTdjem81T2lKMWMyVnlMbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002Tnpv
aVVHVnVkV3hwY3lJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1Zr
SWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5i
R1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qUTdZVG8zT250ek9qUTZJblI1Y0dVaU8z
TTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5qb2ljM1JoZEhWeklqdHpPalU2SW14
aFltVnNJanR6T2pZNklsTjBZWFIxY3lJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9p
YVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lO
RG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qVTdZVG8zT250ek9q
UTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1URTZJbWx6WDJo
bFlXUnNhVzVsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPamc2SWtobFlXUnNhVzVsSWp0ek9qZzZJbWx6
U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZa
MmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJI
UWlPMDQ3ZldrNk5qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRv
aWJtRnRaU0k3Y3pveE1Ub2lhWE5mWW5KbFlXdHBibWNpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9p
UW5KbFlXdHBibWNpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxa
Q0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloy
eGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvM08yRTZOenA3Y3pvME9pSjBlWEJsSWp0
ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pVNkluWnBaWGR6SWp0ek9qVTZJbXho
WW1Wc0lqdHpPalU2SWxacFpYZHpJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBj
MVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9p
SnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2T0R0aE9qYzZlM002TkRv
aWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TWpvaWNIVmliR2x6
YUdWa1gyRjBJanR6T2pVNklteGhZbVZzSWp0ek9qRXlPaUpRZFdKc2FYTm9aV1FnWVhRaU8zTTZP
RG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNklt
bHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdW
bVlYVnNkQ0k3VGp0OWZYTTZOREE2SWpOaFpUWXpNV1EzWTJSaFpUVXlZemczWVdNM056STFaVEUz
WXpBNVpESTNYMk52YkhWdGJuTWlPMkU2TlRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpP
alk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpX
d2lPM002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJk
bmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5V
YjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVj
R1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TkRvaWMyeDFaeUk3Y3pvMU9p
SnNZV0psYkNJN2N6bzBPaUpUYkhWbklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lK
cGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkw
T2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZO
RG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzBPaUpwWTI5dUlq
dHpPalU2SW14aFltVnNJanR6T2pRNklrbGpiMjRpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0
ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93
TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvek8yRTZO
enA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFd09p
SnVaWGR6WDJOdmRXNTBJanR6T2pVNklteGhZbVZzSWp0ek9qRXlPaUpVYjNSaGJDQkNaWEpwZEdF
aU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002
TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxi
a0o1UkdWbVlYVnNkQ0k3VGp0OWFUbzBPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJI
VnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXdPaUpqY21WaGRHVmtYMkYwSWp0ek9qVTZJbXhoWW1W
c0lqdHpPakV3T2lKRGNtVmhkR1ZrSUdGMElqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81
T2lKcGMxUnZaMmRzWldRaU8ySTZNRHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1UdHpP
akkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzJJNk1UdDlmWDE5JCVsagmL
ZOo=
'/*!*/;
# at 249663
#260731 11:31:32 server id 1  end_log_pos 249694 CRC32 0xadd674fc 	Xid = 2292
COMMIT/*!*/;
# at 249694
#260731 11:32:32 server id 1  end_log_pos 249773 CRC32 0xe46195f3 	Anonymous_GTID	last_committed=105	sequence_number=106	rbr_only=yes	original_committed_timestamp=1785472352687963	immediate_commit_timestamp=1785472352687963	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472352687963 (2026-07-31 11:32:32.687963 SE Asia Standard Time)
# immediate_commit_timestamp=1785472352687963 (2026-07-31 11:32:32.687963 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472352687963*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 249773
#260731 11:32:32 server id 1  end_log_pos 249848 CRC32 0x1dd47732 	Query	thread_id=97	exec_time=0	error_code=0
SET TIMESTAMP=1785472352/*!*/;
BEGIN
/*!*/;
# at 249848
#260731 11:32:32 server id 1  end_log_pos 249907 CRC32 0xf47c8433 	Table_map: `news`.`cache` mapped to number 88
# at 249907
#260731 11:32:32 server id 1  end_log_pos 250023 CRC32 0xf7774ad3 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
YCVsahMBAAAAOwAAADPQAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4DOE
fPQ=
YCVsaiABAAAAdAAAAKfQAwAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjAyMWQzZjgzMDhlOGQ3YzJiZjk4OGY3Zjg4Y2IxZTU3NzcwZWRmYTEEAABpOjI7vyNsatNK
d/c=
'/*!*/;
# at 250023
#260731 11:32:32 server id 1  end_log_pos 250054 CRC32 0x78021c1c 	Xid = 2307
COMMIT/*!*/;
# at 250054
#260731 11:32:32 server id 1  end_log_pos 250133 CRC32 0x13cb2f65 	Anonymous_GTID	last_committed=106	sequence_number=107	rbr_only=yes	original_committed_timestamp=1785472352693420	immediate_commit_timestamp=1785472352693420	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472352693420 (2026-07-31 11:32:32.693420 SE Asia Standard Time)
# immediate_commit_timestamp=1785472352693420 (2026-07-31 11:32:32.693420 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472352693420*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 250133
#260731 11:32:32 server id 1  end_log_pos 250208 CRC32 0x9a08da94 	Query	thread_id=97	exec_time=0	error_code=0
SET TIMESTAMP=1785472352/*!*/;
BEGIN
/*!*/;
# at 250208
#260731 11:32:32 server id 1  end_log_pos 250267 CRC32 0xaa2fb989 	Table_map: `news`.`cache` mapped to number 88
# at 250267
#260731 11:32:32 server id 1  end_log_pos 250383 CRC32 0x7160a0b6 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
YCVsahMBAAAAOwAAAJvRAwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Im5
L6o=
YCVsah4BAAAAdAAAAA/SAwAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjAyMWQzZjgzMDhlOGQ3YzJiZjk4OGY3Zjg4Y2IxZTU3NzcwZWRmYTEEAABpOjE7nCVsarag
YHE=
'/*!*/;
# at 250383
#260731 11:32:32 server id 1  end_log_pos 250414 CRC32 0x6c49d9ce 	Xid = 2310
COMMIT/*!*/;
# at 250414
#260731 11:32:32 server id 1  end_log_pos 250493 CRC32 0x951e0d83 	Anonymous_GTID	last_committed=107	sequence_number=108	rbr_only=yes	original_committed_timestamp=1785472352766619	immediate_commit_timestamp=1785472352766619	transaction_length=481
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472352766619 (2026-07-31 11:32:32.766619 SE Asia Standard Time)
# immediate_commit_timestamp=1785472352766619 (2026-07-31 11:32:32.766619 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472352766619*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 250493
#260731 11:32:32 server id 1  end_log_pos 250576 CRC32 0xdd16c3d1 	Query	thread_id=97	exec_time=0	error_code=0
SET TIMESTAMP=1785472352/*!*/;
BEGIN
/*!*/;
# at 250576
#260731 11:32:32 server id 1  end_log_pos 250654 CRC32 0xb59f810c 	Table_map: `news`.`activity_logs` mapped to number 101
# at 250654
#260731 11:32:32 server id 1  end_log_pos 250864 CRC32 0x4f599ca9 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
YCVsahMBAAAATgAAAB7TAwAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeAMgZ+1
YCVsah4BAAAA0gAAAPDTAwAAAGUAAAAAAAEAAgAI/wgkAwAAAAAAAAoAAAAAAAAACgBwYWdlX3Zp
c2l0EQBodHRwczovL25ld3MudGVzdAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmprwvCpnFlP
'/*!*/;
# at 250864
#260731 11:32:32 server id 1  end_log_pos 250895 CRC32 0x9e4e7934 	Xid = 2394
COMMIT/*!*/;
# at 250895
#260731 11:32:32 server id 1  end_log_pos 250974 CRC32 0x5c87be12 	Anonymous_GTID	last_committed=108	sequence_number=109	rbr_only=yes	original_committed_timestamp=1785472352776589	immediate_commit_timestamp=1785472352776589	transaction_length=11022
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472352776589 (2026-07-31 11:32:32.776589 SE Asia Standard Time)
# immediate_commit_timestamp=1785472352776589 (2026-07-31 11:32:32.776589 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472352776589*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 250974
#260731 11:32:32 server id 1  end_log_pos 251058 CRC32 0x35fadc03 	Query	thread_id=97	exec_time=0	error_code=0
SET TIMESTAMP=1785472352/*!*/;
BEGIN
/*!*/;
# at 251058
#260731 11:32:32 server id 1  end_log_pos 251126 CRC32 0xec1ac731 	Table_map: `news`.`sessions` mapped to number 83
# at 251126
#260731 11:32:32 server id 1  end_log_pos 261886 CRC32 0x49203a57 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
YCVsahMBAAAARAAAAPbUAwAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4DHHGuw=
YCVsah8BAAAACCoAAP7+AwAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZYFAAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpn
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDI1bGQzTWlPM002TlRvaWNtOTFkR1Vp
TzNNNk16VTZJbVpwYkdGdFpXNTBMbUZrYldsdUxuSmxjMjkxY21ObGN5NXVaWGR6TG1sdVpHVjRJ
anQ5Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJt
VjNJanRoT2pBNmUzMTljem8yT2lKZmRHOXJaVzRpTzNNNk5EQTZJamw2U2twRFNqbHhSRloxYVV0
UGJYcFBabnBJY1ZkUmNXaGliRXBJTlVSR1psVXpVMDlRZFVJaU8zTTZOVEE2SW14dloybHVYM2Rs
WWw4MU9XSmhNelpoWkdSak1tSXlaamswTURFMU9EQm1NREUwWXpkbU5UaGxZVFJsTXpBNU9EbGtJ
anRwT2pFd08zTTZNVGM2SW5CaGMzTjNiM0prWDJoaGMyaGZkMlZpSWp0ek9qWTBPaUl5WW1FNE5E
VmhOemRpWldVMU1UUTNORE01WTJFelkyUmpNRFJqWldZMU1HTmlNV014TlRKaU9HUXpPVGt5WkdO
all6Tm1PRGhoTkRFNU56VTRPREJpSWp0ek9qWTZJblJoWW14bGN5STdZVG96T250ek9qUXdPaUkz
WldJNE0yUXhNbVExTkdVNU16TmpPRFkzWWpkbE1HUmlPVE16TnprM09GOWpiMngxYlc1eklqdGhP
alE2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJt
RnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1aGJXVWlPM002T0Rv
aWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6
Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1Z
WFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6
bzBPaUp1WVcxbElqdHpPalU2SW1WdFlXbHNJanR6T2pVNklteGhZbVZzSWp0ek9qVTZJa1Z0WVds
c0lqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6
T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmta
VzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIy
eDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNRG9pY205c1pYTXVibUZ0WlNJN2N6bzFPaUpzWVdK
bGJDSTdjem8xT2lKU2IyeGxjeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5V
YjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lh
WE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lUbzNPbnR6T2pRNklu
UjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRBNkltTnlaV0YwWldS
ZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1UQTZJa055WldGMFpXUWdZWFFpTzNNNk9Eb2lhWE5J
YVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpvd08zTTZNVEk2SW1selZHOW5a
MnhsWVdKc1pTSTdZam94TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RD
STdZam94TzMxOWN6bzBNRG9pT0RVeE5tVXdNek0wWVdZNFptWTVNbUl6TVdOa01ESTBabU01WlRj
ME5HVmZZMjlzZFcxdWN5STdZVG81T250cE9qQTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9p
WTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk9Ub2lkR2gxYldKdVlXbHNJanR6T2pVNklteGhZ
bVZzSWp0ek9qazZJbFJvZFcxaWJtRnBiQ0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9U
b2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pv
eU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6
T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaWRHbDBi
R1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pVkdsMGJHVWlPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95
TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpP
akV6T2lKallYUmxaMjl5ZVM1dVlXMWxJanR6T2pVNklteGhZbVZzSWp0ek9qZzZJa05oZEdWbmIz
SjVJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0
ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1Jr
Wlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TXp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpi
MngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem81T2lKMWMyVnlMbTVoYldVaU8zTTZOVG9pYkdGaVpX
d2lPM002TnpvaVVHVnVkV3hwY3lJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qUTdZVG8zT250ek9qUTZJ
blI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5qb2ljM1JoZEhWeklq
dHpPalU2SW14aFltVnNJanR6T2pZNklsTjBZWFIxY3lJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpv
d08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRp
T2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qVTdZ
VG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1U
RTZJbWx6WDJobFlXUnNhVzVsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPamc2SWtobFlXUnNhVzVsSWp0
ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5
T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNl
VVJsWm1GMWJIUWlPMDQ3ZldrNk5qdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJX
NGlPM002TkRvaWJtRnRaU0k3Y3pveE1Ub2lhWE5mWW5KbFlXdHBibWNpTzNNNk5Ub2liR0ZpWld3
aU8zTTZPRG9pUW5KbFlXdHBibWNpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6
Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJ
bWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvM08yRTZOenA3Y3pvME9p
SjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pVNkluWnBaWGR6SWp0
ek9qVTZJbXhoWW1Wc0lqdHpPalU2SWxacFpYZHpJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3
Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZN
RHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2T0R0aE9q
YzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TWpv
aWNIVmliR2x6YUdWa1gyRjBJanR6T2pVNklteGhZbVZzSWp0ek9qRXlPaUpRZFdKc2FYTm9aV1Fn
WVhRaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hP
M002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpH
Umxia0o1UkdWbVlYVnNkQ0k3VGp0OWZYTTZOREE2SWpOaFpUWXpNV1EzWTJSaFpUVXlZemczWVdN
M056STFaVEUzWXpBNVpESTNYMk52YkhWdGJuTWlPMkU2TlRwN2FUb3dPMkU2TnpwN2N6bzBPaUow
ZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZO
VG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9U
b2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pv
eU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6
T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TkRvaWMyeDFa
eUk3Y3pvMU9pSnNZV0psYkNJN2N6bzBPaUpUYkhWbklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9q
QTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJ
Nk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRo
T2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzBP
aUpwWTI5dUlqdHpPalU2SW14aFltVnNJanR6T2pRNklrbGpiMjRpTzNNNk9Eb2lhWE5JYVdSa1pX
NGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdK
c1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5
YVRvek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJ
anR6T2pFd09pSnVaWGR6WDJOdmRXNTBJanR6T2pVNklteGhZbVZzSWp0ek9qRXlPaUpVYjNSaGJD
QkNaWEpwZEdFaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJ
N1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhs
WkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUbzBPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpP
alk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXdPaUpqY21WaGRHVmtYMkYwSWp0ek9q
VTZJbXhoWW1Wc0lqdHpPakV3T2lKRGNtVmhkR1ZrSUdGMElqdHpPamc2SW1selNHbGtaR1Z1SWp0
aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNRHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1Vp
TzJJNk1UdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzJJNk1UdDlm
WDE5JCVsagAoAFJHSER3dGRZNUs3S2hZUGFXeTZYb3QxWE9EejZFZWRyeXFCbkF4ZUUKAAAAAAAA
AAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFw
cGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2Fm
YXJpLzUzNy4zNiAUAABZVG8zT250ek9qTTZJblZ5YkNJN1lUb3dPbnQ5Y3pvNU9pSmZjSEpsZG1s
dmRYTWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNVGM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4w
SWp0ek9qVTZJbkp2ZFhSbElqdHpPalE2SW1odmJXVWlPMzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lP
bnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURwN2ZYMXpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2lPWHBLU2tOS09YRkVWblZwUzA5dGVrOW1la2h4VjFGeGFHSnNTa2cxUkVa
bVZUTlRUMUIxUWlJN2N6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZrWkdNeVlqSm1PVFF3
TVRVNE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRBN2N6b3hOem9pY0dGemMzZHZj
bVJmYUdGemFGOTNaV0lpTzNNNk5qUTZJakppWVRnME5XRTNOMkpsWlRVeE5EYzBNemxqWVROalpH
TXdOR05sWmpVd1kySXhZekUxTW1JNFpETTVPVEprWTJOak0yWTRPR0UwTVRrM05UZzRNR0lpTzNN
Nk5qb2lkR0ZpYkdWeklqdGhPak02ZTNNNk5EQTZJamRsWWpnelpERXlaRFUwWlRrek0yTTROamRp
TjJVd1pHSTVNek0zT1RjNFgyTnZiSFZ0Ym5NaU8yRTZORHA3YVRvd08yRTZOenA3Y3pvME9pSjBl
WEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pRNkltNWhiV1VpTzNNNk5U
b2liR0ZpWld3aU8zTTZORG9pVG1GdFpTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1Rv
aWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95
TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPakU3WVRvM09udHpP
alE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pWlcxaGFX
d2lPM002TlRvaWJHRmlaV3dpTzNNNk5Ub2lSVzFoYVd3aU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJ
Nk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3
WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3lP
MkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9q
RXdPaUp5YjJ4bGN5NXVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalU2SWxKdmJHVnpJanR6T2pn
NkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpw
YzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxa
bUYxYkhRaU8wNDdmV2s2TXp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8z
TTZORG9pYm1GdFpTSTdjem94TURvaVkzSmxZWFJsWkY5aGRDSTdjem8xT2lKc1lXSmxiQ0k3Y3pv
eE1Eb2lRM0psWVhSbFpDQmhkQ0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5V
YjJkbmJHVmtJanRpT2pBN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakU3Y3pveU5Eb2lh
WE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdGlPakU3Zlgxek9qUXdPaUk0TlRFMlpU
QXpNelJoWmpobVpqa3lZak14WTJRd01qUm1ZemxsTnpRMFpWOWpiMngxYlc1eklqdGhPams2ZTJr
Nk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3
Y3pvNU9pSjBhSFZ0WW01aGFXd2lPM002TlRvaWJHRmlaV3dpTzNNNk9Ub2lWR2gxYldKdVlXbHNJ
anR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9q
RXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1
Q2VVUmxabUYxYkhRaU8wNDdmV2s2TVR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngx
Ylc0aU8zTTZORG9pYm1GdFpTSTdjem8xT2lKMGFYUnNaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFP
aUpVYVhSc1pTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lq
dGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdW
a1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPakk3WVRvM09udHpPalE2SW5SNWNHVWlPM002
TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVE02SW1OaGRHVm5iM0o1TG01aGJXVWlP
M002TlRvaWJHRmlaV3dpTzNNNk9Eb2lRMkYwWldkdmNua2lPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG96
TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpP
ams2SW5WelpYSXVibUZ0WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8zT2lKUVpXNTFiR2x6SWp0ek9q
ZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lK
cGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJs
Wm1GMWJIUWlPMDQ3ZldrNk5EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlP
M002TkRvaWJtRnRaU0k3Y3pvMk9pSnpkR0YwZFhNaU8zTTZOVG9pYkdGaVpXd2lPM002TmpvaVUz
UmhkSFZ6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJ
Nk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJ
YVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk5UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJP
aUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Ub2lhWE5mYUdWaFpHeHBibVVpTzNNNk5U
b2liR0ZpWld3aU8zTTZPRG9pU0dWaFpHeHBibVVpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0
ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93
TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvMk8yRTZO
enA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeE9p
SnBjMTlpY21WaGEybHVaeUk3Y3pvMU9pSnNZV0psYkNJN2N6bzRPaUpDY21WaGEybHVaeUk3Y3pv
NE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9p
YVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVa
V1poZFd4MElqdE9PMzFwT2pjN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlq
dHpPalE2SW01aGJXVWlPM002TlRvaWRtbGxkM01pTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pVm1s
bGQzTWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG80TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV5T2lKd2RXSnNhWE5vWldSZllYUWlPM002TlRv
aWJHRmlaV3dpTzNNNk1USTZJbEIxWW14cGMyaGxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3
WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJ
anRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxOWN6
bzBNRG9pTTJGbE5qTXhaRGRqWkdGbE5USmpPRGRoWXpjM01qVmxNVGRqTURsa01qZGZZMjlzZFcx
dWN5STdZVG8xT250cE9qQTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6
T2pRNkltNWhiV1VpTzNNNk5Eb2libUZ0WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8wT2lKT1lXMWxJ
anR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9q
RXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1
Q2VVUmxabUYxYkhRaU8wNDdmV2s2TVR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngx
Ylc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKemJIVm5JanR6T2pVNklteGhZbVZzSWp0ek9qUTZJ
bE5zZFdjaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lq
b3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVo
cFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3lPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2
SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbWxqYjI0aU8zTTZOVG9pYkdGaVpXd2lP
M002TkRvaVNXTnZiaUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJH
VmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJk
bmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lUbzNPbnR6T2pRNkluUjVjR1Vp
TzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRBNkltNWxkM05mWTI5MWJuUWlP
M002TlRvaWJHRmlaV3dpTzNNNk1USTZJbFJ2ZEdGc0lFSmxjbWwwWVNJN2N6bzRPaUpwYzBocFpH
UmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdW
aFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRP
TzMxcE9qUTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhi
V1VpTzNNNk1UQTZJbU55WldGMFpXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEE2SWtOeVpX
RjBaV1FnWVhRaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJ
N1lqb3dPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpveE8zTTZNalE2SW1selZHOW5aMnhs
WkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3WWpveE8zMTlmWDA9YCVsalc6IEk=
'/*!*/;
# at 261886
#260731 11:32:32 server id 1  end_log_pos 261917 CRC32 0x9f473391 	Xid = 2406
COMMIT/*!*/;
# at 261917
#260731 11:32:36 server id 1  end_log_pos 261996 CRC32 0x46403d82 	Anonymous_GTID	last_committed=109	sequence_number=110	rbr_only=yes	original_committed_timestamp=1785472356206601	immediate_commit_timestamp=1785472356206601	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472356206601 (2026-07-31 11:32:36.206601 SE Asia Standard Time)
# immediate_commit_timestamp=1785472356206601 (2026-07-31 11:32:36.206601 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472356206601*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 261996
#260731 11:32:36 server id 1  end_log_pos 262071 CRC32 0x99458e7e 	Query	thread_id=98	exec_time=0	error_code=0
SET TIMESTAMP=1785472356/*!*/;
BEGIN
/*!*/;
# at 262071
#260731 11:32:36 server id 1  end_log_pos 262130 CRC32 0x654e37cd 	Table_map: `news`.`cache` mapped to number 88
# at 262130
#260731 11:32:36 server id 1  end_log_pos 262328 CRC32 0x3a341cce 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
ZCVsahMBAAAAOwAAAPL/AwAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4M03
TmU=
ZCVsah8BAAAAxgAAALgABAAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDowMjFkM2Y4MzA4ZThkN2MyYmY5ODhmN2Y4OGNiMWU1Nzc3MGVkZmExBAAAaToxO5wlbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDowMjFkM2Y4MzA4ZThkN2MyYmY5ODhmN2Y4OGNi
MWU1Nzc3MGVkZmExBAAAaToyO6AlbGrOHDQ6
'/*!*/;
# at 262328
#260731 11:32:36 server id 1  end_log_pos 262359 CRC32 0x55b9c9bd 	Xid = 2421
COMMIT/*!*/;
# at 262359
#260731 11:32:36 server id 1  end_log_pos 262438 CRC32 0xf1b824d3 	Anonymous_GTID	last_committed=110	sequence_number=111	rbr_only=yes	original_committed_timestamp=1785472356277379	immediate_commit_timestamp=1785472356277379	transaction_length=481
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472356277379 (2026-07-31 11:32:36.277379 SE Asia Standard Time)
# immediate_commit_timestamp=1785472356277379 (2026-07-31 11:32:36.277379 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472356277379*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 262438
#260731 11:32:36 server id 1  end_log_pos 262521 CRC32 0xd031c28f 	Query	thread_id=98	exec_time=0	error_code=0
SET TIMESTAMP=1785472356/*!*/;
BEGIN
/*!*/;
# at 262521
#260731 11:32:36 server id 1  end_log_pos 262599 CRC32 0x0ee79ae1 	Table_map: `news`.`activity_logs` mapped to number 101
# at 262599
#260731 11:32:36 server id 1  end_log_pos 262809 CRC32 0xec51c459 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
ZCVsahMBAAAATgAAAMcBBAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeDhmucO
ZCVsah4BAAAA0gAAAJkCBAAAAGUAAAAAAAEAAgAI/wglAwAAAAAAAAoAAAAAAAAACgBwYWdlX3Zp
c2l0EQBodHRwczovL25ld3MudGVzdAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmprwvRZxFHs
'/*!*/;
# at 262809
#260731 11:32:36 server id 1  end_log_pos 262840 CRC32 0x6ef584c1 	Xid = 2505
COMMIT/*!*/;
# at 262840
#260731 11:32:36 server id 1  end_log_pos 262919 CRC32 0x552caf83 	Anonymous_GTID	last_committed=111	sequence_number=112	rbr_only=yes	original_committed_timestamp=1785472356287223	immediate_commit_timestamp=1785472356287223	transaction_length=10966
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472356287223 (2026-07-31 11:32:36.287223 SE Asia Standard Time)
# immediate_commit_timestamp=1785472356287223 (2026-07-31 11:32:36.287223 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472356287223*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 262919
#260731 11:32:36 server id 1  end_log_pos 263003 CRC32 0xcced9c3b 	Query	thread_id=98	exec_time=0	error_code=0
SET TIMESTAMP=1785472356/*!*/;
BEGIN
/*!*/;
# at 263003
#260731 11:32:36 server id 1  end_log_pos 263071 CRC32 0xe08c60dc 	Table_map: `news`.`sessions` mapped to number 83
# at 263071
#260731 11:32:36 server id 1  end_log_pos 273775 CRC32 0x3fb2edca 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
ZCVsahMBAAAARAAAAJ8DBAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4NxgjOA=
ZCVsah8BAAAA0CkAAG8tBAAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgFAAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRj
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1Vp
TzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVa
WGNpTzJFNk1EcDdmWDF6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5WcFMw
OXRlazltZWtoeFYxRnhhR0pzU2tnMVJFWm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVmZDJW
aVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1Fp
TzJrNk1UQTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlUZzBO
V0UzTjJKbFpUVXhORGMwTXpsallUTmpaR013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RKa1ky
TmpNMlk0T0dFME1UazNOVGc0TUdJaU8zTTZOam9pZEdGaWJHVnpJanRoT2pNNmUzTTZOREE2SWpk
bFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2
TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZ
VzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9p
SnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhO
VWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1po
ZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpP
alE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFX
d2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNN
Nk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1Js
YmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZi
SFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFlt
VnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpG
OWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBo
cFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRu
YkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJ
anRpT2pFN2ZYMXpPalF3T2lJNE5URTJaVEF6TXpSaFpqaG1aamt5WWpNeFkyUXdNalJtWXpsbE56
UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUyazZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lK
amIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzVPaUowYUhWdFltNWhhV3dpTzNNNk5Ub2liR0Zp
Wld3aU8zTTZPVG9pVkdoMWJXSnVZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSjBhWFJz
WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZ
am93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElq
dGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pJ
N1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002
TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pUTJGMFpXZHZj
bmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8z
TTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdS
bGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52
YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2prNkluVnpaWEl1Ym1GdFpTSTdjem8xT2lKc1lXSmxi
Q0k3Y3pvM09pSlFaVzUxYkdseklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMx
UnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lK
cGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZORHRoT2pjNmUzTTZORG9p
ZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6ZEdGMGRYTWlP
M002TlRvaWJHRmlaV3dpTzNNNk5qb2lVM1JoZEhWeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9q
QTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJ
Nk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOVHRo
T2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hN
VG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZOVG9pYkdGaVpXd2lPM002T0RvaVNHVmhaR3hwYm1VaU8z
TTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJ
NkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1
UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRi
aUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhPaUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFPaUpzWVdKbGJD
STdjem80T2lKQ2NtVmhhMmx1WnlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qYzdZVG8zT250ek9qUTZJ
blI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2lkbWxsZDNNaU8z
TTZOVG9pYkdGaVpXd2lPM002TlRvaVZtbGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0
ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93
TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvNE8yRTZO
enA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeU9p
SndkV0pzYVhOb1pXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxCMVlteHBjMmhsWkNC
aGRDSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3
Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGta
R1Z1UW5sRVpXWmhkV3gwSWp0T08zMTljem8wTURvaU0yRmxOak14WkRkalpHRmxOVEpqT0RkaFl6
YzNNalZsTVRkak1EbGtNamRmWTI5c2RXMXVjeUk3WVRvMU9udHBPakE3WVRvM09udHpPalE2SW5S
NWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZORG9pYm1GdFpTSTdjem8x
T2lKc1lXSmxiQ0k3Y3pvME9pSk9ZVzFsSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnpiSFZu
SWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWxOc2RXY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZN
RHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lq
b3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJF
Nk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2
SW1samIyNGlPM002TlRvaWJHRmlaV3dpTzNNNk5Eb2lTV052YmlJN2N6bzRPaUpwYzBocFpHUmxi
aUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlt
eGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMx
cE9qTTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1Vp
TzNNNk1UQTZJbTVsZDNOZlkyOTFiblFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxSdmRHRnNJ
RUpsY21sMFlTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lq
dGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdW
a1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPalE3WVRvM09udHpPalE2SW5SNWNHVWlPM002
TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZO
VG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5
ZlgwPWAlbGoAKABSR0hEd3RkWTVLN0toWVBhV3k2WG90MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAA
AAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBB
cHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNh
ZmFyaS81MzcuMzYgFAAAWVRvM09udHpPak02SW5WeWJDSTdZVG93T250OWN6bzVPaUpmY0hKbGRt
bHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhO
MElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1VpTzMxek9qWTZJbDltYkdGemFDSTdZVG95
T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pZNklsOTBi
MnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5WcFMwOXRlazltZWtoeFYxRnhhR0pzU2tnMVJF
Wm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RR
d01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1FpTzJrNk1UQTdjem94TnpvaWNHRnpjM2R2
Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlUZzBOV0UzTjJKbFpUVXhORGMwTXpsallUTmpa
R013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RKa1kyTmpNMlk0T0dFME1UazNOVGc0TUdJaU8z
TTZOam9pZEdGaWJHVnpJanRoT2pNNmUzTTZOREE2SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00Tmpk
aU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUow
ZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZO
VG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9U
b2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pv
eU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6
T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhh
V3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95
TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpP
akV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9q
ZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lK
cGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJs
Wm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlP
M002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6
b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRpT2pFN2ZYMXpPalF3T2lJNE5URTJa
VEF6TXpSaFpqaG1aamt5WWpNeFkyUXdNalJtWXpsbE56UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUy
azZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJ
N2N6bzVPaUowYUhWdFltNWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZPVG9pVkdoMWJXSnVZV2xz
SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpP
akV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pX
NUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4
MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSjBhWFJzWlNJN2N6bzFPaUpzWVdKbGJDSTdjem8x
T2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJ
anRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJH
VmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pJN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNN
Nk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1Vp
TzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pUTJGMFpXZHZjbmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlP
Mkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pT
STdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRv
ek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6
T2prNkluVnpaWEl1Ym1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvM09pSlFaVzUxYkdseklqdHpP
amc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9p
SnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVS
bFptRjFiSFFpTzA0N2ZXazZORHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRp
TzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6ZEdGMGRYTWlPM002TlRvaWJHRmlaV3dpTzNNNk5qb2lV
M1JoZEhWeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8y
STZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldS
SWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOVHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8y
T2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNVG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZO
VG9pYkdGaVpXd2lPM002T0RvaVNHVmhaR3hwYm1VaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhP
aUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFPaUpzWVdKbGJDSTdjem80T2lKQ2NtVmhhMmx1WnlJN2N6
bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpv
aWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxF
WldaaGRXeDBJanRPTzMxcE9qYzdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJ
anR6T2pRNkltNWhiV1VpTzNNNk5Ub2lkbWxsZDNNaU8zTTZOVG9pYkdGaVpXd2lPM002TlRvaVZt
bGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpv
eE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhw
WkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvNE8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJ
bU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeU9pSndkV0pzYVhOb1pXUmZZWFFpTzNNNk5U
b2liR0ZpWld3aU8zTTZNVEk2SWxCMVlteHBjMmhsWkNCaGRDSTdjem80T2lKcGMwaHBaR1JsYmlJ
N1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhs
SWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMTlj
em8wTURvaU0yRmxOak14WkRkalpHRmxOVEpqT0RkaFl6YzNNalZsTVRkak1EbGtNamRmWTI5c2RX
MXVjeUk3WVRvMU9udHBPakE3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0
ek9qUTZJbTVoYldVaU8zTTZORG9pYm1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvME9pSk9ZVzFs
SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpP
akV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pX
NUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4
MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnpiSFZuSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2
SWxOc2RXY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZ
am94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpF
aHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZ
NkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2SW1samIyNGlPM002TlRvaWJHRmlaV3dp
TzNNNk5Eb2lTV052YmlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5i
R1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIy
ZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qTTdZVG8zT250ek9qUTZJblI1Y0dV
aU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1UQTZJbTVsZDNOZlkyOTFiblFp
TzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxSdmRHRnNJRUpsY21sMFlTSTdjem80T2lKcGMwaHBa
R1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJH
VmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0
T08zMXBPalE3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVo
YldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpXd2lPM002TVRBNklrTnla
V0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpD
STdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002TWpRNkltbHpWRzluWjJ4
bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlgwPWQlbGrK7bI/
'/*!*/;
# at 273775
#260731 11:32:36 server id 1  end_log_pos 273806 CRC32 0x82fb3167 	Xid = 2517
COMMIT/*!*/;
# at 273806
#260731 11:33:50 server id 1  end_log_pos 273885 CRC32 0x792dea34 	Anonymous_GTID	last_committed=112	sequence_number=113	rbr_only=yes	original_committed_timestamp=1785472430696703	immediate_commit_timestamp=1785472430696703	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472430696703 (2026-07-31 11:33:50.696703 SE Asia Standard Time)
# immediate_commit_timestamp=1785472430696703 (2026-07-31 11:33:50.696703 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472430696703*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 273885
#260731 11:33:50 server id 1  end_log_pos 273960 CRC32 0x44470b7e 	Query	thread_id=113	exec_time=0	error_code=0
SET TIMESTAMP=1785472430/*!*/;
BEGIN
/*!*/;
# at 273960
#260731 11:33:50 server id 1  end_log_pos 274019 CRC32 0x6eee2386 	Table_map: `news`.`cache` mapped to number 88
# at 274019
#260731 11:33:50 server id 1  end_log_pos 274135 CRC32 0xb7fad30d 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
riVsahMBAAAAOwAAAGMuBAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4IYj
7m4=
riVsaiABAAAAdAAAANcuBAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjAyMWQzZjgzMDhlOGQ3YzJiZjk4OGY3Zjg4Y2IxZTU3NzcwZWRmYTEEAABpOjI7oCVsag3T
+rc=
'/*!*/;
# at 274135
#260731 11:33:50 server id 1  end_log_pos 274166 CRC32 0x3ac31726 	Xid = 2696
COMMIT/*!*/;
# at 274166
#260731 11:33:50 server id 1  end_log_pos 274245 CRC32 0x9d278f8a 	Anonymous_GTID	last_committed=113	sequence_number=114	rbr_only=yes	original_committed_timestamp=1785472430699426	immediate_commit_timestamp=1785472430699426	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472430699426 (2026-07-31 11:33:50.699426 SE Asia Standard Time)
# immediate_commit_timestamp=1785472430699426 (2026-07-31 11:33:50.699426 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472430699426*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 274245
#260731 11:33:50 server id 1  end_log_pos 274320 CRC32 0xf2e8f3a9 	Query	thread_id=113	exec_time=0	error_code=0
SET TIMESTAMP=1785472430/*!*/;
BEGIN
/*!*/;
# at 274320
#260731 11:33:50 server id 1  end_log_pos 274379 CRC32 0x30bd1e3c 	Table_map: `news`.`cache` mapped to number 88
# at 274379
#260731 11:33:50 server id 1  end_log_pos 274495 CRC32 0x78dee5a4 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
riVsahMBAAAAOwAAAMsvBAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Dwe
vTA=
riVsah4BAAAAdAAAAD8wBAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjAyMWQzZjgzMDhlOGQ3YzJiZjk4OGY3Zjg4Y2IxZTU3NzcwZWRmYTEEAABpOjE76iVsaqTl
3ng=
'/*!*/;
# at 274495
#260731 11:33:50 server id 1  end_log_pos 274526 CRC32 0x87e333a3 	Xid = 2699
COMMIT/*!*/;
# at 274526
#260731 11:33:50 server id 1  end_log_pos 274605 CRC32 0x34ac3c9e 	Anonymous_GTID	last_committed=114	sequence_number=115	rbr_only=yes	original_committed_timestamp=1785472430770958	immediate_commit_timestamp=1785472430770958	transaction_length=481
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472430770958 (2026-07-31 11:33:50.770958 SE Asia Standard Time)
# immediate_commit_timestamp=1785472430770958 (2026-07-31 11:33:50.770958 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472430770958*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 274605
#260731 11:33:50 server id 1  end_log_pos 274688 CRC32 0xfcb8c4f6 	Query	thread_id=113	exec_time=0	error_code=0
SET TIMESTAMP=1785472430/*!*/;
BEGIN
/*!*/;
# at 274688
#260731 11:33:50 server id 1  end_log_pos 274766 CRC32 0x67efeb81 	Table_map: `news`.`activity_logs` mapped to number 101
# at 274766
#260731 11:33:50 server id 1  end_log_pos 274976 CRC32 0xae5975c7 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
riVsahMBAAAATgAAAE4xBAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeCB6+9n
riVsah4BAAAA0gAAACAyBAAAAGUAAAAAAAEAAgAI/wgmAwAAAAAAAAoAAAAAAAAACgBwYWdlX3Zp
c2l0EQBodHRwczovL25ld3MudGVzdAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmprwz7HdVmu
'/*!*/;
# at 274976
#260731 11:33:50 server id 1  end_log_pos 275007 CRC32 0x2701158b 	Xid = 2783
COMMIT/*!*/;
# at 275007
#260731 11:33:50 server id 1  end_log_pos 275086 CRC32 0x4bb14d52 	Anonymous_GTID	last_committed=115	sequence_number=116	rbr_only=yes	original_committed_timestamp=1785472430780332	immediate_commit_timestamp=1785472430780332	transaction_length=10966
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472430780332 (2026-07-31 11:33:50.780332 SE Asia Standard Time)
# immediate_commit_timestamp=1785472430780332 (2026-07-31 11:33:50.780332 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472430780332*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 275086
#260731 11:33:50 server id 1  end_log_pos 275170 CRC32 0xeca38de2 	Query	thread_id=113	exec_time=0	error_code=0
SET TIMESTAMP=1785472430/*!*/;
BEGIN
/*!*/;
# at 275170
#260731 11:33:50 server id 1  end_log_pos 275238 CRC32 0x75d8803c 	Table_map: `news`.`sessions` mapped to number 83
# at 275238
#260731 11:33:50 server id 1  end_log_pos 285942 CRC32 0x980c9ecf 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
riVsahMBAAAARAAAACYzBAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4DyA2HU=
riVsah8BAAAA0CkAAPZcBAAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgFAAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRj
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1Vp
TzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVa
WGNpTzJFNk1EcDdmWDF6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5WcFMw
OXRlazltZWtoeFYxRnhhR0pzU2tnMVJFWm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVmZDJW
aVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1Fp
TzJrNk1UQTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlUZzBO
V0UzTjJKbFpUVXhORGMwTXpsallUTmpaR013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RKa1ky
TmpNMlk0T0dFME1UazNOVGc0TUdJaU8zTTZOam9pZEdGaWJHVnpJanRoT2pNNmUzTTZOREE2SWpk
bFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2
TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZ
VzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9p
SnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhO
VWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1po
ZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpP
alE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFX
d2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNN
Nk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1Js
YmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZi
SFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFlt
VnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpG
OWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBo
cFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRu
YkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJ
anRpT2pFN2ZYMXpPalF3T2lJNE5URTJaVEF6TXpSaFpqaG1aamt5WWpNeFkyUXdNalJtWXpsbE56
UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUyazZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lK
amIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzVPaUowYUhWdFltNWhhV3dpTzNNNk5Ub2liR0Zp
Wld3aU8zTTZPVG9pVkdoMWJXSnVZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSjBhWFJz
WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZ
am93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElq
dGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pJ
N1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002
TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pUTJGMFpXZHZj
bmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8z
TTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdS
bGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52
YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2prNkluVnpaWEl1Ym1GdFpTSTdjem8xT2lKc1lXSmxi
Q0k3Y3pvM09pSlFaVzUxYkdseklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMx
UnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lK
cGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZORHRoT2pjNmUzTTZORG9p
ZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6ZEdGMGRYTWlP
M002TlRvaWJHRmlaV3dpTzNNNk5qb2lVM1JoZEhWeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9q
QTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJ
Nk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOVHRo
T2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hN
VG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZOVG9pYkdGaVpXd2lPM002T0RvaVNHVmhaR3hwYm1VaU8z
TTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJ
NkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1
UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRi
aUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhPaUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFPaUpzWVdKbGJD
STdjem80T2lKQ2NtVmhhMmx1WnlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qYzdZVG8zT250ek9qUTZJ
blI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2lkbWxsZDNNaU8z
TTZOVG9pYkdGaVpXd2lPM002TlRvaVZtbGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0
ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93
TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvNE8yRTZO
enA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeU9p
SndkV0pzYVhOb1pXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxCMVlteHBjMmhsWkNC
aGRDSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3
Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGta
R1Z1UW5sRVpXWmhkV3gwSWp0T08zMTljem8wTURvaU0yRmxOak14WkRkalpHRmxOVEpqT0RkaFl6
YzNNalZsTVRkak1EbGtNamRmWTI5c2RXMXVjeUk3WVRvMU9udHBPakE3WVRvM09udHpPalE2SW5S
NWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZORG9pYm1GdFpTSTdjem8x
T2lKc1lXSmxiQ0k3Y3pvME9pSk9ZVzFsSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnpiSFZu
SWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWxOc2RXY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZN
RHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lq
b3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJF
Nk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2
SW1samIyNGlPM002TlRvaWJHRmlaV3dpTzNNNk5Eb2lTV052YmlJN2N6bzRPaUpwYzBocFpHUmxi
aUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlt
eGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMx
cE9qTTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1Vp
TzNNNk1UQTZJbTVsZDNOZlkyOTFiblFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxSdmRHRnNJ
RUpsY21sMFlTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lq
dGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdW
a1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPalE3WVRvM09udHpPalE2SW5SNWNHVWlPM002
TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZO
VG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5
ZlgwPWQlbGoAKABSR0hEd3RkWTVLN0toWVBhV3k2WG90MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAA
AAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBB
cHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNh
ZmFyaS81MzcuMzYgFAAAWVRvM09udHpPak02SW5WeWJDSTdZVG93T250OWN6bzVPaUpmY0hKbGRt
bHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhO
MElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1VpTzMxek9qWTZJbDltYkdGemFDSTdZVG95
T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pZNklsOTBi
MnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5WcFMwOXRlazltZWtoeFYxRnhhR0pzU2tnMVJF
Wm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RR
d01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1FpTzJrNk1UQTdjem94TnpvaWNHRnpjM2R2
Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlUZzBOV0UzTjJKbFpUVXhORGMwTXpsallUTmpa
R013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RKa1kyTmpNMlk0T0dFME1UazNOVGc0TUdJaU8z
TTZOam9pZEdGaWJHVnpJanRoT2pNNmUzTTZOREE2SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00Tmpk
aU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUow
ZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZO
VG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9U
b2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pv
eU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6
T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhh
V3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95
TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpP
akV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9q
ZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lK
cGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJs
Wm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlP
M002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6
b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRpT2pFN2ZYMXpPalF3T2lJNE5URTJa
VEF6TXpSaFpqaG1aamt5WWpNeFkyUXdNalJtWXpsbE56UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUy
azZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJ
N2N6bzVPaUowYUhWdFltNWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZPVG9pVkdoMWJXSnVZV2xz
SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpP
akV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pX
NUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4
MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSjBhWFJzWlNJN2N6bzFPaUpzWVdKbGJDSTdjem8x
T2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJ
anRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJH
VmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pJN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNN
Nk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1Vp
TzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pUTJGMFpXZHZjbmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlP
Mkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pT
STdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRv
ek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6
T2prNkluVnpaWEl1Ym1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvM09pSlFaVzUxYkdseklqdHpP
amc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9p
SnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVS
bFptRjFiSFFpTzA0N2ZXazZORHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRp
TzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6ZEdGMGRYTWlPM002TlRvaWJHRmlaV3dpTzNNNk5qb2lV
M1JoZEhWeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8y
STZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldS
SWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOVHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8y
T2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNVG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZO
VG9pYkdGaVpXd2lPM002T0RvaVNHVmhaR3hwYm1VaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhP
aUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFPaUpzWVdKbGJDSTdjem80T2lKQ2NtVmhhMmx1WnlJN2N6
bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpv
aWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxF
WldaaGRXeDBJanRPTzMxcE9qYzdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJ
anR6T2pRNkltNWhiV1VpTzNNNk5Ub2lkbWxsZDNNaU8zTTZOVG9pYkdGaVpXd2lPM002TlRvaVZt
bGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpv
eE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhw
WkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvNE8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJ
bU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeU9pSndkV0pzYVhOb1pXUmZZWFFpTzNNNk5U
b2liR0ZpWld3aU8zTTZNVEk2SWxCMVlteHBjMmhsWkNCaGRDSTdjem80T2lKcGMwaHBaR1JsYmlJ
N1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhs
SWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMTlj
em8wTURvaU0yRmxOak14WkRkalpHRmxOVEpqT0RkaFl6YzNNalZsTVRkak1EbGtNamRmWTI5c2RX
MXVjeUk3WVRvMU9udHBPakE3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0
ek9qUTZJbTVoYldVaU8zTTZORG9pYm1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvME9pSk9ZVzFs
SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpP
akV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pX
NUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4
MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnpiSFZuSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2
SWxOc2RXY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZ
am94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpF
aHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZ
NkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2SW1samIyNGlPM002TlRvaWJHRmlaV3dp
TzNNNk5Eb2lTV052YmlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5i
R1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIy
ZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qTTdZVG8zT250ek9qUTZJblI1Y0dV
aU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1UQTZJbTVsZDNOZlkyOTFiblFp
TzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxSdmRHRnNJRUpsY21sMFlTSTdjem80T2lKcGMwaHBa
R1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJH
VmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0
T08zMXBPalE3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVo
YldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpXd2lPM002TVRBNklrTnla
V0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpD
STdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002TWpRNkltbHpWRzluWjJ4
bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlgwPa4lbGrPngyY
'/*!*/;
# at 285942
#260731 11:33:50 server id 1  end_log_pos 285973 CRC32 0x1056e524 	Xid = 2795
COMMIT/*!*/;
# at 285973
#260731 11:34:23 server id 1  end_log_pos 286052 CRC32 0xa1168a30 	Anonymous_GTID	last_committed=116	sequence_number=117	rbr_only=yes	original_committed_timestamp=1785472463545077	immediate_commit_timestamp=1785472463545077	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472463545077 (2026-07-31 11:34:23.545077 SE Asia Standard Time)
# immediate_commit_timestamp=1785472463545077 (2026-07-31 11:34:23.545077 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472463545077*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 286052
#260731 11:34:23 server id 1  end_log_pos 286127 CRC32 0x8b63ea1e 	Query	thread_id=114	exec_time=0	error_code=0
SET TIMESTAMP=1785472463/*!*/;
BEGIN
/*!*/;
# at 286127
#260731 11:34:23 server id 1  end_log_pos 286186 CRC32 0xb792ecdf 	Table_map: `news`.`cache` mapped to number 88
# at 286186
#260731 11:34:23 server id 1  end_log_pos 286384 CRC32 0xd01daea5 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
zyVsahMBAAAAOwAAAOpdBAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4N/s
krc=
zyVsah8BAAAAxgAAALBeBAAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDowMjFkM2Y4MzA4ZThkN2MyYmY5ODhmN2Y4OGNiMWU1Nzc3MGVkZmExBAAAaToxO+olbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDowMjFkM2Y4MzA4ZThkN2MyYmY5ODhmN2Y4OGNi
MWU1Nzc3MGVkZmExBAAAaToyOwsmbGqlrh3Q
'/*!*/;
# at 286384
#260731 11:34:23 server id 1  end_log_pos 286415 CRC32 0x1b04a045 	Xid = 2810
COMMIT/*!*/;
# at 286415
#260731 11:34:23 server id 1  end_log_pos 286494 CRC32 0x68fd2823 	Anonymous_GTID	last_committed=117	sequence_number=118	rbr_only=yes	original_committed_timestamp=1785472463620752	immediate_commit_timestamp=1785472463620752	transaction_length=481
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472463620752 (2026-07-31 11:34:23.620752 SE Asia Standard Time)
# immediate_commit_timestamp=1785472463620752 (2026-07-31 11:34:23.620752 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472463620752*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 286494
#260731 11:34:23 server id 1  end_log_pos 286577 CRC32 0x03f6f991 	Query	thread_id=114	exec_time=0	error_code=0
SET TIMESTAMP=1785472463/*!*/;
BEGIN
/*!*/;
# at 286577
#260731 11:34:23 server id 1  end_log_pos 286655 CRC32 0xe8610098 	Table_map: `news`.`activity_logs` mapped to number 101
# at 286655
#260731 11:34:23 server id 1  end_log_pos 286865 CRC32 0x34c675c7 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
zyVsahMBAAAATgAAAL9fBAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeCYAGHo
zyVsah4BAAAA0gAAAJFgBAAAAGUAAAAAAAEAAgAI/wgnAwAAAAAAAAoAAAAAAAAACgBwYWdlX3Zp
c2l0EQBodHRwczovL25ld3MudGVzdAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmprw1/HdcY0
'/*!*/;
# at 286865
#260731 11:34:23 server id 1  end_log_pos 286896 CRC32 0xaeab9580 	Xid = 2894
COMMIT/*!*/;
# at 286896
#260731 11:34:23 server id 1  end_log_pos 286975 CRC32 0xf831e318 	Anonymous_GTID	last_committed=118	sequence_number=119	rbr_only=yes	original_committed_timestamp=1785472463629984	immediate_commit_timestamp=1785472463629984	transaction_length=10966
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472463629984 (2026-07-31 11:34:23.629984 SE Asia Standard Time)
# immediate_commit_timestamp=1785472463629984 (2026-07-31 11:34:23.629984 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472463629984*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 286975
#260731 11:34:23 server id 1  end_log_pos 287059 CRC32 0x26fdfaff 	Query	thread_id=114	exec_time=0	error_code=0
SET TIMESTAMP=1785472463/*!*/;
BEGIN
/*!*/;
# at 287059
#260731 11:34:23 server id 1  end_log_pos 287127 CRC32 0x176029a9 	Table_map: `news`.`sessions` mapped to number 83
# at 287127
#260731 11:34:23 server id 1  end_log_pos 297831 CRC32 0x20e88491 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
zyVsahMBAAAARAAAAJdhBAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4KkpYBc=
zyVsah8BAAAA0CkAAGeLBAAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgFAAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRj
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1Vp
TzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVa
WGNpTzJFNk1EcDdmWDF6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5WcFMw
OXRlazltZWtoeFYxRnhhR0pzU2tnMVJFWm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVmZDJW
aVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1Fp
TzJrNk1UQTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlUZzBO
V0UzTjJKbFpUVXhORGMwTXpsallUTmpaR013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RKa1ky
TmpNMlk0T0dFME1UazNOVGc0TUdJaU8zTTZOam9pZEdGaWJHVnpJanRoT2pNNmUzTTZOREE2SWpk
bFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2
TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZ
VzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9p
SnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhO
VWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1po
ZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpP
alE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFX
d2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNN
Nk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1Js
YmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZi
SFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFlt
VnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpG
OWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBo
cFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRu
YkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJ
anRpT2pFN2ZYMXpPalF3T2lJNE5URTJaVEF6TXpSaFpqaG1aamt5WWpNeFkyUXdNalJtWXpsbE56
UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUyazZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lK
amIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzVPaUowYUhWdFltNWhhV3dpTzNNNk5Ub2liR0Zp
Wld3aU8zTTZPVG9pVkdoMWJXSnVZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSjBhWFJz
WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZ
am93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElq
dGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pJ
N1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002
TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pUTJGMFpXZHZj
bmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8z
TTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdS
bGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52
YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2prNkluVnpaWEl1Ym1GdFpTSTdjem8xT2lKc1lXSmxi
Q0k3Y3pvM09pSlFaVzUxYkdseklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMx
UnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lK
cGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZORHRoT2pjNmUzTTZORG9p
ZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6ZEdGMGRYTWlP
M002TlRvaWJHRmlaV3dpTzNNNk5qb2lVM1JoZEhWeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9q
QTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJ
Nk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOVHRo
T2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hN
VG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZOVG9pYkdGaVpXd2lPM002T0RvaVNHVmhaR3hwYm1VaU8z
TTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJ
NkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1
UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRi
aUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhPaUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFPaUpzWVdKbGJD
STdjem80T2lKQ2NtVmhhMmx1WnlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qYzdZVG8zT250ek9qUTZJ
blI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2lkbWxsZDNNaU8z
TTZOVG9pYkdGaVpXd2lPM002TlRvaVZtbGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0
ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93
TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvNE8yRTZO
enA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeU9p
SndkV0pzYVhOb1pXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxCMVlteHBjMmhsWkNC
aGRDSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3
Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGta
R1Z1UW5sRVpXWmhkV3gwSWp0T08zMTljem8wTURvaU0yRmxOak14WkRkalpHRmxOVEpqT0RkaFl6
YzNNalZsTVRkak1EbGtNamRmWTI5c2RXMXVjeUk3WVRvMU9udHBPakE3WVRvM09udHpPalE2SW5S
NWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZORG9pYm1GdFpTSTdjem8x
T2lKc1lXSmxiQ0k3Y3pvME9pSk9ZVzFsSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnpiSFZu
SWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWxOc2RXY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZN
RHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lq
b3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJF
Nk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2
SW1samIyNGlPM002TlRvaWJHRmlaV3dpTzNNNk5Eb2lTV052YmlJN2N6bzRPaUpwYzBocFpHUmxi
aUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlt
eGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMx
cE9qTTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1Vp
TzNNNk1UQTZJbTVsZDNOZlkyOTFiblFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxSdmRHRnNJ
RUpsY21sMFlTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lq
dGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdW
a1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPalE3WVRvM09udHpPalE2SW5SNWNHVWlPM002
TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZO
VG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5
ZlgwPa4lbGoAKABSR0hEd3RkWTVLN0toWVBhV3k2WG90MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAA
AAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBB
cHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNh
ZmFyaS81MzcuMzYgFAAAWVRvM09udHpPak02SW5WeWJDSTdZVG93T250OWN6bzVPaUpmY0hKbGRt
bHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhO
MElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1VpTzMxek9qWTZJbDltYkdGemFDSTdZVG95
T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pZNklsOTBi
MnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5WcFMwOXRlazltZWtoeFYxRnhhR0pzU2tnMVJF
Wm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RR
d01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1FpTzJrNk1UQTdjem94TnpvaWNHRnpjM2R2
Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlUZzBOV0UzTjJKbFpUVXhORGMwTXpsallUTmpa
R013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RKa1kyTmpNMlk0T0dFME1UazNOVGc0TUdJaU8z
TTZOam9pZEdGaWJHVnpJanRoT2pNNmUzTTZOREE2SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00Tmpk
aU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUow
ZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZO
VG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9U
b2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pv
eU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6
T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhh
V3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95
TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpP
akV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9q
ZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lK
cGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJs
Wm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlP
M002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6
b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRpT2pFN2ZYMXpPalF3T2lJNE5URTJa
VEF6TXpSaFpqaG1aamt5WWpNeFkyUXdNalJtWXpsbE56UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUy
azZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJ
N2N6bzVPaUowYUhWdFltNWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZPVG9pVkdoMWJXSnVZV2xz
SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpP
akV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pX
NUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4
MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSjBhWFJzWlNJN2N6bzFPaUpzWVdKbGJDSTdjem8x
T2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJ
anRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJH
VmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pJN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNN
Nk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1Vp
TzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pUTJGMFpXZHZjbmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlP
Mkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pT
STdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRv
ek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6
T2prNkluVnpaWEl1Ym1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvM09pSlFaVzUxYkdseklqdHpP
amc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9p
SnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVS
bFptRjFiSFFpTzA0N2ZXazZORHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRp
TzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6ZEdGMGRYTWlPM002TlRvaWJHRmlaV3dpTzNNNk5qb2lV
M1JoZEhWeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8y
STZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldS
SWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOVHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8y
T2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNVG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZO
VG9pYkdGaVpXd2lPM002T0RvaVNHVmhaR3hwYm1VaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhP
aUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFPaUpzWVdKbGJDSTdjem80T2lKQ2NtVmhhMmx1WnlJN2N6
bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpv
aWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxF
WldaaGRXeDBJanRPTzMxcE9qYzdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJ
anR6T2pRNkltNWhiV1VpTzNNNk5Ub2lkbWxsZDNNaU8zTTZOVG9pYkdGaVpXd2lPM002TlRvaVZt
bGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpv
eE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhw
WkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvNE8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJ
bU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeU9pSndkV0pzYVhOb1pXUmZZWFFpTzNNNk5U
b2liR0ZpWld3aU8zTTZNVEk2SWxCMVlteHBjMmhsWkNCaGRDSTdjem80T2lKcGMwaHBaR1JsYmlJ
N1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhs
SWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMTlj
em8wTURvaU0yRmxOak14WkRkalpHRmxOVEpqT0RkaFl6YzNNalZsTVRkak1EbGtNamRmWTI5c2RX
MXVjeUk3WVRvMU9udHBPakE3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0
ek9qUTZJbTVoYldVaU8zTTZORG9pYm1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvME9pSk9ZVzFs
SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpP
akV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pX
NUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4
MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnpiSFZuSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2
SWxOc2RXY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZ
am94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpF
aHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZ
NkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2SW1samIyNGlPM002TlRvaWJHRmlaV3dp
TzNNNk5Eb2lTV052YmlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5i
R1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIy
ZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qTTdZVG8zT250ek9qUTZJblI1Y0dV
aU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1UQTZJbTVsZDNOZlkyOTFiblFp
TzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxSdmRHRnNJRUpsY21sMFlTSTdjem80T2lKcGMwaHBa
R1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJH
VmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0
T08zMXBPalE3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVo
YldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpXd2lPM002TVRBNklrTnla
V0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpD
STdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002TWpRNkltbHpWRzluWjJ4
bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlgwPc8lbGqRhOgg
'/*!*/;
# at 297831
#260731 11:34:23 server id 1  end_log_pos 297862 CRC32 0x4c1ee5b9 	Xid = 2906
COMMIT/*!*/;
# at 297862
#260731 11:38:53 server id 1  end_log_pos 297941 CRC32 0xae6b4d8b 	Anonymous_GTID	last_committed=119	sequence_number=120	rbr_only=yes	original_committed_timestamp=1785472733899456	immediate_commit_timestamp=1785472733899456	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472733899456 (2026-07-31 11:38:53.899456 SE Asia Standard Time)
# immediate_commit_timestamp=1785472733899456 (2026-07-31 11:38:53.899456 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472733899456*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 297941
#260731 11:38:53 server id 1  end_log_pos 298016 CRC32 0x63b99c1a 	Query	thread_id=128	exec_time=0	error_code=0
SET TIMESTAMP=1785472733/*!*/;
BEGIN
/*!*/;
# at 298016
#260731 11:38:53 server id 1  end_log_pos 298075 CRC32 0x094abb51 	Table_map: `news`.`cache` mapped to number 88
# at 298075
#260731 11:38:53 server id 1  end_log_pos 298191 CRC32 0x52dd246f 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
3SZsahMBAAAAOwAAAFuMBAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4FG7
Sgk=
3SZsaiABAAAAdAAAAM+MBAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjAyMWQzZjgzMDhlOGQ3YzJiZjk4OGY3Zjg4Y2IxZTU3NzcwZWRmYTEEAABpOjI7CyZsam8k
3VI=
'/*!*/;
# at 298191
#260731 11:38:53 server id 1  end_log_pos 298222 CRC32 0x76c72ea9 	Xid = 3005
COMMIT/*!*/;
# at 298222
#260731 11:38:53 server id 1  end_log_pos 298301 CRC32 0x7a60710c 	Anonymous_GTID	last_committed=120	sequence_number=121	rbr_only=yes	original_committed_timestamp=1785472733903097	immediate_commit_timestamp=1785472733903097	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472733903097 (2026-07-31 11:38:53.903097 SE Asia Standard Time)
# immediate_commit_timestamp=1785472733903097 (2026-07-31 11:38:53.903097 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472733903097*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 298301
#260731 11:38:53 server id 1  end_log_pos 298376 CRC32 0xa240887b 	Query	thread_id=128	exec_time=0	error_code=0
SET TIMESTAMP=1785472733/*!*/;
BEGIN
/*!*/;
# at 298376
#260731 11:38:53 server id 1  end_log_pos 298435 CRC32 0x62433d59 	Table_map: `news`.`cache` mapped to number 88
# at 298435
#260731 11:38:53 server id 1  end_log_pos 298551 CRC32 0x4e6ec8c7 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
3SZsahMBAAAAOwAAAMONBAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Fk9
Q2I=
3SZsah4BAAAAdAAAADeOBAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjAyMWQzZjgzMDhlOGQ3YzJiZjk4OGY3Zjg4Y2IxZTU3NzcwZWRmYTEEAABpOjE7GSdsasfI
bk4=
'/*!*/;
# at 298551
#260731 11:38:53 server id 1  end_log_pos 298582 CRC32 0x3a32aac3 	Xid = 3008
COMMIT/*!*/;
# at 298582
#260731 11:38:53 server id 1  end_log_pos 298661 CRC32 0x0726be47 	Anonymous_GTID	last_committed=121	sequence_number=122	rbr_only=yes	original_committed_timestamp=1785472733976868	immediate_commit_timestamp=1785472733976868	transaction_length=481
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472733976868 (2026-07-31 11:38:53.976868 SE Asia Standard Time)
# immediate_commit_timestamp=1785472733976868 (2026-07-31 11:38:53.976868 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472733976868*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 298661
#260731 11:38:53 server id 1  end_log_pos 298744 CRC32 0xcc01492e 	Query	thread_id=128	exec_time=0	error_code=0
SET TIMESTAMP=1785472733/*!*/;
BEGIN
/*!*/;
# at 298744
#260731 11:38:53 server id 1  end_log_pos 298822 CRC32 0x336a04e7 	Table_map: `news`.`activity_logs` mapped to number 101
# at 298822
#260731 11:38:53 server id 1  end_log_pos 299032 CRC32 0xd2c9d362 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
3SZsahMBAAAATgAAAEaPBAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeDnBGoz
3SZsah4BAAAA0gAAABiQBAAAAGUAAAAAAAEAAgAI/wgoAwAAAAAAAAoAAAAAAAAACgBwYWdlX3Zp
c2l0EQBodHRwczovL25ld3MudGVzdAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmprxG1i08nS
'/*!*/;
# at 299032
#260731 11:38:53 server id 1  end_log_pos 299063 CRC32 0x22f1289e 	Xid = 3092
COMMIT/*!*/;
# at 299063
#260731 11:38:53 server id 1  end_log_pos 299142 CRC32 0x91456ef1 	Anonymous_GTID	last_committed=122	sequence_number=123	rbr_only=yes	original_committed_timestamp=1785472733988308	immediate_commit_timestamp=1785472733988308	transaction_length=10966
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472733988308 (2026-07-31 11:38:53.988308 SE Asia Standard Time)
# immediate_commit_timestamp=1785472733988308 (2026-07-31 11:38:53.988308 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472733988308*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 299142
#260731 11:38:53 server id 1  end_log_pos 299226 CRC32 0xf6952bbe 	Query	thread_id=128	exec_time=0	error_code=0
SET TIMESTAMP=1785472733/*!*/;
BEGIN
/*!*/;
# at 299226
#260731 11:38:53 server id 1  end_log_pos 299294 CRC32 0x5fcecb17 	Table_map: `news`.`sessions` mapped to number 83
# at 299294
#260731 11:38:53 server id 1  end_log_pos 309998 CRC32 0x539749f0 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
3SZsahMBAAAARAAAAB6RBAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4BfLzl8=
3SZsah8BAAAA0CkAAO66BAAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgFAAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRj
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1Vp
TzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVa
WGNpTzJFNk1EcDdmWDF6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5WcFMw
OXRlazltZWtoeFYxRnhhR0pzU2tnMVJFWm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVmZDJW
aVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1Fp
TzJrNk1UQTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlUZzBO
V0UzTjJKbFpUVXhORGMwTXpsallUTmpaR013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RKa1ky
TmpNMlk0T0dFME1UazNOVGc0TUdJaU8zTTZOam9pZEdGaWJHVnpJanRoT2pNNmUzTTZOREE2SWpk
bFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2
TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZ
VzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9p
SnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhO
VWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1po
ZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpP
alE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFX
d2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNN
Nk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1Js
YmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZi
SFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFlt
VnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpG
OWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBo
cFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRu
YkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJ
anRpT2pFN2ZYMXpPalF3T2lJNE5URTJaVEF6TXpSaFpqaG1aamt5WWpNeFkyUXdNalJtWXpsbE56
UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUyazZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lK
amIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzVPaUowYUhWdFltNWhhV3dpTzNNNk5Ub2liR0Zp
Wld3aU8zTTZPVG9pVkdoMWJXSnVZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSjBhWFJz
WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZ
am93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElq
dGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pJ
N1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002
TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pUTJGMFpXZHZj
bmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8z
TTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdS
bGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52
YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2prNkluVnpaWEl1Ym1GdFpTSTdjem8xT2lKc1lXSmxi
Q0k3Y3pvM09pSlFaVzUxYkdseklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMx
UnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lK
cGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZORHRoT2pjNmUzTTZORG9p
ZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6ZEdGMGRYTWlP
M002TlRvaWJHRmlaV3dpTzNNNk5qb2lVM1JoZEhWeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9q
QTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJ
Nk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOVHRo
T2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hN
VG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZOVG9pYkdGaVpXd2lPM002T0RvaVNHVmhaR3hwYm1VaU8z
TTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJ
NkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1
UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRi
aUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhPaUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFPaUpzWVdKbGJD
STdjem80T2lKQ2NtVmhhMmx1WnlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qYzdZVG8zT250ek9qUTZJ
blI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2lkbWxsZDNNaU8z
TTZOVG9pYkdGaVpXd2lPM002TlRvaVZtbGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0
ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93
TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvNE8yRTZO
enA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeU9p
SndkV0pzYVhOb1pXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxCMVlteHBjMmhsWkNC
aGRDSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3
Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGta
R1Z1UW5sRVpXWmhkV3gwSWp0T08zMTljem8wTURvaU0yRmxOak14WkRkalpHRmxOVEpqT0RkaFl6
YzNNalZsTVRkak1EbGtNamRmWTI5c2RXMXVjeUk3WVRvMU9udHBPakE3WVRvM09udHpPalE2SW5S
NWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZORG9pYm1GdFpTSTdjem8x
T2lKc1lXSmxiQ0k3Y3pvME9pSk9ZVzFsSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnpiSFZu
SWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWxOc2RXY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZN
RHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lq
b3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJF
Nk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2
SW1samIyNGlPM002TlRvaWJHRmlaV3dpTzNNNk5Eb2lTV052YmlJN2N6bzRPaUpwYzBocFpHUmxi
aUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlt
eGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMx
cE9qTTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1Vp
TzNNNk1UQTZJbTVsZDNOZlkyOTFiblFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxSdmRHRnNJ
RUpsY21sMFlTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lq
dGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdW
a1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPalE3WVRvM09udHpPalE2SW5SNWNHVWlPM002
TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZO
VG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5
ZlgwPc8lbGoAKABSR0hEd3RkWTVLN0toWVBhV3k2WG90MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAA
AAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBB
cHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNh
ZmFyaS81MzcuMzYgFAAAWVRvM09udHpPak02SW5WeWJDSTdZVG93T250OWN6bzVPaUpmY0hKbGRt
bHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRjNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhO
MElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1VpTzMxek9qWTZJbDltYkdGemFDSTdZVG95
T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVaWGNpTzJFNk1EcDdmWDF6T2pZNklsOTBi
MnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5WcFMwOXRlazltZWtoeFYxRnhhR0pzU2tnMVJF
Wm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RR
d01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1FpTzJrNk1UQTdjem94TnpvaWNHRnpjM2R2
Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlUZzBOV0UzTjJKbFpUVXhORGMwTXpsallUTmpa
R013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RKa1kyTmpNMlk0T0dFME1UazNOVGc0TUdJaU8z
TTZOam9pZEdGaWJHVnpJanRoT2pNNmUzTTZOREE2SWpkbFlqZ3paREV5WkRVMFpUa3pNMk00Tmpk
aU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUow
ZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJbTVoYldVaU8zTTZO
VG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9U
b2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pv
eU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6
T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaVpXMWhh
V3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95
TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpP
akV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFltVnNJanR6T2pVNklsSnZiR1Z6SWp0ek9q
ZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lK
cGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJs
Wm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlP
M002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6
b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRpT2pFN2ZYMXpPalF3T2lJNE5URTJa
VEF6TXpSaFpqaG1aamt5WWpNeFkyUXdNalJtWXpsbE56UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUy
azZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJ
N2N6bzVPaUowYUhWdFltNWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZPVG9pVkdoMWJXSnVZV2xz
SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpP
akV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pX
NUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4
MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSjBhWFJzWlNJN2N6bzFPaUpzWVdKbGJDSTdjem8x
T2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJ
anRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJH
VmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pJN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNN
Nk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1Vp
TzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pUTJGMFpXZHZjbmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlP
Mkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pT
STdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRv
ek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6
T2prNkluVnpaWEl1Ym1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvM09pSlFaVzUxYkdseklqdHpP
amc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9p
SnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVS
bFptRjFiSFFpTzA0N2ZXazZORHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRp
TzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6ZEdGMGRYTWlPM002TlRvaWJHRmlaV3dpTzNNNk5qb2lV
M1JoZEhWeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8y
STZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldS
SWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOVHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8y
T2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNVG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZO
VG9pYkdGaVpXd2lPM002T0RvaVNHVmhaR3hwYm1VaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhP
aUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFPaUpzWVdKbGJDSTdjem80T2lKQ2NtVmhhMmx1WnlJN2N6
bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpv
aWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxF
WldaaGRXeDBJanRPTzMxcE9qYzdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJ
anR6T2pRNkltNWhiV1VpTzNNNk5Ub2lkbWxsZDNNaU8zTTZOVG9pYkdGaVpXd2lPM002TlRvaVZt
bGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpv
eE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhw
WkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvNE8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJ
bU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeU9pSndkV0pzYVhOb1pXUmZZWFFpTzNNNk5U
b2liR0ZpWld3aU8zTTZNVEk2SWxCMVlteHBjMmhsWkNCaGRDSTdjem80T2lKcGMwaHBaR1JsYmlJ
N1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhs
SWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMTlj
em8wTURvaU0yRmxOak14WkRkalpHRmxOVEpqT0RkaFl6YzNNalZsTVRkak1EbGtNamRmWTI5c2RX
MXVjeUk3WVRvMU9udHBPakE3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0
ek9qUTZJbTVoYldVaU8zTTZORG9pYm1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvME9pSk9ZVzFs
SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpP
akV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pX
NUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4
MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnpiSFZuSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2
SWxOc2RXY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZ
am94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpF
aHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZ
NkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2SW1samIyNGlPM002TlRvaWJHRmlaV3dp
TzNNNk5Eb2lTV052YmlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5i
R1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIy
ZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qTTdZVG8zT250ek9qUTZJblI1Y0dV
aU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1UQTZJbTVsZDNOZlkyOTFiblFp
TzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxSdmRHRnNJRUpsY21sMFlTSTdjem80T2lKcGMwaHBa
R1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJH
VmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0
T08zMXBPalE3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVo
YldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZOVG9pYkdGaVpXd2lPM002TVRBNklrTnla
V0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpD
STdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3hPM002TWpRNkltbHpWRzluWjJ4
bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5ZlgwPd0mbGrwSZdT
'/*!*/;
# at 309998
#260731 11:38:53 server id 1  end_log_pos 310029 CRC32 0x0e201f60 	Xid = 3104
COMMIT/*!*/;
# at 310029
#260731 11:39:02 server id 1  end_log_pos 310108 CRC32 0x142e4c9a 	Anonymous_GTID	last_committed=123	sequence_number=124	rbr_only=yes	original_committed_timestamp=1785472742685712	immediate_commit_timestamp=1785472742685712	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472742685712 (2026-07-31 11:39:02.685712 SE Asia Standard Time)
# immediate_commit_timestamp=1785472742685712 (2026-07-31 11:39:02.685712 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472742685712*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 310108
#260731 11:39:02 server id 1  end_log_pos 310183 CRC32 0x70488196 	Query	thread_id=130	exec_time=0	error_code=0
SET TIMESTAMP=1785472742/*!*/;
BEGIN
/*!*/;
# at 310183
#260731 11:39:02 server id 1  end_log_pos 310242 CRC32 0x6c774df2 	Table_map: `news`.`cache` mapped to number 88
# at 310242
#260731 11:39:02 server id 1  end_log_pos 310358 CRC32 0x817cc1a6 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
5iZsahMBAAAAOwAAAOK7BAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4PJN
d2w=
5iZsah4BAAAAdAAAAFa8BAAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjFiMDY1MmRhYzU4ZjFlYzQzMTQwNDVkNWQ2MTQ1ZDA1MzczZTc3OWYEAABpOjE7IidsaqbB
fIE=
'/*!*/;
# at 310358
#260731 11:39:02 server id 1  end_log_pos 310389 CRC32 0x50df91e4 	Xid = 3134
COMMIT/*!*/;
# at 310389
#260731 11:39:02 server id 1  end_log_pos 310468 CRC32 0x83941fee 	Anonymous_GTID	last_committed=124	sequence_number=125	rbr_only=yes	original_committed_timestamp=1785472742776574	immediate_commit_timestamp=1785472742776574	transaction_length=508
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472742776574 (2026-07-31 11:39:02.776574 SE Asia Standard Time)
# immediate_commit_timestamp=1785472742776574 (2026-07-31 11:39:02.776574 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472742776574*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 310468
#260731 11:39:02 server id 1  end_log_pos 310551 CRC32 0x3d0dbf4e 	Query	thread_id=130	exec_time=0	error_code=0
SET TIMESTAMP=1785472742/*!*/;
BEGIN
/*!*/;
# at 310551
#260731 11:39:02 server id 1  end_log_pos 310629 CRC32 0xe02e73e4 	Table_map: `news`.`activity_logs` mapped to number 101
# at 310629
#260731 11:39:02 server id 1  end_log_pos 310866 CRC32 0x44a8858d 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
5iZsahMBAAAATgAAAGW9BAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeDkcy7g
5iZsah4BAAAA7QAAAFK+BAAAAGUAAAAAAAEAAgAI/wgpAwAAAAAAAAoAAAAAAAAACgBwYWdlX3Zp
c2l0LABodHRwczovL25ld3MudGVzdC9wYWdlL3NhbWJ1dGFuLWtlcGFsYS1kaW5hcwkxMjcuMC4w
LjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0
LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4z
NmprxHaNhahE
'/*!*/;
# at 310866
#260731 11:39:02 server id 1  end_log_pos 310897 CRC32 0x91727591 	Xid = 3188
COMMIT/*!*/;
# at 310897
#260731 11:39:02 server id 1  end_log_pos 310976 CRC32 0x190fe862 	Anonymous_GTID	last_committed=125	sequence_number=126	rbr_only=yes	original_committed_timestamp=1785472742788986	immediate_commit_timestamp=1785472742788986	transaction_length=11010
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472742788986 (2026-07-31 11:39:02.788986 SE Asia Standard Time)
# immediate_commit_timestamp=1785472742788986 (2026-07-31 11:39:02.788986 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472742788986*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 310976
#260731 11:39:02 server id 1  end_log_pos 311060 CRC32 0x041561e3 	Query	thread_id=130	exec_time=0	error_code=0
SET TIMESTAMP=1785472742/*!*/;
BEGIN
/*!*/;
# at 311060
#260731 11:39:02 server id 1  end_log_pos 311128 CRC32 0x40d81af4 	Table_map: `news`.`sessions` mapped to number 83
# at 311128
#260731 11:39:02 server id 1  end_log_pos 321876 CRC32 0xfbd205ae 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
5iZsahMBAAAARAAAAFi/BAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4PQa2EA=
5iZsah8BAAAA/CkAAFTpBAAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYgFAAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TVRj
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMElqdHpPalU2SW5KdmRYUmxJanR6T2pRNkltaHZiV1Vp
TzMxek9qWTZJbDltYkdGemFDSTdZVG95T250ek9qTTZJbTlzWkNJN1lUb3dPbnQ5Y3pvek9pSnVa
WGNpTzJFNk1EcDdmWDF6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pT1hwS1NrTktPWEZFVm5WcFMw
OXRlazltZWtoeFYxRnhhR0pzU2tnMVJFWm1WVE5UVDFCMVFpSTdjem8xTURvaWJHOW5hVzVmZDJW
aVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3TVRSak4yWTFPR1ZoTkdVek1EazRPV1Fp
TzJrNk1UQTdjem94TnpvaWNHRnpjM2R2Y21SZmFHRnphRjkzWldJaU8zTTZOalE2SWpKaVlUZzBO
V0UzTjJKbFpUVXhORGMwTXpsallUTmpaR013TkdObFpqVXdZMkl4WXpFMU1tSTRaRE01T1RKa1ky
TmpNMlk0T0dFME1UazNOVGc0TUdJaU8zTTZOam9pZEdGaWJHVnpJanRoT2pNNmUzTTZOREE2SWpk
bFlqZ3paREV5WkRVMFpUa3pNMk00TmpkaU4yVXdaR0k1TXpNM09UYzRYMk52YkhWdGJuTWlPMkU2
TkRwN2FUb3dPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZ
VzFsSWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVRtRnRaU0k3Y3pvNE9p
SnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhO
VWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1po
ZFd4MElqdE9PMzFwT2pFN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpP
alE2SW01aGJXVWlPM002TlRvaVpXMWhhV3dpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pUlcxaGFX
d2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNN
Nk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1Js
YmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZi
SFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKeWIyeGxjeTV1WVcxbElqdHpPalU2SW14aFlt
VnNJanR6T2pVNklsSnZiR1Z6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk16dGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpG
OWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBo
cFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRu
YkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJ
anRpT2pFN2ZYMXpPalF3T2lJNE5URTJaVEF6TXpSaFpqaG1aamt5WWpNeFkyUXdNalJtWXpsbE56
UTBaVjlqYjJ4MWJXNXpJanRoT2prNmUyazZNRHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lK
amIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzVPaUowYUhWdFltNWhhV3dpTzNNNk5Ub2liR0Zp
Wld3aU8zTTZPVG9pVkdoMWJXSnVZV2xzSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSjBhWFJz
WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8xT2lKVWFYUnNaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZ
am93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElq
dGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pJ
N1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002
TVRNNkltTmhkR1ZuYjNKNUxtNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pUTJGMFpXZHZj
bmtpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8z
TTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdS
bGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvek8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52
YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2prNkluVnpaWEl1Ym1GdFpTSTdjem8xT2lKc1lXSmxi
Q0k3Y3pvM09pSlFaVzUxYkdseklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMx
UnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lK
cGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZORHRoT2pjNmUzTTZORG9p
ZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzJPaUp6ZEdGMGRYTWlP
M002TlRvaWJHRmlaV3dpTzNNNk5qb2lVM1JoZEhWeklqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9q
QTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJ
Nk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZOVHRo
T2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hN
VG9pYVhOZmFHVmhaR3hwYm1VaU8zTTZOVG9pYkdGaVpXd2lPM002T0RvaVNHVmhaR3hwYm1VaU8z
TTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJ
NkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1
UkdWbVlYVnNkQ0k3VGp0OWFUbzJPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRi
aUk3Y3pvME9pSnVZVzFsSWp0ek9qRXhPaUpwYzE5aWNtVmhhMmx1WnlJN2N6bzFPaUpzWVdKbGJD
STdjem80T2lKQ2NtVmhhMmx1WnlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qYzdZVG8zT250ek9qUTZJ
blI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2lkbWxsZDNNaU8z
TTZOVG9pYkdGaVpXd2lPM002TlRvaVZtbGxkM01pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0
ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93
TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvNE8yRTZO
enA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeU9p
SndkV0pzYVhOb1pXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxCMVlteHBjMmhsWkNC
aGRDSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3
Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGta
R1Z1UW5sRVpXWmhkV3gwSWp0T08zMTljem8wTURvaU0yRmxOak14WkRkalpHRmxOVEpqT0RkaFl6
YzNNalZsTVRkak1EbGtNamRmWTI5c2RXMXVjeUk3WVRvMU9udHBPakE3WVRvM09udHpPalE2SW5S
NWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZORG9pYm1GdFpTSTdjem8x
T2lKc1lXSmxiQ0k3Y3pvME9pSk9ZVzFsSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVP
aUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9q
STBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk1UdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnpiSFZu
SWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWxOc2RXY2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZN
RHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lq
b3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG95TzJF
Nk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2
SW1samIyNGlPM002TlRvaWJHRmlaV3dpTzNNNk5Eb2lTV052YmlJN2N6bzRPaUpwYzBocFpHUmxi
aUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlt
eGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMx
cE9qTTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1Vp
TzNNNk1UQTZJbTVsZDNOZlkyOTFiblFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEk2SWxSdmRHRnNJ
RUpsY21sMFlTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lq
dGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdW
a1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPalE3WVRvM09udHpPalE2SW5SNWNHVWlPM002
TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEE2SW1OeVpXRjBaV1JmWVhRaU8zTTZO
VG9pYkdGaVpXd2lPM002TVRBNklrTnlaV0YwWldRZ1lYUWlPM002T0RvaWFYTklhV1JrWlc0aU8y
STZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam93TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJ
N1lqb3hPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1lqb3hPMzE5
ZlgwPd0mbGoAKABSR0hEd3RkWTVLN0toWVBhV3k2WG90MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAA
AAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBB
cHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNh
ZmFyaS81MzcuMzZMFAAAWVRvM09udHpPak02SW5WeWJDSTdZVG93T250OWN6bzVPaUpmY0hKbGRt
bHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TkRRNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhO
MEwzQmhaMlV2YzJGdFluVjBZVzR0YTJWd1lXeGhMV1JwYm1GeklqdHpPalU2SW5KdmRYUmxJanR6
T2prNkluQmhaMlV1YzJodmR5STdmWE02TmpvaVgyWnNZWE5vSWp0aE9qSTZlM002TXpvaWIyeGtJ
anRoT2pBNmUzMXpPak02SW01bGR5STdZVG93T250OWZYTTZOam9pWDNSdmEyVnVJanR6T2pRd09p
STVla3BLUTBvNWNVUldkV2xMVDIxNlQyWjZTSEZYVVhGb1lteEtTRFZFUm1aVk0xTlBVSFZDSWp0
ek9qVXdPaUpzYjJkcGJsOTNaV0pmTlRsaVlUTTJZV1JrWXpKaU1tWTVOREF4TlRnd1pqQXhOR00z
WmpVNFpXRTBaVE13T1RnNVpDSTdhVG94TUR0ek9qRTNPaUp3WVhOemQyOXlaRjlvWVhOb1gzZGxZ
aUk3Y3pvMk5Eb2lNbUpoT0RRMVlUYzNZbVZsTlRFME56UXpPV05oTTJOa1l6QTBZMlZtTlRCallq
RmpNVFV5WWpoa016azVNbVJqWTJNelpqZzRZVFF4T1RjMU9EZ3dZaUk3Y3pvMk9pSjBZV0pzWlhN
aU8yRTZNenA3Y3pvME1Eb2lOMlZpT0ROa01USmtOVFJsT1RNell6ZzJOMkkzWlRCa1lqa3pNemM1
TnpoZlkyOXNkVzF1Y3lJN1lUbzBPbnRwT2pBN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZ
MjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TkRvaWJtRnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6
bzBPaUpPWVcxbElqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldR
aU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRz
WldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNVHRoT2pjNmUzTTZORG9pZEhsd1pTSTdj
em8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6bzFPaUpsYldGcGJDSTdjem8xT2lKc1lX
SmxiQ0k3Y3pvMU9pSkZiV0ZwYkNJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qSTdZVG8zT250ek9qUTZJ
blI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1UQTZJbkp2YkdWekxt
NWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pVW05c1pYTWlPM002T0RvaWFYTklhV1JrWlc0
aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pz
WlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlh
VG96TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElq
dHpPakV3T2lKamNtVmhkR1ZrWDJGMElqdHpPalU2SW14aFltVnNJanR6T2pFd09pSkRjbVZoZEdW
a0lHRjBJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2
TUR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNVHR6T2pJME9pSnBjMVJ2WjJkc1pXUklh
V1JrWlc1Q2VVUmxabUYxYkhRaU8ySTZNVHQ5ZlhNNk5EQTZJamcxTVRabE1ETXpOR0ZtT0dabU9U
SmlNekZqWkRBeU5HWmpPV1UzTkRSbFgyTnZiSFZ0Ym5NaU8yRTZPVHA3YVRvd08yRTZOenA3Y3pv
ME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2prNkluUm9kVzFp
Ym1GcGJDSTdjem8xT2lKc1lXSmxiQ0k3Y3pvNU9pSlVhSFZ0WW01aGFXd2lPM002T0RvaWFYTklh
V1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloy
eGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJ
N1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1
WVcxbElqdHpPalU2SW5ScGRHeGxJanR6T2pVNklteGhZbVZzSWp0ek9qVTZJbFJwZEd4bElqdHpP
amc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9p
SnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVS
bFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRp
TzNNNk5Eb2libUZ0WlNJN2N6b3hNem9pWTJGMFpXZHZjbmt1Ym1GdFpTSTdjem8xT2lKc1lXSmxi
Q0k3Y3pvNE9pSkRZWFJsWjI5eWVTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFY
TlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRv
aWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPak03WVRvM09udHpPalE2
SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZPVG9pZFhObGNpNXVZ
VzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPamM2SWxCbGJuVnNhWE1pTzNNNk9Eb2lhWE5JYVdSa1pX
NGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdK
c1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5
YVRvME8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJ
anR6T2pZNkluTjBZWFIxY3lJN2N6bzFPaUpzWVdKbGJDSTdjem8yT2lKVGRHRjBkWE1pTzNNNk9E
b2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1s
elZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1Zt
WVhWc2RDSTdUanQ5YVRvMU8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdj
em8wT2lKdVlXMWxJanR6T2pFeE9pSnBjMTlvWldGa2JHbHVaU0k3Y3pvMU9pSnNZV0psYkNJN2N6
bzRPaUpJWldGa2JHbHVaU0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJk
bmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5V
YjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pZN1lUbzNPbnR6T2pRNkluUjVj
R1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRFNkltbHpYMkp5WldGcmFX
NW5JanR6T2pVNklteGhZbVZzSWp0ek9qZzZJa0p5WldGcmFXNW5JanR6T2pnNkltbHpTR2xrWkdW
dUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0Zp
YkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdm
V2s2Tnp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpT
STdjem8xT2lKMmFXVjNjeUk3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpXYVdWM2N5STdjem80T2lK
cGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5V
YjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhk
V3gwSWp0T08zMXBPamc3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9q
UTZJbTVoYldVaU8zTTZNVEk2SW5CMVlteHBjMmhsWkY5aGRDSTdjem8xT2lKc1lXSmxiQ0k3Y3pv
eE1qb2lVSFZpYkdsemFHVmtJR0YwSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpw
YzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBP
aUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3Zlgxek9qUXdPaUl6WVdVMk16
RmtOMk5rWVdVMU1tTTROMkZqTnpjeU5XVXhOMk13T1dReU4xOWpiMngxYlc1eklqdGhPalU2ZTJr
Nk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3
Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalE2SWs1aGJXVWlPM002T0RvaWFYTklh
V1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloy
eGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJ
N1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1
WVcxbElqdHpPalE2SW5Oc2RXY2lPM002TlRvaWJHRmlaV3dpTzNNNk5Eb2lVMngxWnlJN2N6bzRP
aUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFY
TlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWlda
aGRXeDBJanRPTzMxcE9qSTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6
T2pRNkltNWhiV1VpTzNNNk5Eb2lhV052YmlJN2N6bzFPaUpzWVdKbGJDSTdjem8wT2lKSlkyOXVJ
anR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9q
RXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1
Q2VVUmxabUYxYkhRaU8wNDdmV2s2TXp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngx
Ylc0aU8zTTZORG9pYm1GdFpTSTdjem94TURvaWJtVjNjMTlqYjNWdWRDSTdjem8xT2lKc1lXSmxi
Q0k3Y3pveE1qb2lWRzkwWVd3Z1FtVnlhWFJoSWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6
bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0
ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk5EdGhPamM2
ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZ
M0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6
bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qQTdjem94TWpv
aWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxF
WldaaGRXeDBJanRpT2pFN2ZYMTlmUT095iZsaq4F0vs=
'/*!*/;
# at 321876
#260731 11:39:02 server id 1  end_log_pos 321907 CRC32 0x7fc49aa5 	Xid = 3200
COMMIT/*!*/;
# at 321907
#260731 11:39:14 server id 1  end_log_pos 321986 CRC32 0x4360eb9e 	Anonymous_GTID	last_committed=126	sequence_number=127	rbr_only=yes	original_committed_timestamp=1785472754609475	immediate_commit_timestamp=1785472754609475	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472754609475 (2026-07-31 11:39:14.609475 SE Asia Standard Time)
# immediate_commit_timestamp=1785472754609475 (2026-07-31 11:39:14.609475 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472754609475*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 321986
#260731 11:39:14 server id 1  end_log_pos 322061 CRC32 0x90dc77b0 	Query	thread_id=131	exec_time=0	error_code=0
SET TIMESTAMP=1785472754/*!*/;
BEGIN
/*!*/;
# at 322061
#260731 11:39:14 server id 1  end_log_pos 322120 CRC32 0x84c4566f 	Table_map: `news`.`cache` mapped to number 88
# at 322120
#260731 11:39:14 server id 1  end_log_pos 322318 CRC32 0xc30fcd7e 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
8iZsahMBAAAAOwAAAEjqBAAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4G9W
xIQ=
8iZsah8BAAAAxgAAAA7rBAAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDowMjFkM2Y4MzA4ZThkN2MyYmY5ODhmN2Y4OGNiMWU1Nzc3MGVkZmExBAAAaToxOxknbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDowMjFkM2Y4MzA4ZThkN2MyYmY5ODhmN2Y4OGNi
MWU1Nzc3MGVkZmExBAAAaToyOy4nbGp+zQ/D
'/*!*/;
# at 322318
#260731 11:39:14 server id 1  end_log_pos 322349 CRC32 0x151d634f 	Xid = 3215
COMMIT/*!*/;
# at 322349
#260731 11:39:14 server id 1  end_log_pos 322428 CRC32 0x1d2ff991 	Anonymous_GTID	last_committed=127	sequence_number=128	rbr_only=yes	original_committed_timestamp=1785472754673559	immediate_commit_timestamp=1785472754673559	transaction_length=481
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472754673559 (2026-07-31 11:39:14.673559 SE Asia Standard Time)
# immediate_commit_timestamp=1785472754673559 (2026-07-31 11:39:14.673559 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472754673559*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 322428
#260731 11:39:14 server id 1  end_log_pos 322511 CRC32 0x0f78f9fb 	Query	thread_id=131	exec_time=0	error_code=0
SET TIMESTAMP=1785472754/*!*/;
BEGIN
/*!*/;
# at 322511
#260731 11:39:14 server id 1  end_log_pos 322589 CRC32 0x20e2dede 	Table_map: `news`.`activity_logs` mapped to number 101
# at 322589
#260731 11:39:14 server id 1  end_log_pos 322799 CRC32 0xe21e56c0 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
8iZsahMBAAAATgAAAB3sBAAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeDe3uIg
8iZsah4BAAAA0gAAAO/sBAAAAGUAAAAAAAEAAgAI/wgqAwAAAAAAAAoAAAAAAAAACgBwYWdlX3Zp
c2l0EQBodHRwczovL25ld3MudGVzdAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5U
IDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28p
IENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmprxILAVh7i
'/*!*/;
# at 322799
#260731 11:39:14 server id 1  end_log_pos 322830 CRC32 0x83b95465 	Xid = 3299
COMMIT/*!*/;
# at 322830
#260731 11:39:14 server id 1  end_log_pos 322909 CRC32 0x1de1ae88 	Anonymous_GTID	last_committed=128	sequence_number=129	rbr_only=yes	original_committed_timestamp=1785472754684192	immediate_commit_timestamp=1785472754684192	transaction_length=11010
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472754684192 (2026-07-31 11:39:14.684192 SE Asia Standard Time)
# immediate_commit_timestamp=1785472754684192 (2026-07-31 11:39:14.684192 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472754684192*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 322909
#260731 11:39:14 server id 1  end_log_pos 322993 CRC32 0xbe0dbfc7 	Query	thread_id=131	exec_time=0	error_code=0
SET TIMESTAMP=1785472754/*!*/;
BEGIN
/*!*/;
# at 322993
#260731 11:39:14 server id 1  end_log_pos 323061 CRC32 0xfd50a25a 	Table_map: `news`.`sessions` mapped to number 83
# at 323061
#260731 11:39:14 server id 1  end_log_pos 333809 CRC32 0xedf8b0c9 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
8iZsahMBAAAARAAAAPXtBAAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4FqiUP0=
8iZsah8BAAAA/CkAAPEXBQAAAFMAAAAAAAEAAgAG//8AKABSR0hEd3RkWTVLN0toWVBhV3k2WG90
MVhPRHo2RWVkcnlxQm5BeGVFCgAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzZMFAAAWVRvM09udHpPak02SW5WeWJD
STdZVG93T250OWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TkRR
NkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwzQmhaMlV2YzJGdFluVjBZVzR0YTJWd1lXeGhMV1Jw
Ym1GeklqdHpPalU2SW5KdmRYUmxJanR6T2prNkluQmhaMlV1YzJodmR5STdmWE02TmpvaVgyWnNZ
WE5vSWp0aE9qSTZlM002TXpvaWIyeGtJanRoT2pBNmUzMXpPak02SW01bGR5STdZVG93T250OWZY
TTZOam9pWDNSdmEyVnVJanR6T2pRd09pSTVla3BLUTBvNWNVUldkV2xMVDIxNlQyWjZTSEZYVVhG
b1lteEtTRFZFUm1aVk0xTlBVSFZDSWp0ek9qVXdPaUpzYjJkcGJsOTNaV0pmTlRsaVlUTTJZV1Jr
WXpKaU1tWTVOREF4TlRnd1pqQXhOR00zWmpVNFpXRTBaVE13T1RnNVpDSTdhVG94TUR0ek9qRTNP
aUp3WVhOemQyOXlaRjlvWVhOb1gzZGxZaUk3Y3pvMk5Eb2lNbUpoT0RRMVlUYzNZbVZsTlRFME56
UXpPV05oTTJOa1l6QTBZMlZtTlRCallqRmpNVFV5WWpoa016azVNbVJqWTJNelpqZzRZVFF4T1Rj
MU9EZ3dZaUk3Y3pvMk9pSjBZV0pzWlhNaU8yRTZNenA3Y3pvME1Eb2lOMlZpT0ROa01USmtOVFJs
T1RNell6ZzJOMkkzWlRCa1lqa3pNemM1TnpoZlkyOXNkVzF1Y3lJN1lUbzBPbnRwT2pBN1lUbzNP
bnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TkRvaWJt
RnRaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzBPaUpPWVcxbElqdHpPamc2SW1selNHbGtaR1Z1SWp0
aU9qQTdjem81T2lKcGMxUnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1Vp
TzJJNk1EdHpPakkwT2lKcGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZN
VHRoT2pjNmUzTTZORG9pZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6
bzFPaUpsYldGcGJDSTdjem8xT2lKc1lXSmxiQ0k3Y3pvMU9pSkZiV0ZwYkNJN2N6bzRPaUpwYzBo
cFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRu
YkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJ
anRPTzMxcE9qSTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNklt
NWhiV1VpTzNNNk1UQTZJbkp2YkdWekxtNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pVW05
c1pYTWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94
TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBa
R1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG96TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNklt
TnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV3T2lKamNtVmhkR1ZrWDJGMElqdHpPalU2SW14
aFltVnNJanR6T2pFd09pSkRjbVZoZEdWa0lHRjBJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3
Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TUR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZN
VHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8ySTZNVHQ5ZlhNNk5E
QTZJamcxTVRabE1ETXpOR0ZtT0dabU9USmlNekZqWkRBeU5HWmpPV1UzTkRSbFgyTnZiSFZ0Ym5N
aU8yRTZPVHA3YVRvd08yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8w
T2lKdVlXMWxJanR6T2prNkluUm9kVzFpYm1GcGJDSTdjem8xT2lKc1lXSmxiQ0k3Y3pvNU9pSlVh
SFZ0WW01aGFXd2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpD
STdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4
bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6
T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalU2SW5ScGRHeGxJanR6T2pVNklteGhZ
bVZzSWp0ek9qVTZJbFJwZEd4bElqdHpPamc2SW1selNHbGtaR1Z1SWp0aU9qQTdjem81T2lKcGMx
UnZaMmRzWldRaU8ySTZNVHR6T2pFeU9pSnBjMVJ2WjJkc1pXRmliR1VpTzJJNk1EdHpPakkwT2lK
cGMxUnZaMmRzWldSSWFXUmtaVzVDZVVSbFptRjFiSFFpTzA0N2ZXazZNanRoT2pjNmUzTTZORG9p
ZEhsd1pTSTdjem8yT2lKamIyeDFiVzRpTzNNNk5Eb2libUZ0WlNJN2N6b3hNem9pWTJGMFpXZHZj
bmt1Ym1GdFpTSTdjem8xT2lKc1lXSmxiQ0k3Y3pvNE9pSkRZWFJsWjI5eWVTSTdjem80T2lKcGMw
aHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJk
bmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gw
SWp0T08zMXBPak03WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJ
bTVoYldVaU8zTTZPVG9pZFhObGNpNXVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPamM2SWxCbGJu
VnNhWE1pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpv
eE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhw
WkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvME8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJ
bU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pZNkluTjBZWFIxY3lJN2N6bzFPaUpzWVdKbGJD
STdjem8yT2lKVGRHRjBkWE1pTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5
bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6
Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvMU8yRTZOenA3Y3pvME9pSjBl
WEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeE9pSnBjMTlvWldGa2JH
bHVaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzRPaUpJWldGa2JHbHVaU0k3Y3pvNE9pSnBjMGhwWkdS
bGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1Zo
WW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9P
MzFwT2pZN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJX
VWlPM002TVRFNkltbHpYMkp5WldGcmFXNW5JanR6T2pVNklteGhZbVZzSWp0ek9qZzZJa0p5WldG
cmFXNW5JanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2
TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklh
V1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2Tnp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9p
SmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8xT2lKMmFXVjNjeUk3Y3pvMU9pSnNZV0psYkNJ
N2N6bzFPaUpXYVdWM2N5STdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRu
YkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlVi
MmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPamc3WVRvM09udHpPalE2SW5SNWNH
VWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZNVEk2SW5CMVlteHBjMmhsWkY5
aGRDSTdjem8xT2lKc1lXSmxiQ0k3Y3pveE1qb2lVSFZpYkdsemFHVmtJR0YwSWp0ek9qZzZJbWx6
U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZa
MmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJI
UWlPMDQ3Zlgxek9qUXdPaUl6WVdVMk16RmtOMk5rWVdVMU1tTTROMkZqTnpjeU5XVXhOMk13T1dR
eU4xOWpiMngxYlc1eklqdGhPalU2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpq
YjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvME9pSnVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpP
alE2SWs1aGJXVWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpD
STdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4
bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG94TzJFNk56cDdjem8wT2lKMGVYQmxJanR6
T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPalE2SW5Oc2RXY2lPM002TlRvaWJHRmla
V3dpTzNNNk5Eb2lVMngxWnlJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIy
ZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhO
VWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qSTdZVG8zT250ek9qUTZJblI1
Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5Eb2lhV052YmlJN2N6bzFP
aUpzWVdKbGJDSTdjem8wT2lKSlkyOXVJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9p
SnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJ
ME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TXp0aE9qYzZlM002
TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TURvaWJtVjNj
MTlqYjNWdWRDSTdjem8xT2lKc1lXSmxiQ0k3Y3pveE1qb2lWRzkwWVd3Z1FtVnlhWFJoSWp0ek9q
ZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lK
cGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJs
Wm1GMWJIUWlPMDQ3ZldrNk5EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlP
M002TkRvaWJtRnRaU0k3Y3pveE1Eb2lZM0psWVhSbFpGOWhkQ0k3Y3pvMU9pSnNZV0psYkNJN2N6
b3hNRG9pUTNKbFlYUmxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhO
VWIyZG5iR1ZrSWp0aU9qQTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pFN2N6b3lORG9p
YVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRpT2pFN2ZYMTlmUT095iZsagAoAFJH
SER3dGRZNUs3S2hZUGFXeTZYb3QxWE9EejZFZWRyeXFCbkF4ZUUKAAAAAAAAAAkxMjcuMC4wLjFv
AE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUz
Ny4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNiAU
AABZVG8zT250ek9qTTZJblZ5YkNJN1lUb3dPbnQ5Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpw
N2N6b3pPaUoxY213aU8zTTZNVGM2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wSWp0ek9qVTZJbkp2
ZFhSbElqdHpPalE2SW1odmJXVWlPMzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNa
Q0k3WVRvd09udDljem96T2lKdVpYY2lPMkU2TURwN2ZYMXpPalk2SWw5MGIydGxiaUk3Y3pvME1E
b2lPWHBLU2tOS09YRkVWblZwUzA5dGVrOW1la2h4VjFGeGFHSnNTa2cxUkVabVZUTlRUMUIxUWlJ
N2N6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZrWkdNeVlqSm1PVFF3TVRVNE1HWXdNVFJq
TjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRBN2N6b3hOem9pY0dGemMzZHZjbVJmYUdGemFGOTNa
V0lpTzNNNk5qUTZJakppWVRnME5XRTNOMkpsWlRVeE5EYzBNemxqWVROalpHTXdOR05sWmpVd1ky
SXhZekUxTW1JNFpETTVPVEprWTJOak0yWTRPR0UwTVRrM05UZzRNR0lpTzNNNk5qb2lkR0ZpYkdW
eklqdGhPak02ZTNNNk5EQTZJamRsWWpnelpERXlaRFUwWlRrek0yTTROamRpTjJVd1pHSTVNek0z
T1RjNFgyTnZiSFZ0Ym5NaU8yRTZORHA3YVRvd08yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJ
bU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8z
TTZORG9pVG1GdFpTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdW
a0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRu
YkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPakU3WVRvM09udHpPalE2SW5SNWNHVWlP
M002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZOVG9pWlcxaGFXd2lPM002TlRvaWJH
RmlaV3dpTzNNNk5Ub2lSVzFoYVd3aU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1s
elZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2
SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3lPMkU2TnpwN2N6bzBP
aUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXdPaUp5YjJ4bGN5
NXVZVzFsSWp0ek9qVTZJbXhoWW1Wc0lqdHpPalU2SWxKdmJHVnpJanR6T2pnNkltbHpTR2xrWkdW
dUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0Zp
YkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdm
V2s2TXp0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpT
STdjem94TURvaVkzSmxZWFJsWkY5aGRDSTdjem8xT2lKc1lXSmxiQ0k3Y3pveE1Eb2lRM0psWVhS
bFpDQmhkQ0k3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRp
T2pBN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakU3Y3pveU5Eb2lhWE5VYjJkbmJHVmtT
R2xrWkdWdVFubEVaV1poZFd4MElqdGlPakU3Zlgxek9qUXdPaUk0TlRFMlpUQXpNelJoWmpobVpq
a3lZak14WTJRd01qUm1ZemxsTnpRMFpWOWpiMngxYlc1eklqdGhPams2ZTJrNk1EdGhPamM2ZTNN
Nk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvNU9pSjBhSFZ0
WW01aGFXd2lPM002TlRvaWJHRmlaV3dpTzNNNk9Ub2lWR2gxYldKdVlXbHNJanR6T2pnNkltbHpT
R2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloy
ZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhR
aU8wNDdmV2s2TVR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9p
Ym1GdFpTSTdjem8xT2lKMGFYUnNaU0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpVYVhSc1pTSTdj
em80T2lKcGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1q
b2lhWE5VYjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5s
RVpXWmhkV3gwSWp0T08zMXBPakk3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1
SWp0ek9qUTZJbTVoYldVaU8zTTZNVE02SW1OaGRHVm5iM0o1TG01aGJXVWlPM002TlRvaWJHRmla
V3dpTzNNNk9Eb2lRMkYwWldkdmNua2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNklt
bHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpR
NkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG96TzJFNk56cDdjem8w
T2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPams2SW5WelpYSXVi
bUZ0WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8zT2lKUVpXNTFiR2x6SWp0ek9qZzZJbWx6U0dsa1pH
VnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldG
aWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3
ZldrNk5EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRa
U0k3Y3pvMk9pSnpkR0YwZFhNaU8zTTZOVG9pYkdGaVpXd2lPM002TmpvaVUzUmhkSFZ6SWp0ek9q
ZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lK
cGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJs
Wm1GMWJIUWlPMDQ3ZldrNk5UdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlP
M002TkRvaWJtRnRaU0k3Y3pveE1Ub2lhWE5mYUdWaFpHeHBibVVpTzNNNk5Ub2liR0ZpWld3aU8z
TTZPRG9pU0dWaFpHeHBibVVpTzNNNk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5
bloyeGxaQ0k3WWpveE8zTTZNVEk2SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6
Vkc5bloyeGxaRWhwWkdSbGJrSjVSR1ZtWVhWc2RDSTdUanQ5YVRvMk8yRTZOenA3Y3pvME9pSjBl
WEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlXMWxJanR6T2pFeE9pSnBjMTlpY21WaGEy
bHVaeUk3Y3pvMU9pSnNZV0psYkNJN2N6bzRPaUpDY21WaGEybHVaeUk3Y3pvNE9pSnBjMGhwWkdS
bGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1Zo
WW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9P
MzFwT2pjN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJX
VWlPM002TlRvaWRtbGxkM01pTzNNNk5Ub2liR0ZpWld3aU8zTTZOVG9pVm1sbGQzTWlPM002T0Rv
aWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6
Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1Z
WFZzZENJN1RqdDlhVG80TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6
bzBPaUp1WVcxbElqdHpPakV5T2lKd2RXSnNhWE5vWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNN
Nk1USTZJbEIxWW14cGMyaGxaQ0JoZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9p
YVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lO
RG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxOWN6bzBNRG9pTTJGbE5q
TXhaRGRqWkdGbE5USmpPRGRoWXpjM01qVmxNVGRqTURsa01qZGZZMjlzZFcxdWN5STdZVG8xT250
cE9qQTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1Vp
TzNNNk5Eb2libUZ0WlNJN2N6bzFPaUpzWVdKbGJDSTdjem8wT2lKT1lXMWxJanR6T2pnNkltbHpT
R2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloy
ZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhR
aU8wNDdmV2s2TVR0aE9qYzZlM002TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9p
Ym1GdFpTSTdjem8wT2lKemJIVm5JanR6T2pVNklteGhZbVZzSWp0ek9qUTZJbE5zZFdjaU8zTTZP
RG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNklt
bHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdW
bVlYVnNkQ0k3VGp0OWFUb3lPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3
Y3pvME9pSnVZVzFsSWp0ek9qUTZJbWxqYjI0aU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVNXTnZi
aUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6
b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdW
dVFubEVaV1poZFd4MElqdE9PMzFwT2pNN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlz
ZFcxdUlqdHpPalE2SW01aGJXVWlPM002TVRBNkltNWxkM05mWTI5MWJuUWlPM002TlRvaWJHRmla
V3dpTzNNNk1USTZJbFJ2ZEdGc0lFSmxjbWwwWVNJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08z
TTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pB
N2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qUTdZVG8z
T250ek9qUTZJblI1Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1UQTZJ
bU55WldGMFpXUmZZWFFpTzNNNk5Ub2liR0ZpWld3aU8zTTZNVEE2SWtOeVpXRjBaV1FnWVhRaU8z
TTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3dPM002TVRJ
NkltbHpWRzluWjJ4bFlXSnNaU0k3WWpveE8zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1
UkdWbVlYVnNkQ0k3WWpveE8zMTlmWDA98iZsasmw+O0=
'/*!*/;
# at 333809
#260731 11:39:14 server id 1  end_log_pos 333840 CRC32 0xe52b8e29 	Xid = 3311
COMMIT/*!*/;
# at 333840
#260731 11:39:32 server id 1  end_log_pos 333919 CRC32 0xd7a4dc4a 	Anonymous_GTID	last_committed=129	sequence_number=130	rbr_only=yes	original_committed_timestamp=1785472772053472	immediate_commit_timestamp=1785472772053472	transaction_length=490
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472772053472 (2026-07-31 11:39:32.053472 SE Asia Standard Time)
# immediate_commit_timestamp=1785472772053472 (2026-07-31 11:39:32.053472 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472772053472*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 333919
#260731 11:39:32 server id 1  end_log_pos 334002 CRC32 0xe55cb40a 	Query	thread_id=132	exec_time=0	error_code=0
SET TIMESTAMP=1785472772/*!*/;
BEGIN
/*!*/;
# at 334002
#260731 11:39:32 server id 1  end_log_pos 334080 CRC32 0x768cc7d1 	Table_map: `news`.`activity_logs` mapped to number 101
# at 334080
#260731 11:39:32 server id 1  end_log_pos 334299 CRC32 0xec5cffb5 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
BCdsahMBAAAATgAAAAAZBQAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeDRx4x2
BCdsah4BAAAA2wAAANsZBQAAAGUAAAAAAAEAAgAI/wgrAwAAAAAAAAoAAAAAAAAABgBsb2dvdXQe
AGh0dHBzOi8vbmV3cy50ZXN0L2FkbWluL2xvZ291dAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChX
aW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxp
a2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmprxJS1/1zs
'/*!*/;
# at 334299
#260731 11:39:32 server id 1  end_log_pos 334330 CRC32 0xd0792198 	Xid = 3326
COMMIT/*!*/;
# at 334330
#260731 11:39:32 server id 1  end_log_pos 334409 CRC32 0xbd944a03 	Anonymous_GTID	last_committed=130	sequence_number=131	rbr_only=yes	original_committed_timestamp=1785472772060054	immediate_commit_timestamp=1785472772060054	transaction_length=5622
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472772060054 (2026-07-31 11:39:32.060054 SE Asia Standard Time)
# immediate_commit_timestamp=1785472772060054 (2026-07-31 11:39:32.060054 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472772060054*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 334409
#260731 11:39:32 server id 1  end_log_pos 334484 CRC32 0xe018d7fc 	Query	thread_id=132	exec_time=0	error_code=0
SET TIMESTAMP=1785472772/*!*/;
BEGIN
/*!*/;
# at 334484
#260731 11:39:32 server id 1  end_log_pos 334552 CRC32 0x217808cf 	Table_map: `news`.`sessions` mapped to number 83
# at 334552
#260731 11:39:32 server id 1  end_log_pos 339921 CRC32 0x14a52cca 	Delete_rows: table id 83 flags: STMT_END_F

BINLOG '
BCdsahMBAAAARAAAANgaBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4M8IeCE=
BCdsaiABAAAA+RQAANEvBQAAAFMAAAAAAAEAAgAG/wAoAFJHSER3dGRZNUs3S2hZUGFXeTZYb3Qx
WE9EejZFZWRyeXFCbkF4ZUUKAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dz
IE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vj
a28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNiAUAABZVG8zT250ek9qTTZJblZ5YkNJ
N1lUb3dPbnQ5Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pPaUoxY213aU8zTTZNVGM2
SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wSWp0ek9qVTZJbkp2ZFhSbElqdHpPalE2SW1odmJXVWlP
MzF6T2pZNklsOW1iR0Z6YUNJN1lUb3lPbnR6T2pNNkltOXNaQ0k3WVRvd09udDljem96T2lKdVpY
Y2lPMkU2TURwN2ZYMXpPalk2SWw5MGIydGxiaUk3Y3pvME1Eb2lPWHBLU2tOS09YRkVWblZwUzA5
dGVrOW1la2h4VjFGeGFHSnNTa2cxUkVabVZUTlRUMUIxUWlJN2N6bzFNRG9pYkc5bmFXNWZkMlZp
WHpVNVltRXpObUZrWkdNeVlqSm1PVFF3TVRVNE1HWXdNVFJqTjJZMU9HVmhOR1V6TURrNE9XUWlP
Mms2TVRBN2N6b3hOem9pY0dGemMzZHZjbVJmYUdGemFGOTNaV0lpTzNNNk5qUTZJakppWVRnME5X
RTNOMkpsWlRVeE5EYzBNemxqWVROalpHTXdOR05sWmpVd1kySXhZekUxTW1JNFpETTVPVEprWTJO
ak0yWTRPR0UwTVRrM05UZzRNR0lpTzNNNk5qb2lkR0ZpYkdWeklqdGhPak02ZTNNNk5EQTZJamRs
WWpnelpERXlaRFUwWlRrek0yTTROamRpTjJVd1pHSTVNek0zT1RjNFgyTnZiSFZ0Ym5NaU8yRTZO
RHA3YVRvd08yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJpSTdjem8wT2lKdVlX
MWxJanR6T2pRNkltNWhiV1VpTzNNNk5Ub2liR0ZpWld3aU8zTTZORG9pVG1GdFpTSTdjem80T2lK
cGMwaHBaR1JsYmlJN1lqb3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5V
YjJkbmJHVmhZbXhsSWp0aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhk
V3gwSWp0T08zMXBPakU3WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9q
UTZJbTVoYldVaU8zTTZOVG9pWlcxaGFXd2lPM002TlRvaWJHRmlaV3dpTzNNNk5Ub2lSVzFoYVd3
aU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002
TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpvd08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxi
a0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3lPMkU2TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJI
VnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qRXdPaUp5YjJ4bGN5NXVZVzFsSWp0ek9qVTZJbXhoWW1W
c0lqdHpPalU2SWxKdmJHVnpJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9pSnBjMVJ2
WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJME9pSnBj
MVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TXp0aE9qYzZlM002TkRvaWRI
bHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem94TURvaVkzSmxZWFJsWkY5
aGRDSTdjem8xT2lKc1lXSmxiQ0k3Y3pveE1Eb2lRM0psWVhSbFpDQmhkQ0k3Y3pvNE9pSnBjMGhw
WkdSbGJpSTdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pBN2N6b3hNam9pYVhOVWIyZG5i
R1ZoWW14bElqdGlPakU3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElq
dGlPakU3Zlgxek9qUXdPaUk0TlRFMlpUQXpNelJoWmpobVpqa3lZak14WTJRd01qUm1ZemxsTnpR
MFpWOWpiMngxYlc1eklqdGhPams2ZTJrNk1EdGhPamM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpq
YjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvNU9pSjBhSFZ0WW01aGFXd2lPM002TlRvaWJHRmla
V3dpTzNNNk9Ub2lWR2gxYldKdVlXbHNJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9p
SnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJ
ME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TVR0aE9qYzZlM002
TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8xT2lKMGFYUnNa
U0k3Y3pvMU9pSnNZV0psYkNJN2N6bzFPaUpVYVhSc1pTSTdjem80T2lKcGMwaHBaR1JsYmlJN1lq
b3dPM002T1RvaWFYTlViMmRuYkdWa0lqdGlPakU3Y3pveE1qb2lhWE5VYjJkbmJHVmhZbXhsSWp0
aU9qQTdjem95TkRvaWFYTlViMmRuYkdWa1NHbGtaR1Z1UW5sRVpXWmhkV3gwSWp0T08zMXBPakk3
WVRvM09udHpPalE2SW5SNWNHVWlPM002TmpvaVkyOXNkVzF1SWp0ek9qUTZJbTVoYldVaU8zTTZN
VE02SW1OaGRHVm5iM0o1TG01aGJXVWlPM002TlRvaWJHRmlaV3dpTzNNNk9Eb2lRMkYwWldkdmNu
a2lPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNN
Nk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dPM002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1Js
YmtKNVJHVm1ZWFZzZENJN1RqdDlhVG96TzJFNk56cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZi
SFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPams2SW5WelpYSXVibUZ0WlNJN2N6bzFPaUpzWVdKbGJD
STdjem8zT2lKUVpXNTFiR2x6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pBN2N6bzVPaUpwYzFS
dloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2TUR0ek9qSTBPaUpw
YzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk5EdGhPamM2ZTNNNk5Eb2lk
SGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pvMk9pSnpkR0YwZFhNaU8z
TTZOVG9pYkdGaVpXd2lPM002TmpvaVUzUmhkSFZ6SWp0ek9qZzZJbWx6U0dsa1pHVnVJanRpT2pB
N2N6bzVPaUpwYzFSdloyZHNaV1FpTzJJNk1UdHpPakV5T2lKcGMxUnZaMmRzWldGaWJHVWlPMkk2
TUR0ek9qSTBPaUpwYzFSdloyZHNaV1JJYVdSa1pXNUNlVVJsWm1GMWJIUWlPMDQ3ZldrNk5UdGhP
amM2ZTNNNk5Eb2lkSGx3WlNJN2N6bzJPaUpqYjJ4MWJXNGlPM002TkRvaWJtRnRaU0k3Y3pveE1U
b2lhWE5mYUdWaFpHeHBibVVpTzNNNk5Ub2liR0ZpWld3aU8zTTZPRG9pU0dWaFpHeHBibVVpTzNN
Nk9Eb2lhWE5JYVdSa1pXNGlPMkk2TUR0ek9qazZJbWx6Vkc5bloyeGxaQ0k3WWpveE8zTTZNVEk2
SW1selZHOW5aMnhsWVdKc1pTSTdZam93TzNNNk1qUTZJbWx6Vkc5bloyeGxaRWhwWkdSbGJrSjVS
R1ZtWVhWc2RDSTdUanQ5YVRvMk8yRTZOenA3Y3pvME9pSjBlWEJsSWp0ek9qWTZJbU52YkhWdGJp
STdjem8wT2lKdVlXMWxJanR6T2pFeE9pSnBjMTlpY21WaGEybHVaeUk3Y3pvMU9pSnNZV0psYkNJ
N2N6bzRPaUpDY21WaGEybHVaeUk3Y3pvNE9pSnBjMGhwWkdSbGJpSTdZam93TzNNNk9Ub2lhWE5V
YjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14bElqdGlPakE3Y3pveU5Eb2lh
WE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFwT2pjN1lUbzNPbnR6T2pRNklu
UjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlPM002TlRvaWRtbGxkM01pTzNN
Nk5Ub2liR0ZpWld3aU8zTTZOVG9pVm1sbGQzTWlPM002T0RvaWFYTklhV1JrWlc0aU8ySTZNRHR6
T2prNkltbHpWRzluWjJ4bFpDSTdZam94TzNNNk1USTZJbWx6Vkc5bloyeGxZV0pzWlNJN1lqb3dP
M002TWpRNkltbHpWRzluWjJ4bFpFaHBaR1JsYmtKNVJHVm1ZWFZzZENJN1RqdDlhVG80TzJFNk56
cDdjem8wT2lKMGVYQmxJanR6T2pZNkltTnZiSFZ0YmlJN2N6bzBPaUp1WVcxbElqdHpPakV5T2lK
d2RXSnNhWE5vWldSZllYUWlPM002TlRvaWJHRmlaV3dpTzNNNk1USTZJbEIxWW14cGMyaGxaQ0Jo
ZENJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0aU9qRTdj
em94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1ZrU0dsa1pH
VnVRbmxFWldaaGRXeDBJanRPTzMxOWN6bzBNRG9pTTJGbE5qTXhaRGRqWkdGbE5USmpPRGRoWXpj
M01qVmxNVGRqTURsa01qZGZZMjlzZFcxdWN5STdZVG8xT250cE9qQTdZVG8zT250ek9qUTZJblI1
Y0dVaU8zTTZOam9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk5Eb2libUZ0WlNJN2N6bzFP
aUpzWVdKbGJDSTdjem8wT2lKT1lXMWxJanR6T2pnNkltbHpTR2xrWkdWdUlqdGlPakE3Y3pvNU9p
SnBjMVJ2WjJkc1pXUWlPMkk2TVR0ek9qRXlPaUpwYzFSdloyZHNaV0ZpYkdVaU8ySTZNRHR6T2pJ
ME9pSnBjMVJ2WjJkc1pXUklhV1JrWlc1Q2VVUmxabUYxYkhRaU8wNDdmV2s2TVR0aE9qYzZlM002
TkRvaWRIbHdaU0k3Y3pvMk9pSmpiMngxYlc0aU8zTTZORG9pYm1GdFpTSTdjem8wT2lKemJIVm5J
anR6T2pVNklteGhZbVZzSWp0ek9qUTZJbE5zZFdjaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJNk1E
dHpPams2SW1selZHOW5aMnhsWkNJN1lqb3hPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3WWpv
d08zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3VGp0OWFUb3lPMkU2
TnpwN2N6bzBPaUowZVhCbElqdHpPalk2SW1OdmJIVnRiaUk3Y3pvME9pSnVZVzFsSWp0ek9qUTZJ
bWxqYjI0aU8zTTZOVG9pYkdGaVpXd2lPM002TkRvaVNXTnZiaUk3Y3pvNE9pSnBjMGhwWkdSbGJp
STdZam93TzNNNk9Ub2lhWE5VYjJkbmJHVmtJanRpT2pFN2N6b3hNam9pYVhOVWIyZG5iR1ZoWW14
bElqdGlPakE3Y3pveU5Eb2lhWE5VYjJkbmJHVmtTR2xrWkdWdVFubEVaV1poZFd4MElqdE9PMzFw
T2pNN1lUbzNPbnR6T2pRNkluUjVjR1VpTzNNNk5qb2lZMjlzZFcxdUlqdHpPalE2SW01aGJXVWlP
M002TVRBNkltNWxkM05mWTI5MWJuUWlPM002TlRvaWJHRmlaV3dpTzNNNk1USTZJbFJ2ZEdGc0lF
SmxjbWwwWVNJN2N6bzRPaUpwYzBocFpHUmxiaUk3WWpvd08zTTZPVG9pYVhOVWIyZG5iR1ZrSWp0
aU9qRTdjem94TWpvaWFYTlViMmRuYkdWaFlteGxJanRpT2pBN2N6b3lORG9pYVhOVWIyZG5iR1Zr
U0dsa1pHVnVRbmxFWldaaGRXeDBJanRPTzMxcE9qUTdZVG8zT250ek9qUTZJblI1Y0dVaU8zTTZO
am9pWTI5c2RXMXVJanR6T2pRNkltNWhiV1VpTzNNNk1UQTZJbU55WldGMFpXUmZZWFFpTzNNNk5U
b2liR0ZpWld3aU8zTTZNVEE2SWtOeVpXRjBaV1FnWVhRaU8zTTZPRG9pYVhOSWFXUmtaVzRpTzJJ
Nk1EdHpPams2SW1selZHOW5aMnhsWkNJN1lqb3dPM002TVRJNkltbHpWRzluWjJ4bFlXSnNaU0k3
WWpveE8zTTZNalE2SW1selZHOW5aMnhsWkVocFpHUmxia0o1UkdWbVlYVnNkQ0k3WWpveE8zMTlm
WDA98iZsasospRQ=
'/*!*/;
# at 339921
#260731 11:39:32 server id 1  end_log_pos 339952 CRC32 0x25eec4a3 	Xid = 3329
COMMIT/*!*/;
# at 339952
#260731 11:39:32 server id 1  end_log_pos 340031 CRC32 0x7afe8265 	Anonymous_GTID	last_committed=131	sequence_number=132	rbr_only=yes	original_committed_timestamp=1785472772074183	immediate_commit_timestamp=1785472772074183	transaction_length=622
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472772074183 (2026-07-31 11:39:32.074183 SE Asia Standard Time)
# immediate_commit_timestamp=1785472772074183 (2026-07-31 11:39:32.074183 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472772074183*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 340031
#260731 11:39:32 server id 1  end_log_pos 340106 CRC32 0x9ebd1dd0 	Query	thread_id=132	exec_time=0	error_code=0
SET TIMESTAMP=1785472772/*!*/;
BEGIN
/*!*/;
# at 340106
#260731 11:39:32 server id 1  end_log_pos 340174 CRC32 0x907da18a 	Table_map: `news`.`sessions` mapped to number 83
# at 340174
#260731 11:39:32 server id 1  end_log_pos 340543 CRC32 0x0620bb83 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
BCdsahMBAAAARAAAAM4wBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4IqhfZA=
BCdsah4BAAAAcQEAAD8yBQAAAFMAAAAAAAEAAgAG/wIoAHNheHk3cW9RQko5UnhHczBCckZMeHNC
Zm8wS2lRZnBnOUFtc05ZZzEJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4w
OyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJv
bWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzagAAAAWVRveU9udHpPalk2SWw5MGIydGxiaUk3Y3pv
ME1Eb2lRVWxUUkVsS00zTlBUMjU2Ykc1a2FqaGlVSHBNZFc5TWFWUlBSSGhPUmxZMWVHeHplVXhy
ZWlJN2N6bzJPaUpmWm14aGMyZ2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3ZlhNNk16b2li
bVYzSWp0aE9qQTZlMzE5ZlE9PQQnbGqDuyAG
'/*!*/;
# at 340543
#260731 11:39:32 server id 1  end_log_pos 340574 CRC32 0x9526c93a 	Xid = 3335
COMMIT/*!*/;
# at 340574
#260731 11:39:32 server id 1  end_log_pos 340653 CRC32 0x5e16ec62 	Anonymous_GTID	last_committed=132	sequence_number=133	rbr_only=yes	original_committed_timestamp=1785472772760815	immediate_commit_timestamp=1785472772760815	transaction_length=1118
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472772760815 (2026-07-31 11:39:32.760815 SE Asia Standard Time)
# immediate_commit_timestamp=1785472772760815 (2026-07-31 11:39:32.760815 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472772760815*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 340653
#260731 11:39:32 server id 1  end_log_pos 340737 CRC32 0x31a7552f 	Query	thread_id=133	exec_time=0	error_code=0
SET TIMESTAMP=1785472772/*!*/;
BEGIN
/*!*/;
# at 340737
#260731 11:39:32 server id 1  end_log_pos 340805 CRC32 0x0a8f1329 	Table_map: `news`.`sessions` mapped to number 83
# at 340805
#260731 11:39:32 server id 1  end_log_pos 341661 CRC32 0xc070ab5b 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
BCdsahMBAAAARAAAAEUzBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4CkTjwo=
BCdsah8BAAAAWAMAAJ02BQAAAFMAAAAAAAEAAgAG//8CKABzYXh5N3FvUUJKOVJ4R3MwQnJGTHhz
QmZvMEtpUWZwZzlBbXNOWWcxCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2oAAAAFlUb3lPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pUVVsVFJFbEtNM05QVDI1NmJHNWthamhpVUhwTWRXOU1hVlJQUkhoT1JsWTFlR3h6ZVV4
cmVpSTdjem8yT2lKZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9p
Ym1WM0lqdGhPakE2ZTMxOWZRPT0EJ2xqAigAc2F4eTdxb1FCSjlSeEdzMEJyRkx4c0JmbzBLaVFm
cGc5QW1zTllnMQkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0
OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAu
MC4wLjAgU2FmYXJpLzUzNy4zNjgBAABZVG96T250ek9qWTZJbDkwYjJ0bGJpSTdjem8wTURvaVFV
bFRSRWxLTTNOUFQyNTZiRzVrYWpoaVVIcE1kVzlNYVZSUFJIaE9SbFkxZUd4emVVeHJlaUk3Y3pv
Mk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRo
T2pBNmUzMTljem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qazZJ
bWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyeHZaMmx1SWp0ek9qVTZJbkp2ZFhSbElq
dHpPakkxT2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTVoZFhSb0xteHZaMmx1SWp0OWZRPT0EJ2xqW6tw
wA==
'/*!*/;
# at 341661
#260731 11:39:32 server id 1  end_log_pos 341692 CRC32 0x43ae381b 	Xid = 3347
COMMIT/*!*/;
# at 341692
#260731 11:39:40 server id 1  end_log_pos 341771 CRC32 0x286c53f0 	Anonymous_GTID	last_committed=133	sequence_number=134	rbr_only=yes	original_committed_timestamp=1785472780307643	immediate_commit_timestamp=1785472780307643	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472780307643 (2026-07-31 11:39:40.307643 SE Asia Standard Time)
# immediate_commit_timestamp=1785472780307643 (2026-07-31 11:39:40.307643 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472780307643*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 341771
#260731 11:39:40 server id 1  end_log_pos 341846 CRC32 0xd7e44db8 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1785472780/*!*/;
BEGIN
/*!*/;
# at 341846
#260731 11:39:40 server id 1  end_log_pos 341905 CRC32 0xfbc84982 	Table_map: `news`.`cache` mapped to number 88
# at 341905
#260731 11:39:40 server id 1  end_log_pos 342021 CRC32 0xea0f8cbf 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
DCdsahMBAAAAOwAAAJE3BQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4IJJ
yPs=
DCdsaiABAAAAdAAAAAU4BQAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjFmMjU2OTJlOTA3MTg4NmQ3ZDRiMzgyMDE5MGIwOTYwMmY3NDgwMjIEAABpOjI7USVsar+M
D+o=
'/*!*/;
# at 342021
#260731 11:39:40 server id 1  end_log_pos 342052 CRC32 0xe4357c7a 	Xid = 3362
COMMIT/*!*/;
# at 342052
#260731 11:39:40 server id 1  end_log_pos 342131 CRC32 0xb9afe5d6 	Anonymous_GTID	last_committed=134	sequence_number=135	rbr_only=yes	original_committed_timestamp=1785472780312769	immediate_commit_timestamp=1785472780312769	transaction_length=360
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472780312769 (2026-07-31 11:39:40.312769 SE Asia Standard Time)
# immediate_commit_timestamp=1785472780312769 (2026-07-31 11:39:40.312769 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472780312769*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 342131
#260731 11:39:40 server id 1  end_log_pos 342206 CRC32 0x869f9338 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1785472780/*!*/;
BEGIN
/*!*/;
# at 342206
#260731 11:39:40 server id 1  end_log_pos 342265 CRC32 0x406b6ff9 	Table_map: `news`.`cache` mapped to number 88
# at 342265
#260731 11:39:40 server id 1  end_log_pos 342381 CRC32 0x12c68754 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
DCdsahMBAAAAOwAAAPk4BQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Plv
a0A=
DCdsah4BAAAAdAAAAG05BQAAAFgAAAAAAAEAAgAD/wBDAGxhcmF2ZWwtY2FjaGUtcGFnZV9yZWZy
ZXNoOjFmMjU2OTJlOTA3MTg4NmQ3ZDRiMzgyMDE5MGIwOTYwMmY3NDgwMjIEAABpOjE7SCdsalSH
xhI=
'/*!*/;
# at 342381
#260731 11:39:40 server id 1  end_log_pos 342412 CRC32 0x4e2825ea 	Xid = 3365
COMMIT/*!*/;
# at 342412
#260731 11:39:40 server id 1  end_log_pos 342491 CRC32 0x46f2e79f 	Anonymous_GTID	last_committed=135	sequence_number=136	rbr_only=yes	original_committed_timestamp=1785472780408387	immediate_commit_timestamp=1785472780408387	transaction_length=369
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472780408387 (2026-07-31 11:39:40.408387 SE Asia Standard Time)
# immediate_commit_timestamp=1785472780408387 (2026-07-31 11:39:40.408387 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472780408387*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 342491
#260731 11:39:40 server id 1  end_log_pos 342566 CRC32 0xf762c42f 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1785472780/*!*/;
BEGIN
/*!*/;
# at 342566
#260731 11:39:40 server id 1  end_log_pos 342625 CRC32 0xc82b5e53 	Table_map: `news`.`cache` mapped to number 88
# at 342625
#260731 11:39:40 server id 1  end_log_pos 342750 CRC32 0xea9d19db 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
DCdsahMBAAAAOwAAAGE6BQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4FNe
K8g=
DCdsaiABAAAAfQAAAN46BQAAAFgAAAAAAAEAAgAD/wBMAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTYEAABp
OjE7MyVsatsZneo=
'/*!*/;
# at 342750
#260731 11:39:40 server id 1  end_log_pos 342781 CRC32 0x7c7324c6 	Xid = 3377
COMMIT/*!*/;
# at 342781
#260731 11:39:40 server id 1  end_log_pos 342860 CRC32 0x6be8121f 	Anonymous_GTID	last_committed=136	sequence_number=137	rbr_only=yes	original_committed_timestamp=1785472780411237	immediate_commit_timestamp=1785472780411237	transaction_length=384
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472780411237 (2026-07-31 11:39:40.411237 SE Asia Standard Time)
# immediate_commit_timestamp=1785472780411237 (2026-07-31 11:39:40.411237 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472780411237*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 342860
#260731 11:39:40 server id 1  end_log_pos 342935 CRC32 0x30a14530 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1785472780/*!*/;
BEGIN
/*!*/;
# at 342935
#260731 11:39:40 server id 1  end_log_pos 342994 CRC32 0xb4eeb543 	Table_map: `news`.`cache` mapped to number 88
# at 342994
#260731 11:39:40 server id 1  end_log_pos 343134 CRC32 0x54ec7964 	Delete_rows: table id 88 flags: STMT_END_F

BINLOG '
DCdsahMBAAAAOwAAANI7BQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4EO1
7rQ=
DCdsaiABAAAAjAAAAF48BQAAAFgAAAAAAAEAAgAD/wBSAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTY6dGlt
ZXINAABpOjE3ODU0NzIzMDc7MyVsamR57FQ=
'/*!*/;
# at 343134
#260731 11:39:40 server id 1  end_log_pos 343165 CRC32 0x998a1d7e 	Xid = 3383
COMMIT/*!*/;
# at 343165
#260731 11:39:40 server id 1  end_log_pos 343244 CRC32 0x1f9b2b06 	Anonymous_GTID	last_committed=137	sequence_number=138	rbr_only=yes	original_committed_timestamp=1785472780413484	immediate_commit_timestamp=1785472780413484	transaction_length=384
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472780413484 (2026-07-31 11:39:40.413484 SE Asia Standard Time)
# immediate_commit_timestamp=1785472780413484 (2026-07-31 11:39:40.413484 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472780413484*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 343244
#260731 11:39:40 server id 1  end_log_pos 343319 CRC32 0x6f0ac15a 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1785472780/*!*/;
BEGIN
/*!*/;
# at 343319
#260731 11:39:40 server id 1  end_log_pos 343378 CRC32 0x30bf9736 	Table_map: `news`.`cache` mapped to number 88
# at 343378
#260731 11:39:40 server id 1  end_log_pos 343518 CRC32 0x1eaeee45 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
DCdsahMBAAAAOwAAAFI9BQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4DaX
vzA=
DCdsah4BAAAAjAAAAN49BQAAAFgAAAAAAAEAAgAD/wBSAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTY6dGlt
ZXINAABpOjE3ODU0NzI4NDA7SCdsakXurh4=
'/*!*/;
# at 343518
#260731 11:39:40 server id 1  end_log_pos 343549 CRC32 0x5c6a3ec8 	Xid = 3386
COMMIT/*!*/;
# at 343549
#260731 11:39:40 server id 1  end_log_pos 343628 CRC32 0x6a89c213 	Anonymous_GTID	last_committed=138	sequence_number=139	rbr_only=yes	original_committed_timestamp=1785472780416058	immediate_commit_timestamp=1785472780416058	transaction_length=369
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472780416058 (2026-07-31 11:39:40.416058 SE Asia Standard Time)
# immediate_commit_timestamp=1785472780416058 (2026-07-31 11:39:40.416058 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472780416058*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 343628
#260731 11:39:40 server id 1  end_log_pos 343703 CRC32 0x4aa0dec4 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1785472780/*!*/;
BEGIN
/*!*/;
# at 343703
#260731 11:39:40 server id 1  end_log_pos 343762 CRC32 0x4a456be4 	Table_map: `news`.`cache` mapped to number 88
# at 343762
#260731 11:39:40 server id 1  end_log_pos 343887 CRC32 0xe7c4c0ae 	Write_rows: table id 88 flags: STMT_END_F

BINLOG '
DCdsahMBAAAAOwAAANI+BQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4ORr
RUo=
DCdsah4BAAAAfQAAAE8/BQAAAFgAAAAAAAEAAgAD/wBMAGxhcmF2ZWwtY2FjaGUtbGl2ZXdpcmUt
cmF0ZS1saW1pdGVyOjE2ZDM2ZGZmOWFiZDI0NmM2N2RmYWMzZTYzYjk5M2ExNjlhZjc3ZTYEAABp
OjA7SCdsaq7AxOc=
'/*!*/;
# at 343887
#260731 11:39:40 server id 1  end_log_pos 343918 CRC32 0x9806f08e 	Xid = 3392
COMMIT/*!*/;
# at 343918
#260731 11:39:40 server id 1  end_log_pos 343997 CRC32 0x4d0d89cf 	Anonymous_GTID	last_committed=139	sequence_number=140	rbr_only=yes	original_committed_timestamp=1785472780419854	immediate_commit_timestamp=1785472780419854	transaction_length=469
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472780419854 (2026-07-31 11:39:40.419854 SE Asia Standard Time)
# immediate_commit_timestamp=1785472780419854 (2026-07-31 11:39:40.419854 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472780419854*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 343997
#260731 11:39:40 server id 1  end_log_pos 344081 CRC32 0x36928629 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1785472780/*!*/;
BEGIN
/*!*/;
# at 344081
#260731 11:39:40 server id 1  end_log_pos 344140 CRC32 0xd61030ab 	Table_map: `news`.`cache` mapped to number 88
# at 344140
#260731 11:39:40 server id 1  end_log_pos 344356 CRC32 0xa0780ec0 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
DCdsahMBAAAAOwAAAExABQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Ksw
ENY=
DCdsah8BAAAA2AAAACRBBQAAAFgAAAAAAAEAAgAD//8ATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJl
LXJhdGUtbGltaXRlcjoxNmQzNmRmZjlhYmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAA
aTowO0gnbGoATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJlLXJhdGUtbGltaXRlcjoxNmQzNmRmZjlh
YmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAAaToxO0gnbGrADnig
'/*!*/;
# at 344356
#260731 11:39:40 server id 1  end_log_pos 344387 CRC32 0x26c086c3 	Xid = 3396
COMMIT/*!*/;
# at 344387
#260731 11:39:40 server id 1  end_log_pos 344466 CRC32 0x1ed69e62 	Anonymous_GTID	last_committed=140	sequence_number=141	rbr_only=yes	original_committed_timestamp=1785472780823452	immediate_commit_timestamp=1785472780823452	transaction_length=505
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472780823452 (2026-07-31 11:39:40.823452 SE Asia Standard Time)
# immediate_commit_timestamp=1785472780823452 (2026-07-31 11:39:40.823452 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472780823452*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 344466
#260731 11:39:40 server id 1  end_log_pos 344549 CRC32 0x5d165065 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1785472780/*!*/;
BEGIN
/*!*/;
# at 344549
#260731 11:39:40 server id 1  end_log_pos 344627 CRC32 0xbca0342b 	Table_map: `news`.`activity_logs` mapped to number 101
# at 344627
#260731 11:39:40 server id 1  end_log_pos 344861 CRC32 0xa5a4d94e 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
DCdsahMBAAAATgAAADNCBQAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeArNKC8
DCdsah4BAAAA6gAAAB1DBQAAAGUAAAAAAAEAAgAI/wIsAwAAAAAAAAwAZmFpbGVkX2xvZ2luAwBs
b3cqAGh0dHBzOi8vbmV3cy50ZXN0L2xpdmV3aXJlLWU2MDQ0NzRiL3VwZGF0ZQkxMjcuMC4wLjFv
AE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUz
Ny4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmpr
xJxO2aSl
'/*!*/;
# at 344861
#260731 11:39:40 server id 1  end_log_pos 344892 CRC32 0x6ba728f3 	Xid = 3406
COMMIT/*!*/;
# at 344892
#260731 11:39:40 server id 1  end_log_pos 344971 CRC32 0x6a0a6cca 	Anonymous_GTID	last_committed=141	sequence_number=142	rbr_only=yes	original_committed_timestamp=1785472780871328	immediate_commit_timestamp=1785472780871328	transaction_length=1270
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472780871328 (2026-07-31 11:39:40.871328 SE Asia Standard Time)
# immediate_commit_timestamp=1785472780871328 (2026-07-31 11:39:40.871328 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472780871328*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 344971
#260731 11:39:40 server id 1  end_log_pos 345055 CRC32 0x84b5ef44 	Query	thread_id=134	exec_time=0	error_code=0
SET TIMESTAMP=1785472780/*!*/;
BEGIN
/*!*/;
# at 345055
#260731 11:39:40 server id 1  end_log_pos 345123 CRC32 0xe59f1372 	Table_map: `news`.`sessions` mapped to number 83
# at 345123
#260731 11:39:40 server id 1  end_log_pos 346131 CRC32 0xf20821f9 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
DCdsahMBAAAARAAAACNEBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4HITn+U=
DCdsah8BAAAA8AMAABNIBQAAAFMAAAAAAAEAAgAG//8CKABzYXh5N3FvUUJKOVJ4R3MwQnJGTHhz
QmZvMEtpUWZwZzlBbXNOWWcxCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2OAEAAFlUb3pPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pUVVsVFJFbEtNM05QVDI1NmJHNWthamhpVUhwTWRXOU1hVlJQUkhoT1JsWTFlR3h6ZVV4
cmVpSTdjem8yT2lKZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9p
Ym1WM0lqdGhPakE2ZTMxOWN6bzVPaUpmY0hKbGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lP
M002TWprNkltaDBkSEJ6T2k4dmJtVjNjeTUwWlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNklu
SnZkWFJsSWp0ek9qSTFPaUptYVd4aGJXVnVkQzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5ZlE9
PQQnbGoCKABzYXh5N3FvUUJKOVJ4R3MwQnJGTHhzQmZvMEtpUWZwZzlBbXNOWWcxCTEyNy4wLjAu
MW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQv
NTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2
OAEAAFlUb3pPbnR6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pUVVsVFJFbEtNM05QVDI1NmJHNWth
amhpVUhwTWRXOU1hVlJQUkhoT1JsWTFlR3h6ZVV4cmVpSTdjem8yT2lKZlpteGhjMmdpTzJFNk1q
cDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6bzVPaUpmY0hK
bGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWprNkltaDBkSEJ6T2k4dmJtVjNjeTUw
WlhOMEwyRmtiV2x1TDJ4dloybHVJanR6T2pVNkluSnZkWFJsSWp0ek9qSTFPaUptYVd4aGJXVnVk
QzVoWkcxcGJpNWhkWFJvTG14dloybHVJanQ5ZlE9PQwnbGr5IQjy
'/*!*/;
# at 346131
#260731 11:39:40 server id 1  end_log_pos 346162 CRC32 0xb5c1f418 	Xid = 3421
COMMIT/*!*/;
# at 346162
#260731 11:39:46 server id 1  end_log_pos 346241 CRC32 0x37cf7f1c 	Anonymous_GTID	last_committed=142	sequence_number=143	rbr_only=yes	original_committed_timestamp=1785472786555923	immediate_commit_timestamp=1785472786555923	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472786555923 (2026-07-31 11:39:46.555923 SE Asia Standard Time)
# immediate_commit_timestamp=1785472786555923 (2026-07-31 11:39:46.555923 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472786555923*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 346241
#260731 11:39:46 server id 1  end_log_pos 346316 CRC32 0x93e2e3aa 	Query	thread_id=135	exec_time=0	error_code=0
SET TIMESTAMP=1785472786/*!*/;
BEGIN
/*!*/;
# at 346316
#260731 11:39:46 server id 1  end_log_pos 346375 CRC32 0x24cb2918 	Table_map: `news`.`cache` mapped to number 88
# at 346375
#260731 11:39:46 server id 1  end_log_pos 346573 CRC32 0x80e89a74 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
EidsahMBAAAAOwAAAAdJBQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4Bgp
yyQ=
Eidsah8BAAAAxgAAAM1JBQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaToxO0gnbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaToyO04nbGp0muiA
'/*!*/;
# at 346573
#260731 11:39:46 server id 1  end_log_pos 346604 CRC32 0x6e7c2f99 	Xid = 3436
COMMIT/*!*/;
# at 346604
#260731 11:39:46 server id 1  end_log_pos 346683 CRC32 0x42a6b4b3 	Anonymous_GTID	last_committed=143	sequence_number=144	rbr_only=yes	original_committed_timestamp=1785472786630382	immediate_commit_timestamp=1785472786630382	transaction_length=469
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472786630382 (2026-07-31 11:39:46.630382 SE Asia Standard Time)
# immediate_commit_timestamp=1785472786630382 (2026-07-31 11:39:46.630382 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472786630382*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 346683
#260731 11:39:46 server id 1  end_log_pos 346767 CRC32 0x1297bba2 	Query	thread_id=135	exec_time=0	error_code=0
SET TIMESTAMP=1785472786/*!*/;
BEGIN
/*!*/;
# at 346767
#260731 11:39:46 server id 1  end_log_pos 346826 CRC32 0x533fd950 	Table_map: `news`.`cache` mapped to number 88
# at 346826
#260731 11:39:46 server id 1  end_log_pos 347042 CRC32 0xde184fee 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
EidsahMBAAAAOwAAAMpKBQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4FDZ
P1M=
Eidsah8BAAAA2AAAAKJLBQAAAFgAAAAAAAEAAgAD//8ATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJl
LXJhdGUtbGltaXRlcjoxNmQzNmRmZjlhYmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAA
aToxO0gnbGoATABsYXJhdmVsLWNhY2hlLWxpdmV3aXJlLXJhdGUtbGltaXRlcjoxNmQzNmRmZjlh
YmQyNDZjNjdkZmFjM2U2M2I5OTNhMTY5YWY3N2U2BAAAaToyO0gnbGruTxje
'/*!*/;
# at 347042
#260731 11:39:46 server id 1  end_log_pos 347073 CRC32 0x868aa499 	Xid = 3455
COMMIT/*!*/;
# at 347073
#260731 11:39:47 server id 1  end_log_pos 347152 CRC32 0x983a0582 	Anonymous_GTID	last_committed=144	sequence_number=145	rbr_only=yes	original_committed_timestamp=1785472787344522	immediate_commit_timestamp=1785472787344522	transaction_length=774
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472787344522 (2026-07-31 11:39:47.344522 SE Asia Standard Time)
# immediate_commit_timestamp=1785472787344522 (2026-07-31 11:39:47.344522 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472787344522*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 347152
#260731 11:39:47 server id 1  end_log_pos 347227 CRC32 0x7f57d9ee 	Query	thread_id=135	exec_time=0	error_code=0
SET TIMESTAMP=1785472787/*!*/;
BEGIN
/*!*/;
# at 347227
#260731 11:39:47 server id 1  end_log_pos 347295 CRC32 0xd05fc4e0 	Table_map: `news`.`sessions` mapped to number 83
# at 347295
#260731 11:39:47 server id 1  end_log_pos 347816 CRC32 0xc408d769 	Delete_rows: table id 83 flags: STMT_END_F

BINLOG '
EydsahMBAAAARAAAAJ9MBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4ODEX9A=
EydsaiABAAAACQIAAKhOBQAAAFMAAAAAAAEAAgAG/wIoAHNheHk3cW9RQko5UnhHczBCckZMeHNC
Zm8wS2lRZnBnOUFtc05ZZzEJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4w
OyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJv
bWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzY4AQAAWVRvek9udHpPalk2SWw5MGIydGxiaUk3Y3pv
ME1Eb2lRVWxUUkVsS00zTlBUMjU2Ykc1a2FqaGlVSHBNZFc5TWFWUlBSSGhPUmxZMWVHeHplVXhy
ZWlJN2N6bzJPaUpmWm14aGMyZ2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3ZlhNNk16b2li
bVYzSWp0aE9qQTZlMzE5Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pPaUoxY213aU8z
TTZNams2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVMMnh2WjJsdUlqdHpPalU2SW5K
dmRYUmxJanR6T2pJMU9pSm1hV3hoYldWdWRDNWhaRzFwYmk1aGRYUm9MbXh2WjJsdUlqdDlmUT09
DCdsamnXCMQ=
'/*!*/;
# at 347816
#260731 11:39:47 server id 1  end_log_pos 347847 CRC32 0x7c0f54d4 	Xid = 3468
COMMIT/*!*/;
# at 347847
#260731 11:39:47 server id 1  end_log_pos 347926 CRC32 0x8ea471d9 	Anonymous_GTID	last_committed=145	sequence_number=146	rbr_only=yes	original_committed_timestamp=1785472787349499	immediate_commit_timestamp=1785472787349499	transaction_length=501
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472787349499 (2026-07-31 11:39:47.349499 SE Asia Standard Time)
# immediate_commit_timestamp=1785472787349499 (2026-07-31 11:39:47.349499 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472787349499*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 347926
#260731 11:39:47 server id 1  end_log_pos 348009 CRC32 0x1f24d5d4 	Query	thread_id=135	exec_time=0	error_code=0
SET TIMESTAMP=1785472787/*!*/;
BEGIN
/*!*/;
# at 348009
#260731 11:39:47 server id 1  end_log_pos 348087 CRC32 0x8ed209db 	Table_map: `news`.`activity_logs` mapped to number 101
# at 348087
#260731 11:39:47 server id 1  end_log_pos 348317 CRC32 0x8a238101 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
EydsahMBAAAATgAAALdPBQAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeDbCdKO
Eydsah4BAAAA5gAAAJ1QBQAAAGUAAAAAAAEAAgAI/wgtAwAAAAAAAAsAAAAAAAAABQBsb2dpbioA
aHR0cHM6Ly9uZXdzLnRlc3QvbGl2ZXdpcmUtZTYwNDQ3NGIvdXBkYXRlCTEyNy4wLjAuMW8ATW96
aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2
IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2amvEowGB
I4o=
'/*!*/;
# at 348317
#260731 11:39:47 server id 1  end_log_pos 348348 CRC32 0x193671f5 	Xid = 3471
COMMIT/*!*/;
# at 348348
#260731 11:39:47 server id 1  end_log_pos 348427 CRC32 0x6337a303 	Anonymous_GTID	last_committed=146	sequence_number=147	rbr_only=yes	original_committed_timestamp=1785472787375316	immediate_commit_timestamp=1785472787375316	transaction_length=866
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472787375316 (2026-07-31 11:39:47.375316 SE Asia Standard Time)
# immediate_commit_timestamp=1785472787375316 (2026-07-31 11:39:47.375316 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472787375316*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 348427
#260731 11:39:47 server id 1  end_log_pos 348502 CRC32 0x10ddb0fe 	Query	thread_id=135	exec_time=0	error_code=0
SET TIMESTAMP=1785472787/*!*/;
BEGIN
/*!*/;
# at 348502
#260731 11:39:47 server id 1  end_log_pos 348570 CRC32 0xa99ce918 	Table_map: `news`.`sessions` mapped to number 83
# at 348570
#260731 11:39:47 server id 1  end_log_pos 349183 CRC32 0xc755bad4 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
EydsahMBAAAARAAAAJpRBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4BjpnKk=
Eydsah4BAAAAZQIAAP9TBQAAAFMAAAAAAAEAAgAG/wAoAG1xbzFvM1pXSmtBN3ZiU1RMcEdING9y
VWhiemRpRzlGc24xd293UVcLAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dz
IE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vj
a28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNowBAABZVG8wT250ek9qWTZJbDkwYjJ0
bGJpSTdjem8wTURvaVdWUkNVM2d3UTFsM2QyTldOV3BMYzBsbVRrMUVOMUUxVEVnd1UwbDJTMFZT
V25KQ1FtUlVSU0k3Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdm
WE02TXpvaWJtVjNJanRoT2pBNmUzMTljem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9p
SjFjbXdpTzNNNk1qazZJbWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyeHZaMmx1SWp0
ek9qVTZJbkp2ZFhSbElqdHpPakkxT2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTVoZFhSb0xteHZaMmx1
SWp0OWN6bzFNRG9pYkc5bmFXNWZkMlZpWHpVNVltRXpObUZrWkdNeVlqSm1PVFF3TVRVNE1HWXdN
VFJqTjJZMU9HVmhOR1V6TURrNE9XUWlPMms2TVRFN2ZRPT0TJ2xq1LpVxw==
'/*!*/;
# at 349183
#260731 11:39:47 server id 1  end_log_pos 349214 CRC32 0xc76024c6 	Xid = 3498
COMMIT/*!*/;
# at 349214
#260731 11:39:48 server id 1  end_log_pos 349293 CRC32 0xd0acf9d1 	Anonymous_GTID	last_committed=147	sequence_number=148	rbr_only=yes	original_committed_timestamp=1785472788227251	immediate_commit_timestamp=1785472788227251	transaction_length=1582
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472788227251 (2026-07-31 11:39:48.227251 SE Asia Standard Time)
# immediate_commit_timestamp=1785472788227251 (2026-07-31 11:39:48.227251 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472788227251*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 349293
#260731 11:39:48 server id 1  end_log_pos 349377 CRC32 0x01eaeef7 	Query	thread_id=136	exec_time=0	error_code=0
SET TIMESTAMP=1785472788/*!*/;
BEGIN
/*!*/;
# at 349377
#260731 11:39:48 server id 1  end_log_pos 349445 CRC32 0x899f15b2 	Table_map: `news`.`sessions` mapped to number 83
# at 349445
#260731 11:39:48 server id 1  end_log_pos 350765 CRC32 0x23901162 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
FCdsahMBAAAARAAAAAVVBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4LIVn4k=
FCdsah8BAAAAKAUAAC1aBQAAAFMAAAAAAAEAAgAG//8AKABtcW8xbzNaV0prQTd2YlNUTHBHSDRv
clVoYnpkaUc5RnNuMXdvd1FXCwAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzaMAQAAWVRvME9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2lXVlJDVTNnd1ExbDNkMk5XTldwTGMwbG1UazFFTjFFMVRFZ3dVMGwyUzBW
U1duSkNRbVJVUlNJN2N6bzJPaUpmWm14aGMyZ2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3
ZlhNNk16b2libVYzSWp0aE9qQTZlMzE5Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pP
aUoxY213aU8zTTZNams2SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVMMnh2WjJsdUlq
dHpPalU2SW5KdmRYUmxJanR6T2pJMU9pSm1hV3hoYldWdWRDNWhaRzFwYmk1aGRYUm9MbXh2WjJs
dUlqdDljem8xTURvaWJHOW5hVzVmZDJWaVh6VTVZbUV6Tm1Ga1pHTXlZakptT1RRd01UVTRNR1l3
TVRSak4yWTFPR1ZoTkdVek1EazRPV1FpTzJrNk1URTdmUT09EydsagAoAG1xbzFvM1pXSmtBN3Zi
U1RMcEdING9yVWhiemRpRzlGc24xd293UVcLAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4w
IChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUws
IGxpa2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNgwCAABZVG8xT250ek9q
WTZJbDkwYjJ0bGJpSTdjem8wTURvaVdWUkNVM2d3UTFsM2QyTldOV3BMYzBsbVRrMUVOMUUxVEVn
d1UwbDJTMFZTV25KQ1FtUlVSU0k3Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1Fp
TzJFNk1EcDdmWE02TXpvaWJtVjNJanRoT2pBNmUzMTljem81T2lKZmNISmxkbWx2ZFhNaU8yRTZN
anA3Y3pvek9pSjFjbXdpTzNNNk1qTTZJbWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUlq
dHpPalU2SW5KdmRYUmxJanR6T2pNd09pSm1hV3hoYldWdWRDNWhaRzFwYmk1d1lXZGxjeTVrWVhO
b1ltOWhjbVFpTzMxek9qVXdPaUpzYjJkcGJsOTNaV0pmTlRsaVlUTTJZV1JrWXpKaU1tWTVOREF4
TlRnd1pqQXhOR00zWmpVNFpXRTBaVE13T1RnNVpDSTdhVG94TVR0ek9qRTNPaUp3WVhOemQyOXla
RjlvWVhOb1gzZGxZaUk3Y3pvMk5Eb2lZamswTWpVek5XUm1NVEJoTkdJM05tRTRNelF3TlRFME1t
UTBNalE1TW1VME1qVmlObVptT0RabE1ETXlNR1ZqTjJNNE5tUXdZek5oTmpRMlpUSTBOU0k3ZlE9
PRQnbGpiEZAj
'/*!*/;
# at 350765
#260731 11:39:48 server id 1  end_log_pos 350796 CRC32 0x2a38dace 	Xid = 3522
COMMIT/*!*/;
# at 350796
#260731 11:39:48 server id 1  end_log_pos 350875 CRC32 0x6e501577 	Anonymous_GTID	last_committed=148	sequence_number=149	rbr_only=yes	original_committed_timestamp=1785472788866342	immediate_commit_timestamp=1785472788866342	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472788866342 (2026-07-31 11:39:48.866342 SE Asia Standard Time)
# immediate_commit_timestamp=1785472788866342 (2026-07-31 11:39:48.866342 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472788866342*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 350875
#260731 11:39:48 server id 1  end_log_pos 350950 CRC32 0x55baf944 	Query	thread_id=137	exec_time=0	error_code=0
SET TIMESTAMP=1785472788/*!*/;
BEGIN
/*!*/;
# at 350950
#260731 11:39:48 server id 1  end_log_pos 351009 CRC32 0xef765859 	Table_map: `news`.`cache` mapped to number 88
# at 351009
#260731 11:39:48 server id 1  end_log_pos 351207 CRC32 0xd27ba7e1 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
FCdsahMBAAAAOwAAACFbBQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4FlY
du8=
FCdsah8BAAAAxgAAAOdbBQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaToyO04nbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaTozO1AnbGrhp3vS
'/*!*/;
# at 351207
#260731 11:39:48 server id 1  end_log_pos 351238 CRC32 0xeb671eb1 	Xid = 3537
COMMIT/*!*/;
# at 351238
#260731 11:39:49 server id 1  end_log_pos 351317 CRC32 0xa7e059df 	Anonymous_GTID	last_committed=149	sequence_number=150	rbr_only=yes	original_committed_timestamp=1785472789116768	immediate_commit_timestamp=1785472789116768	transaction_length=442
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472789116768 (2026-07-31 11:39:49.116768 SE Asia Standard Time)
# immediate_commit_timestamp=1785472789116768 (2026-07-31 11:39:49.116768 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472789116768*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 351317
#260731 11:39:49 server id 1  end_log_pos 351392 CRC32 0x05e15d51 	Query	thread_id=138	exec_time=0	error_code=0
SET TIMESTAMP=1785472789/*!*/;
BEGIN
/*!*/;
# at 351392
#260731 11:39:49 server id 1  end_log_pos 351451 CRC32 0x48297cbd 	Table_map: `news`.`cache` mapped to number 88
# at 351451
#260731 11:39:49 server id 1  end_log_pos 351649 CRC32 0x2a50e17b 	Update_rows: table id 88 flags: STMT_END_F

BINLOG '
FSdsahMBAAAAOwAAANtcBQAAAFgAAAAAAAEABG5ld3MABWNhY2hlAAMP/AMD/AMDAAEBAAIB4L18
KUg=
FSdsah8BAAAAxgAAAKFdBQAAAFgAAAAAAAEAAgAD//8AQwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVm
cmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBiMDk2MDJmNzQ4MDIyBAAAaTozO1AnbGoA
QwBsYXJhdmVsLWNhY2hlLXBhZ2VfcmVmcmVzaDoxZjI1NjkyZTkwNzE4ODZkN2Q0YjM4MjAxOTBi
MDk2MDJmNzQ4MDIyBAAAaTo0O1EnbGp74VAq
'/*!*/;
# at 351649
#260731 11:39:49 server id 1  end_log_pos 351680 CRC32 0x844cf6ad 	Xid = 3576
COMMIT/*!*/;
# at 351680
#260731 11:39:49 server id 1  end_log_pos 351759 CRC32 0xfa219607 	Anonymous_GTID	last_committed=150	sequence_number=151	rbr_only=yes	original_committed_timestamp=1785472789224092	immediate_commit_timestamp=1785472789224092	transaction_length=1710
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472789224092 (2026-07-31 11:39:49.224092 SE Asia Standard Time)
# immediate_commit_timestamp=1785472789224092 (2026-07-31 11:39:49.224092 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472789224092*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 351759
#260731 11:39:49 server id 1  end_log_pos 351843 CRC32 0xf6d3981c 	Query	thread_id=138	exec_time=0	error_code=0
SET TIMESTAMP=1785472789/*!*/;
BEGIN
/*!*/;
# at 351843
#260731 11:39:49 server id 1  end_log_pos 351911 CRC32 0x60622332 	Table_map: `news`.`sessions` mapped to number 83
# at 351911
#260731 11:39:49 server id 1  end_log_pos 353359 CRC32 0xf0097a7e 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
FSdsahMBAAAARAAAAKdeBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4DIjYmA=
FSdsah8BAAAAqAUAAE9kBQAAAFMAAAAAAAEAAgAG//8AKABtcW8xbzNaV0prQTd2YlNUTHBHSDRv
clVoYnpkaUc5RnNuMXdvd1FXCwAAAAAAAAAJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93
cyBOVCAxMC4wOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdl
Y2tvKSBDaHJvbWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzYMAgAAWVRvMU9udHpPalk2SWw5MGIy
dGxiaUk3Y3pvME1Eb2lXVlJDVTNnd1ExbDNkMk5XTldwTGMwbG1UazFFTjFFMVRFZ3dVMGwyUzBW
U1duSkNRbVJVUlNJN2N6bzJPaUpmWm14aGMyZ2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3
ZlhNNk16b2libVYzSWp0aE9qQTZlMzE5Y3pvNU9pSmZjSEpsZG1sdmRYTWlPMkU2TWpwN2N6b3pP
aUoxY213aU8zTTZNak02SW1oMGRIQnpPaTh2Ym1WM2N5NTBaWE4wTDJGa2JXbHVJanR6T2pVNklu
SnZkWFJsSWp0ek9qTXdPaUptYVd4aGJXVnVkQzVoWkcxcGJpNXdZV2RsY3k1a1lYTm9ZbTloY21R
aU8zMXpPalV3T2lKc2IyZHBibDkzWldKZk5UbGlZVE0yWVdSa1l6SmlNbVk1TkRBeE5UZ3daakF4
TkdNM1pqVTRaV0UwWlRNd09UZzVaQ0k3YVRveE1UdHpPakUzT2lKd1lYTnpkMjl5WkY5b1lYTm9Y
M2RsWWlJN2N6bzJORG9pWWprME1qVXpOV1JtTVRCaE5HSTNObUU0TXpRd05URTBNbVEwTWpRNU1t
VTBNalZpTm1abU9EWmxNRE15TUdWak4yTTRObVF3WXpOaE5qUTJaVEkwTlNJN2ZRPT0UJ2xqACgA
bXFvMW8zWldKa0E3dmJTVExwR0g0b3JVaGJ6ZGlHOUZzbjF3b3dRVwsAAAAAAAAACTEyNy4wLjAu
MW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQv
NTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2
DAIAAFlUbzFPbnR6T2pZNklsOTBiMnRsYmlJN2N6bzBNRG9pV1ZSQ1UzZ3dRMWwzZDJOV05XcExj
MGxtVGsxRU4xRTFURWd3VTBsMlMwVlNXbkpDUW1SVVJTSTdjem8yT2lKZlpteGhjMmdpTzJFNk1q
cDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9pYm1WM0lqdGhPakE2ZTMxOWN6bzVPaUpmY0hK
bGRtbHZkWE1pTzJFNk1qcDdjem96T2lKMWNtd2lPM002TWpNNkltaDBkSEJ6T2k4dmJtVjNjeTUw
WlhOMEwyRmtiV2x1SWp0ek9qVTZJbkp2ZFhSbElqdHpPak13T2lKbWFXeGhiV1Z1ZEM1aFpHMXBi
aTV3WVdkbGN5NWtZWE5vWW05aGNtUWlPMzF6T2pVd09pSnNiMmRwYmw5M1pXSmZOVGxpWVRNMllX
UmtZekppTW1ZNU5EQXhOVGd3WmpBeE5HTTNaalU0WldFMFpUTXdPVGc1WkNJN2FUb3hNVHR6T2pF
M09pSndZWE56ZDI5eVpGOW9ZWE5vWDNkbFlpSTdjem8yTkRvaVlqazBNalV6TldSbU1UQmhOR0kz
Tm1FNE16UXdOVEUwTW1RME1qUTVNbVUwTWpWaU5tWm1PRFpsTURNeU1HVmpOMk00Tm1Rd1l6TmhO
alEyWlRJME5TSTdmUT09FSdsan56CfA=
'/*!*/;
# at 353359
#260731 11:39:49 server id 1  end_log_pos 353390 CRC32 0xe0f1f799 	Xid = 3600
COMMIT/*!*/;
# at 353390
#260731 11:39:52 server id 1  end_log_pos 353469 CRC32 0x2ef28b99 	Anonymous_GTID	last_committed=151	sequence_number=152	rbr_only=yes	original_committed_timestamp=1785472792832685	immediate_commit_timestamp=1785472792832685	transaction_length=490
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472792832685 (2026-07-31 11:39:52.832685 SE Asia Standard Time)
# immediate_commit_timestamp=1785472792832685 (2026-07-31 11:39:52.832685 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472792832685*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 353469
#260731 11:39:52 server id 1  end_log_pos 353552 CRC32 0x256312a9 	Query	thread_id=139	exec_time=0	error_code=0
SET TIMESTAMP=1785472792/*!*/;
BEGIN
/*!*/;
# at 353552
#260731 11:39:52 server id 1  end_log_pos 353630 CRC32 0x0e643127 	Table_map: `news`.`activity_logs` mapped to number 101
# at 353630
#260731 11:39:52 server id 1  end_log_pos 353849 CRC32 0x530d1d69 	Write_rows: table id 101 flags: STMT_END_F

BINLOG '
GCdsahMBAAAATgAAAF5lBQAAAGUAAAAAAAEABG5ld3MADWFjdGl2aXR5X2xvZ3MACAgIDw/8D/wR
CfwD/AMCtAACAHoBAcACAeAnMWQO
GCdsah4BAAAA2wAAADlmBQAAAGUAAAAAAAEAAgAI/wguAwAAAAAAAAsAAAAAAAAABgBsb2dvdXQe
AGh0dHBzOi8vbmV3cy50ZXN0L2FkbWluL2xvZ291dAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChX
aW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxp
a2UgR2Vja28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNmprxKhpHQ1T
'/*!*/;
# at 353849
#260731 11:39:52 server id 1  end_log_pos 353880 CRC32 0xc7d6f9f2 	Xid = 3615
COMMIT/*!*/;
# at 353880
#260731 11:39:52 server id 1  end_log_pos 353959 CRC32 0xd960cfd9 	Anonymous_GTID	last_committed=152	sequence_number=153	rbr_only=yes	original_committed_timestamp=1785472792836535	immediate_commit_timestamp=1785472792836535	transaction_length=994
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472792836535 (2026-07-31 11:39:52.836535 SE Asia Standard Time)
# immediate_commit_timestamp=1785472792836535 (2026-07-31 11:39:52.836535 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472792836535*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 353959
#260731 11:39:52 server id 1  end_log_pos 354034 CRC32 0xedfff071 	Query	thread_id=139	exec_time=0	error_code=0
SET TIMESTAMP=1785472792/*!*/;
BEGIN
/*!*/;
# at 354034
#260731 11:39:52 server id 1  end_log_pos 354102 CRC32 0x601f23b6 	Table_map: `news`.`sessions` mapped to number 83
# at 354102
#260731 11:39:52 server id 1  end_log_pos 354843 CRC32 0x5717e12b 	Delete_rows: table id 83 flags: STMT_END_F

BINLOG '
GCdsahMBAAAARAAAADZnBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4LYjH2A=
GCdsaiABAAAA5QIAABtqBQAAAFMAAAAAAAEAAgAG/wAoAG1xbzFvM1pXSmtBN3ZiU1RMcEdING9y
VWhiemRpRzlGc24xd293UVcLAAAAAAAAAAkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dz
IE5UIDEwLjA7IFdpbjY0OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vj
a28pIENocm9tZS8xNTAuMC4wLjAgU2FmYXJpLzUzNy4zNgwCAABZVG8xT250ek9qWTZJbDkwYjJ0
bGJpSTdjem8wTURvaVdWUkNVM2d3UTFsM2QyTldOV3BMYzBsbVRrMUVOMUUxVEVnd1UwbDJTMFZT
V25KQ1FtUlVSU0k3Y3pvMk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdm
WE02TXpvaWJtVjNJanRoT2pBNmUzMTljem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9p
SjFjbXdpTzNNNk1qTTZJbWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUlqdHpPalU2SW5K
dmRYUmxJanR6T2pNd09pSm1hV3hoYldWdWRDNWhaRzFwYmk1d1lXZGxjeTVrWVhOb1ltOWhjbVFp
TzMxek9qVXdPaUpzYjJkcGJsOTNaV0pmTlRsaVlUTTJZV1JrWXpKaU1tWTVOREF4TlRnd1pqQXhO
R00zWmpVNFpXRTBaVE13T1RnNVpDSTdhVG94TVR0ek9qRTNPaUp3WVhOemQyOXlaRjlvWVhOb1gz
ZGxZaUk3Y3pvMk5Eb2lZamswTWpVek5XUm1NVEJoTkdJM05tRTRNelF3TlRFME1tUTBNalE1TW1V
ME1qVmlObVptT0RabE1ETXlNR1ZqTjJNNE5tUXdZek5oTmpRMlpUSTBOU0k3ZlE9PRUnbGor4RdX
'/*!*/;
# at 354843
#260731 11:39:52 server id 1  end_log_pos 354874 CRC32 0x2e174d21 	Xid = 3618
COMMIT/*!*/;
# at 354874
#260731 11:39:52 server id 1  end_log_pos 354953 CRC32 0xdc7cc3e1 	Anonymous_GTID	last_committed=153	sequence_number=154	rbr_only=yes	original_committed_timestamp=1785472792846870	immediate_commit_timestamp=1785472792846870	transaction_length=622
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472792846870 (2026-07-31 11:39:52.846870 SE Asia Standard Time)
# immediate_commit_timestamp=1785472792846870 (2026-07-31 11:39:52.846870 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472792846870*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 354953
#260731 11:39:52 server id 1  end_log_pos 355028 CRC32 0xc14cd486 	Query	thread_id=139	exec_time=0	error_code=0
SET TIMESTAMP=1785472792/*!*/;
BEGIN
/*!*/;
# at 355028
#260731 11:39:52 server id 1  end_log_pos 355096 CRC32 0xfa59373d 	Table_map: `news`.`sessions` mapped to number 83
# at 355096
#260731 11:39:52 server id 1  end_log_pos 355465 CRC32 0x411bf057 	Write_rows: table id 83 flags: STMT_END_F

BINLOG '
GCdsahMBAAAARAAAABhrBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4D03Wfo=
GCdsah4BAAAAcQEAAIlsBQAAAFMAAAAAAAEAAgAG/wIoAEhyMWxraHp1Q1E1OVhCRWpVN3h6U1dC
YXh3dnRmS1EzaXJVdnhxQVUJMTI3LjAuMC4xbwBNb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4w
OyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJv
bWUvMTUwLjAuMC4wIFNhZmFyaS81MzcuMzagAAAAWVRveU9udHpPalk2SWw5MGIydGxiaUk3Y3pv
ME1Eb2lSRGxKT0U5Uk1EVlFZVnB6UlhOeVlrcHBhVkZYT0VadFJYUkZZMXBMWjFNMVEyUlJaekZ3
YlNJN2N6bzJPaUpmWm14aGMyZ2lPMkU2TWpwN2N6b3pPaUp2YkdRaU8yRTZNRHA3ZlhNNk16b2li
bVYzSWp0aE9qQTZlMzE5ZlE9PRgnbGpX8BtB
'/*!*/;
# at 355465
#260731 11:39:52 server id 1  end_log_pos 355496 CRC32 0x1b9d9917 	Xid = 3624
COMMIT/*!*/;
# at 355496
#260731 11:39:53 server id 1  end_log_pos 355575 CRC32 0xaedd489e 	Anonymous_GTID	last_committed=154	sequence_number=155	rbr_only=yes	original_committed_timestamp=1785472793370872	immediate_commit_timestamp=1785472793370872	transaction_length=1118
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1785472793370872 (2026-07-31 11:39:53.370872 SE Asia Standard Time)
# immediate_commit_timestamp=1785472793370872 (2026-07-31 11:39:53.370872 SE Asia Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1785472793370872*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 355575
#260731 11:39:53 server id 1  end_log_pos 355659 CRC32 0xbc4ecb05 	Query	thread_id=140	exec_time=0	error_code=0
SET TIMESTAMP=1785472793/*!*/;
BEGIN
/*!*/;
# at 355659
#260731 11:39:53 server id 1  end_log_pos 355727 CRC32 0x7a579c15 	Table_map: `news`.`sessions` mapped to number 83
# at 355727
#260731 11:39:53 server id 1  end_log_pos 356583 CRC32 0x0df39fab 	Update_rows: table id 83 flags: STMT_END_F

BINLOG '
GSdsahMBAAAARAAAAI9tBQAAAFMAAAAAAAEABG5ld3MACHNlc3Npb25zAAYPCA/8/AMG/AO0AAIE
DgEBgAIB4BWcV3o=
GSdsah8BAAAAWAMAAOdwBQAAAFMAAAAAAAEAAgAG//8CKABIcjFsa2h6dUNRNTlYQkVqVTd4elNX
QmF4d3Z0ZktRM2lyVXZ4cUFVCTEyNy4wLjAuMW8ATW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAu
MDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hy
b21lLzE1MC4wLjAuMCBTYWZhcmkvNTM3LjM2oAAAAFlUb3lPbnR6T2pZNklsOTBiMnRsYmlJN2N6
bzBNRG9pUkRsSk9FOVJNRFZRWVZwelJYTnlZa3BwYVZGWE9FWnRSWFJGWTFwTFoxTTFRMlJSWnpG
d2JTSTdjem8yT2lKZlpteGhjMmdpTzJFNk1qcDdjem96T2lKdmJHUWlPMkU2TURwN2ZYTTZNem9p
Ym1WM0lqdGhPakE2ZTMxOWZRPT0YJ2xqAigASHIxbGtoenVDUTU5WEJFalU3eHpTV0JheHd2dGZL
UTNpclV2eHFBVQkxMjcuMC4wLjFvAE1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0
OyB4NjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xNTAu
MC4wLjAgU2FmYXJpLzUzNy4zNjgBAABZVG96T250ek9qWTZJbDkwYjJ0bGJpSTdjem8wTURvaVJE
bEpPRTlSTURWUVlWcHpSWE55WWtwcGFWRlhPRVp0UlhSRlkxcExaMU0xUTJSUlp6RndiU0k3Y3pv
Mk9pSmZabXhoYzJnaU8yRTZNanA3Y3pvek9pSnZiR1FpTzJFNk1EcDdmWE02TXpvaWJtVjNJanRo
T2pBNmUzMTljem81T2lKZmNISmxkbWx2ZFhNaU8yRTZNanA3Y3pvek9pSjFjbXdpTzNNNk1qazZJ
bWgwZEhCek9pOHZibVYzY3k1MFpYTjBMMkZrYldsdUwyeHZaMmx1SWp0ek9qVTZJbkp2ZFhSbElq
dHpPakkxT2lKbWFXeGhiV1Z1ZEM1aFpHMXBiaTVoZFhSb0xteHZaMmx1SWp0OWZRPT0ZJ2xqq5/z
DQ==
'/*!*/;
# at 356583
#260731 11:39:53 server id 1  end_log_pos 356614 CRC32 0x28a2a22c 	Xid = 3636
COMMIT/*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
