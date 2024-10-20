/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

lexer grammar Keyword;

import Alphabet;

WS
    : [ \t\r\n] + ->skip
    ;

MAX
    : M A X
    ;

MIN
    : M I N
    ;

SUM
    : S U M
    ;

COUNT
    : C O U N T
    ;

GROUP_CONCAT
    : G R O U P UL_ C O N C A T
    ;

CAST
    : C A S T
    ;

POSITION
    : P O S I T I O N
    ;

SUBSTRING
    : S U B S T R I N G
    ;

SUBSTR
    : S U B S T R
    ;

EXTRACT
    : E X T R A C T
    ;

TRIM
    : T R I M
    ;

LAST_DAY
    : L A S T UL_ D A Y
    ;

TRADITIONAL
    : T R A D I T I O N A L
    ;

TREE
    : T R E E
    ;

Doris_MAIN
    : M Y S Q L UL_ M A I N
    ;

Doris_ADMIN
    : M Y S Q L UL_ A D M I N
    ;

INSTANT
    : I N S T A N T
    ;

INPLACE
    : I N P L A C E
    ;

COPY
    : C O P Y
    ;

UL_BINARY
    : UL_ B I N A R Y
    ;

AUTOCOMMIT
    : A U T O C O M M I T
    ;

REDO_LOG
    : 'REDO_LOG'
    ;

DELIMITER
    : D E L I M I T E R
    ;

ARCHIVE
    : A R C H I V E
    ;

BLACKHOLE
    : B L A C K H O L E
    ;

CSV
    : C S V
    ;

FEDERATED
    : F E D E R A T E D
    ;

INNODB
    : I N N O D B
    ;

MEMORY
    : M E M O R Y
    ;

MRG_MYISAM
    : M R G UL_ M Y I S A M
    ;

MYISAM
    : M Y I S A M
    ;

NDB
    : N D B
    ;

NDBCLUSTER
    : N D B C L U S T E R
    ;

PERFORMANCE_SCHEMA
    : P E R F O R M A N C E UL_ S C H E M A
    ;

TOKUDB
    : T O K U D B
    ;

LTRIM
    : L T R I M
    ;

RTRIM
    : R T R I M
    ;

CANCEL
    : C A N C E L
    ;

REBALANCE
    : R E B A L A N C E
    ;

STRRIGHT
    : S T R R I G H T
    ;

YEARWEEK
    : Y E A R W E E K
    ;
