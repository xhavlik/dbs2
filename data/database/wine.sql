DROP TABLE IF EXISTS wine;
DROP TABLE IF EXISTS wine_company;
DROP TABLE IF EXISTS wine_region;

CREATE TABLE wine(
	id_wine VARCHAR2(25) NOT NULL, --PK
    name VARCHAR2(50) NOT NULL,
    type VARCHAR2(25) NOT NULL,
    category VARCHAR2(25) NOT NULL,
	id_wine_company NUMBER NOT NULL, --FK
	id_wine_region NUMBER NOT NULL --FK
);

CREATE TABLE wine_company(
	id_wine_company NUMBER NOT NULL, --PK
    name VARCHAR(50) NOT NULL
);

CREATE TABLE wine_region(
    id_wine_region NUMBER NOT NULL, --PK
    region VARCHAR(50) NOT NULL
);

---- PK ----
ALTER TABLE wine ADD CONSTRAINT pk_wine PRIMARY KEY (id_wine);
ALTER TABLE wine_company ADD CONSTRAINT pk_wine_company PRIMARY KEY (id_wine_company);
ALTER TABLE wine_region ADD CONSTRAINT pk_wine_region PRIMARY KEY (id_wine_region);

---- FK ----
ALTER TABLE wine ADD CONSTRAINT fk_wine_company FOREIGN KEY (id_wine_company) REFERENCES wine_company;
ALTER TABLE wine ADD CONSTRAINT fk_wine_region FOREIGN KEY (id_wine_region) REFERENCES wine_region;

---- FILL ----
INSERT INTO wine_company (id_wine_company, name) VALUES('1', 'Vinařství Trávníček a Kořínek');
INSERT INTO wine_company (id_wine_company, name) VALUES('2', 'Vinařství Jan Plaček');
INSERT INTO wine_company (id_wine_company, name) VALUES('3', 'Vinařství LAHOFER');
INSERT INTO wine_company (id_wine_company, name) VALUES('4', 'Vinařství Josef Kořínek');
INSERT INTO wine_company (id_wine_company, name) VALUES('5', 'Vinařství Waldberg');
INSERT INTO wine_company (id_wine_company, name) VALUES('6', 'Dobrá Vinice');
INSERT INTO wine_company (id_wine_company, name) VALUES('7', 'Vinné sklepy Lechovice');
INSERT INTO wine_company (id_wine_company, name) VALUES('8', 'Vinařství HANZEL');
INSERT INTO wine_company (id_wine_company, name) VALUES('9', 'Martin Vajčner | vinařství');
INSERT INTO wine_company (id_wine_company, name) VALUES('10', 'ZNOVÍN ZNOJMO');
INSERT INTO wine_company (id_wine_company, name) VALUES('11', 'Vinařství AMPELOS');
INSERT INTO wine_company (id_wine_company, name) VALUES('12', 'Vinařství Markel');
INSERT INTO wine_company (id_wine_company, name) VALUES('13', 'Vinařství Vinice Hnanice');
INSERT INTO wine_company (id_wine_company, name) VALUES('14', 'Modrý sklep');
INSERT INTO wine_company (id_wine_company, name) VALUES('15', 'Vinařství Dobrovolný');
INSERT INTO wine_company (id_wine_company, name) VALUES('16', 'Tasovické vinařství');
INSERT INTO wine_company (id_wine_company, name) VALUES('17', 'VINEA Znojmo');
INSERT INTO wine_company (id_wine_company, name) VALUES('18', 'PARTILIA');
INSERT INTO wine_company (id_wine_company, name) VALUES('19', 'Vinařství rodiny Nápravovy');
INSERT INTO wine_company (id_wine_company, name) VALUES('20', 'REGINA COELI');
INSERT INTO wine_company (id_wine_company, name) VALUES('21', 'Vinařství Líbal');
INSERT INTO wine_company (id_wine_company, name) VALUES('22', 'VINO HORT');
INSERT INTO wine_company (id_wine_company, name) VALUES('23', 'Vinařství Piálek & Jäger');
INSERT INTO wine_company (id_wine_company, name) VALUES('24', 'VÍNO VANĚK');
INSERT INTO wine_company (id_wine_company, name) VALUES('25', 'Vinařství Ladislav Musil');
INSERT INTO wine_company (id_wine_company, name) VALUES('26', 'Vinařství Špalek');
INSERT INTO wine_company (id_wine_company, name) VALUES('27', 'Vinařství Arte Vini');
INSERT INTO wine_company (id_wine_company, name) VALUES('28', 'Vinařství SIMENON');
INSERT INTO wine_company (id_wine_company, name) VALUES('29', 'Vinné sklepy Maršovice');

INSERT INTO wine_region (id_wine_region, region) VALUES('1', 'Velké Bílovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('2', 'Popice');
INSERT INTO wine_region (id_wine_region, region) VALUES('3', 'Strachotice');
INSERT INTO wine_region (id_wine_region, region) VALUES('4', 'Vrbovec');
INSERT INTO wine_region (id_wine_region, region) VALUES('5', 'Stošíkovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('6', 'Hnanice');
INSERT INTO wine_region (id_wine_region, region) VALUES('7', 'Podmolí');
INSERT INTO wine_region (id_wine_region, region) VALUES('8', 'Božice');
INSERT INTO wine_region (id_wine_region, region) VALUES('9', 'Havraníky');
INSERT INTO wine_region (id_wine_region, region) VALUES('10', 'Načeratice');
INSERT INTO wine_region (id_wine_region, region) VALUES('11', 'Konice');
INSERT INTO wine_region (id_wine_region, region) VALUES('12', 'Dyjákovičky');
INSERT INTO wine_region (id_wine_region, region) VALUES('13', 'Krhovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('14', 'Chvalovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('15', 'Novosedly');
INSERT INTO wine_region (id_wine_region, region) VALUES('16', 'Dolní Kounice');
INSERT INTO wine_region (id_wine_region, region) VALUES('17', 'Horní Dunajovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('18', 'Oleksovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('19', 'Dobšice u Znojma');
INSERT INTO wine_region (id_wine_region, region) VALUES('20', 'Moravské Bránice');
INSERT INTO wine_region (id_wine_region, region) VALUES('21', 'Miroslav');
INSERT INTO wine_region (id_wine_region, region) VALUES('22', 'Želetice');
INSERT INTO wine_region (id_wine_region, region) VALUES('23', 'Hostěradice na Moravě');
INSERT INTO wine_region (id_wine_region, region) VALUES('24', 'Hustopeče');
INSERT INTO wine_region (id_wine_region, region) VALUES('25', 'Hrádek u Znojma');
INSERT INTO wine_region (id_wine_region, region) VALUES('26', 'Borotice');
INSERT INTO wine_region (id_wine_region, region) VALUES('27', 'Tasovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('28', 'Znojmo');
INSERT INTO wine_region (id_wine_region, region) VALUES('29', 'Mělčany');
INSERT INTO wine_region (id_wine_region, region) VALUES('30', 'Oblekovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('31', 'Bohutice');
INSERT INTO wine_region (id_wine_region, region) VALUES('32', 'Nové Bránice');
INSERT INTO wine_region (id_wine_region, region) VALUES('33', 'Slup');
INSERT INTO wine_region (id_wine_region, region) VALUES('34', 'Nový Šaldorf');
INSERT INTO wine_region (id_wine_region, region) VALUES('35', 'Dyjákovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('36', 'Dyje');
INSERT INTO wine_region (id_wine_region, region) VALUES('37', 'Olbramovice u Moravského Krumlova');
INSERT INTO wine_region (id_wine_region, region) VALUES('38', 'Sedlešovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('39', 'Petrovice');
INSERT INTO wine_region (id_wine_region, region) VALUES('40', 'Těšetice');

INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0080', 'Muškát moravský - mladé víno', 'bile-vino', 'polosuché', '1', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0062', 'Mladé pokušení 2019', 'bile-vino', 'polosladké', '2', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0259', 'Prosecco - 2018 DOC Extra Dry', 'sekty-a-sumiva-vina', 'suché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0081', 'Dornfelder rosé - mladé víno', 'ruzove-vino', 'polosladké', '1', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JOK.0033', 'Zweigeltrebe rosé - Mladé 2019', 'ruzove-vino', 'polosladké', '4', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0295', 'Mladé růžové 2019', 'ruzove-vino', 'polosladké', '5', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DVP.0017', 'Quatre - Štverka 2016', 'bile-vino', '', '6', '1');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0260', 'Mladý LAHOFER 2019', 'bile-vino', 'polosuché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0054', 'Sauvignon - Mladé víno 2019', 'bile-vino', 'polosuché', '7', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0261', 'Mladá LAHOFERka 2019', 'ruzove-vino', 'polosladké', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0262', 'Rulandské bílé A', 'bile-vino', 'suché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0294', 'Mladé bílé 2019', 'bile-vino', 'polosuché', '5', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0177', 'Martin Růžový 2019', 'ruzove-vino', 'polosuché', '8', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAJ.0006', 'Ryzlink vlašský', 'bile-vino', 'suché', '9', '2');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0220', 'Sauvignon - Pozdrav ze Znojma', 'bile-vino', 'polosuché', '10', '3');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0079', 'Sauvignon', 'bile-vino', 'polosuché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0218', 'Ryzlink rýnský - ledové víno', 'bile-vino', 'sladké', '10', '5');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0078', 'Pinot Noir', 'cervene-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MAR.0012', 'Pálava', 'bile-vino', '', '12', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0081', 'Rulandské šedé', 'bile-vino', 'polosuché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0217', 'Ryzlink vlašský - Šobes', 'bile-vino', 'polosuché', '10', '7');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0082', 'Mladý Kerner', 'bile-vino', 'suché', '11', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0052', 'Ryzlink vlašský', 'bile-vino', 'suché', '7', '8');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0176', 'Martin Bílý 2019', 'bile-vino', '', '8', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JOK.0031', 'Veltlínské zelené', 'bile-vino', 'suché', '4', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0131', 'Kerner', 'bile-vino', 'sladké', '13', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0065', 'Tramín', 'bile-vino', 'sladké', '14', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0064', 'Chardonnay', 'bile-vino', 'polosladké', '14', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0030', 'Sylvánské zelené', 'bile-vino', 'polosuché', '15', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0275', 'Ryzlink vlašský', 'bile-vino', 'suché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0163', 'Hibernal', 'bile-vino', 'polosladké', '8', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0036', 'Müller Thrugau', 'bile-vino', 'suché', '16', '13');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0276', 'Sylvánské zelené - suché', 'bile-vino', 'suché', '5', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0014', 'Cabernet Sauvignon Rosé', 'ruzove-vino', 'polosladké', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAR.0019', 'Veltlínské zelené', 'bile-vino', 'suché', '18', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0028', 'Sauvignon - KRAVÁK', 'bile-vino', 'suché', '19', '15');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0065', 'Veltlínské zelené - Staré keře', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0077', 'Pinot Blanc', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0080', 'Veritas', 'bile-vino', 'polosladké', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0043', 'Tramín červený', 'bile-vino', 'polosladké', '21', '17');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0053', 'Ryzlink rýnský', 'bile-vino', 'polosladké', '7', '18');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0066', 'Pinot Gris', 'bile-vino', 'suché', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0234', 'Neuburské', 'bile-vino', 'polosuché', '3', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0129', 'Sylvánské zelené', 'bile-vino', 'suché', '13', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0219', 'Ryzlink rýnský', 'bile-vino', 'suché', '10', '3');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0128', 'Sauvignon Gris', 'bile-vino', 'sladké', '13', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0061', 'Frankovka', 'cervene-vino', 'suché', '2', '20');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0213', 'Müller Thurgau', 'bile-vino', 'suché', '10', '21');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0042', 'Chardonnay', 'bile-vino', 'polosladké', '21', '22');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0161', 'Müller Thurgau', 'bile-vino', 'suché', '8', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0127', 'Hibernal', 'bile-vino', 'polosuché', '13', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0215', 'Chardonnay', 'bile-vino', 'suché', '10', '24');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0011', 'Sauvignon', 'bile-vino', 'polosuché', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0078', 'Pálava', 'bile-vino', 'polosladké', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0041', 'Sauvignon VOC', 'bile-vino', 'suché', '21', '17');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0076', 'Sauvignon', 'bile-vino', 'polosuché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0243', 'Veltlínské zelené', 'bile-vino', 'suché', '3', '25');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0013', 'Pálava', 'bile-vino', 'polosladké', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0010', 'Dornfelder', 'cervene-vino', 'suché', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0212', 'Tramín červený', 'bile-vino', 'sladké', '10', '21');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0012', 'Neuburské', 'bile-vino', 'polosladké', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0222', 'Muškát moravský', 'bile-vino', 'sladké', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0051', 'Frankovka - slámové', 'cervene-vino', 'sladké', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0211', 'Semillon', 'bile-vino', 'suché', '10', '5');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0076', 'Müller Thurgau', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAR.0018', 'Tramín červený', 'bile-vino', 'polosladké', '18', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0032', 'Veltlínské červené rané', 'bile-vino', 'polosuché', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0035', 'Pálava', 'bile-vino', 'sladké', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0077', 'Symposion', 'bile-vino', 'polosuché', '11', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAR.0017', 'Ryzlink rýnský', 'bile-vino', 'polosladké', '18', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0070', 'Grand Veltlin No.5', 'bile-vino', 'suché', '23', '21');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0074', 'Chardonnay - Dolce Vita', 'bile-vino', 'sladké', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0071', 'Roséčko', 'ruzove-vino', 'suché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0047', 'Rulandské bílé', 'bile-vino', 'suché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0258', 'Merlot', 'cervene-vino', 'suché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0046', 'Veltlínské zelené', 'bile-vino', 'suché', '24', '28');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0048', 'Pinot Gris', 'bile-vino', 'suché', '24', '28');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0060', 'Pálava', 'bile-vino', 'polosladké', '2', '29');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0051', 'Ryzlink rýnský - panenský sběr', 'bile-vino', 'suché', '24', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0022', 'Irsai Oliver', 'bile-vino', 'suché', '25', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0257', 'Ryzlink rýnský', 'bile-vino', 'suché', '3', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0249', 'Veltlínské zelené', 'bile-vino', 'suché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0049', 'Tramín', 'bile-vino', 'polosuché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0209', 'Mont Pré', 'bile-vino', 'polosuché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0033', 'Veritas', 'bile-vino', 'polosladké', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAJ.0005', 'Tramín červený', 'bile-vino', 'suché', '9', '3');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAJ.0004', 'Ryzlink rýnský', 'bile-vino', 'suché', '9', '30');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0050', 'Rulandské šedé', 'bile-vino', 'suché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0210', 'Pálava', 'bile-vino', 'polosladké', '10', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DVP.0016', 'Vlašský ryzlink Qvevri Georgia Naturel Orange', 'bile-vino', '', '6', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DVP.0015', 'Cuvée Kambrium', 'bile-vino', 'suché', '6', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DVP.0014', 'Blanc de Pinot noir', 'bile-vino', 'suché', '6', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DVP.0013', 'Velké dobré červené', 'cervene-vino', '', '6', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0031', 'Muškát moravský', 'bile-vino', 'polosuché', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0050', 'Rulandské bílé', 'bile-vino', 'polosladké', '7', '31');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0072', 'Ryzlink rýnský Sexenberg', 'bile-vino', 'suché', '23', '28');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0034', 'Tramín červený', 'bile-vino', 'polosladké', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0208', 'Chardonnay', 'bile-vino', 'polosuché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0079', 'Frankovka', 'cervene-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0061', 'Muškát moravský', 'bile-vino', 'polosladké', '14', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0225', 'Tramín červený', 'bile-vino', 'sladké', '3', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0061', 'Merlot Rosé', 'ruzove-vino', 'polosuché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0059', 'Frankovka', 'cervene-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0060', 'Müller Thrugau', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0064', 'Sauvignon Staré hory', 'bile-vino', 'suché', '20', '32');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0063', 'Pálava', 'bile-vino', 'polosuché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0251', 'Frizzante LAHOFER', 'sekty-a-sumiva-vina', 'sladké', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0049', 'Zweigeltrebe', 'cervene-vino', 'suché', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0059', 'SolarCO2', 'sekty-a-sumiva-vina', 'sladké', '2', '29');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0062', 'Pálava', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0059', 'Rulandské šedé', 'bile-vino', 'polosuché', '14', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0201', 'Rulandské modré AKÁT z edice DUEL', 'cervene-vino', 'suché', '10', '5');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0073', 'Ryzlink rýnský - botritický sběr', 'bile-vino', 'sladké', '23', '28');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0203', 'Tramín červený GENUS REGIS', 'bile-vino', 'polosladké', '10', '5');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0204', 'Pálava', 'bile-vino', 'polosladké', '10', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0202', 'Rulandské modré DUB z edice DUEL', 'cervene-vino', 'suché', '10', '5');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0205', 'Cabernet Sauvignon Rosé', 'ruzove-vino', 'polosladké', '10', '33');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0058', 'Svatovavřinecké Rosé', 'ruzove-vino', 'polosladké', '2', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0075', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0030', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '16', '13');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0090', 'Rulandské šedé', 'bile-vino', 'polosuché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAR.0016', 'Pinot Noir', 'cervene-vino', 'suché', '18', '5');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAJ.0003', 'Frankovka', 'cervene-vino', 'suché', '9', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAJ.0002', 'Veltlínské zelené', 'bile-vino', 'suché', '9', '2');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAJ.0001', 'Sauvignon', 'bile-vino', 'suché', '9', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0089', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0056', 'Pinot Noir', 'cervene-vino', 'suché', '27', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0055', 'Frankovka', 'cervene-vino', 'suché', '27', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0029', 'Sauvignon VOC', 'bile-vino', 'polosuché', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0053', 'Chardonnay', 'bile-vino', 'suché', '27', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0051', 'Veltlínské zelené', 'bile-vino', 'suché', '27', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0091', 'Gryllus bílý', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0054', 'Pálava', 'bile-vino', 'sladké', '27', '35');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0126', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '13', '33');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0124', 'Sauvignon VOC', 'bile-vino', 'suché', '13', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0125', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '13', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0049', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '27', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0029', 'Sauvignon Blanc VOC', 'bile-vino', 'suché', '28', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0050', 'Sauvignon VOC', 'bile-vino', 'suché', '27', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0052', 'Ryzlink rýnský', 'bile-vino', 'suché', '27', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0030', 'Ryzlink rýnský VOC', 'bile-vino', 'polosuché', '28', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0274', 'Sylvánské zelené - polosladké', 'bile-vino', 'polosladké', '5', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0206', 'Tramín červený - Lacerta Viridis', 'bile-vino', 'polosladké', '10', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0060', 'Veltlínské zelené', 'bile-vino', 'suché', '14', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0186', 'LAHOmošt hroznový Veltlínské zelené', 'hroznovy-most', 'sladké', '3', '36');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0065', 'Ryzlink rýnský VOC', 'bile-vino', '', '22', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0043', 'Frizzante Sauvignon', 'sekty-a-sumiva-vina', 'polosuché', '24', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0040', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0039', 'Sauvignon VOC', 'bile-vino', 'suché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0041', 'Zweigeltrebe Rosé', 'ruzove-vino', 'suché', '24', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0268', 'Hibernal', 'bile-vino', 'polosladké', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0238', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '3', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0267', 'Neuburské', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0045', 'Tramín žlutý', 'bile-vino', 'sladké', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0042', 'Frizzante Zweigeltrebe', 'sekty-a-sumiva-vina', 'polosuché', '24', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0240', 'Rulandské šedé', 'bile-vino', 'suché', '3', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0244', 'Pálava', 'bile-vino', 'polosladké', '3', '36');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0167', 'Pálava', 'bile-vino', 'polosladké', '8', '36');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0197', 'Sauvignon VOC', 'bile-vino', 'suché', '10', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0265', 'Rinot', 'bile-vino', 'polosuché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0199', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '10', '13');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0207', 'Tramín červený', 'bile-vino', 'polosladké', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0044', 'Muškát moravský', 'bile-vino', 'suché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0195', 'Ryzlink rýnský - Rosnička zelená', 'bile-vino', 'suché', '10', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JOK.0028', 'Dornfelder rosé', 'ruzove-vino', 'polosuché', '4', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0239', 'Sauvignon VOC - U Hájku', 'bile-vino', 'suché', '3', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JOK.0029', 'Zweigeltrebe Rosé', 'ruzove-vino', 'polosladké', '4', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0213', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '3', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0237', 'Sauvignon VOC - Šác', 'bile-vino', 'polosuché', '3', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0031', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '28', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0073', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0074', 'Sauvignon VOC', 'bile-vino', 'polosuché', '11', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0196', 'Ryzlink vlašský - Rosnička zelená', 'bile-vino', 'suché', '10', '24');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0075', 'Ryzlink rýnský VOC', 'bile-vino', 'polosuché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0068', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0069', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0048', 'Ryzlink rýnský VOC', 'bile-vino', 'polosuché', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0266', 'Chardonnay', 'bile-vino', 'polosuché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0040', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '21', '17');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0067', 'Sauvignon VOC', 'bile-vino', 'polosuché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0200', 'Sauvignon VOC', 'bile-vino', 'suché', '10', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0064', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '22', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0261', 'Veltlínské zelené', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0193', 'Irsai Oliver', 'bile-vino', 'polosladké', '10', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0262', 'Sauvignon VOC', 'bile-vino', 'polosuché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0191', 'Sauvignon - TROPICAL', 'bile-vino', 'polosuché', '10', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0190', 'Sauvignon GREEN', 'bile-vino', 'suché', '10', '5');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0063', 'Hort sekt Alsasko', 'sekty-a-sumiva-vina', 'suché', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0062', 'Hort sekt Limoux', 'sekty-a-sumiva-vina', 'suché', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0269', 'Ryzlink rýnský', 'bile-vino', 'polosuché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0070', 'Zweigeltrebe Rosé', 'ruzove-vino', 'polosuché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0071', 'Cabernet Sauvignon / Merlot Rosé', 'ruzove-vino', 'polosladké', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0088', 'GRYLLUS rosé BIO', 'ruzove-vino', '', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0058', 'Frankovka Rosé', 'ruzove-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0153', 'Rulandské modré', 'cervene-vino', 'suché', '8', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0192', 'Cabernet Sauvignon ROUGE', 'ruzove-vino', 'polosladké', '10', '24');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0074', 'Pinot Noir rosé / Pozdravy z NP Podyjí', 'ruzove-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0066', 'Veltlínské zelené EXTRA', 'bile-vino', 'suché', '23', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0212', 'Rulandské bílé', 'bile-vino', 'polosuché', '3', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0119', 'Muškát moravský', 'bile-vino', 'polosuché', '13', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0121', 'Ryzlink vlašský', 'bile-vino', 'sladké', '13', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0123', 'Cabernet Sauvignon Rosé', 'ruzove-vino', 'polosladké', '13', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0118', 'Irsai Oliver', 'bile-vino', 'polosladké', '13', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0073', 'Frankovka rosé / Pozdravy z NP Podyjí', 'ruzove-vino', 'polosuché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAR.0014', 'Ryzlink vlašský', 'bile-vino', 'suché', '18', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0122', 'Solaris', 'bile-vino', 'polosladké', '13', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAR.0013', 'Veltlínské zelené', 'bile-vino', 'suché', '18', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0072', 'Muškát moravský / Pozdravy z NP Podyjí', 'bile-vino', 'polosladké', '1', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0071', 'Veltlínské zelené / Pozdravy z NP Podyjí', 'bile-vino', 'suché', '1', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0164', 'Chardonnay', 'bile-vino', 'polosladké', '8', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0162', 'Rotgipfler', 'bile-vino', 'polosuché', '8', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0070', 'Tramín červený / Pozdravy z NP Podyjí', 'bile-vino', 'polosladké', '1', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0046', 'Sauvignon Blanc', 'bile-vino', 'suché', '27', '38');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAR.0015', 'Muškát moravský', 'bile-vino', 'polosuché', '18', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0046', 'Rulandské modré - klaret', 'ruzove-vino', 'polosuché', '7', '18');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0068', 'Sylvánské zelené', 'bile-vino', 'suché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0047', 'Pinot Gris', 'bile-vino', 'suché', '27', '30');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0072', 'Ryzlink rýnský', 'bile-vino', 'polosuché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0069', 'Muškát moravský', 'bile-vino', 'polosuché', '11', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0086', 'Sauvignon BIO', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0085', 'Rulandské bílé', 'bile-vino', 'polosuché', '26', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0058', 'Veltlínské zelené', 'bile-vino', 'suché', '14', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0069', 'Sauvignn Blanc / Pozdravy z NP Podyjí', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0189', 'πnot noir - červené', 'cervene-vino', 'suché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0188', 'πnot noir - rosé', 'ruzove-vino', 'polosladké', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0187', 'πnot noir - klaret', 'ruzove-vino', 'polosladké', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0232', 'Rulandské šedé', 'bile-vino', 'polosuché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0057', 'Cuvée TRIO', 'cervene-vino', 'suché', '2', '20');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0194', 'Muškát moravský', 'bile-vino', 'polosuché', '10', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0047', 'Sauvignon VOC', 'bile-vino', 'polosuché', '7', '18');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0027', 'Pinot Gris', 'bile-vino', 'suché', '28', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0057', 'Rulandské modré - klaret', 'ruzove-vino', 'polosuché', '14', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0051', 'Sauvignon', 'bile-vino', 'polosuché', '2', '20');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0227', 'Rulandské šedé', 'bile-vino', 'polosladké', '3', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0052', 'Muškát moravský', 'bile-vino', 'polosuché', '2', '20');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0050', 'Hibernal', 'bile-vino', 'suché', '2', '29');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0054', 'Muscaris', 'bile-vino', 'polosladké', '2', '29');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0117', 'Kerner', 'bile-vino', 'sladké', '13', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0045', 'Sylvánské zelené', 'bile-vino', 'polosuché', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0052', 'Pinot Gris', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0068', 'Ryzlink rýnský / Pozdravy z NP Podyjí', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0054', 'Sauvignon - Karlov', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0051', 'Chardonnay SUR-LIE', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0048', 'GREEN', 'bile-vino', 'suché', '27', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0053', 'Veltlínské zelené - Staré keře', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0056', 'Pinot Noir - Klaret', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0055', 'Merlot rosé', 'ruzove-vino', 'polosuché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0028', 'Ryzlink rýnský', 'bile-vino', 'suché', '28', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0053', 'Rinot', 'bile-vino', 'polosuché', '2', '29');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0043', 'Chardonnay', 'bile-vino', 'polosuché', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0158', 'Rulandské šedé', 'bile-vino', 'polosladké', '8', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0160', 'Zweigeltrebe Rosé', 'ruzove-vino', 'polosuché', '8', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0057', 'Veltlínské červené rané', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0159', 'Frankovka Rosé', 'ruzove-vino', 'polosladké', '8', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0230', 'Svatovavřinecké Rosé', 'ruzove-vino', 'polosladké', '3', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0058', 'HF Premium', 'cervene-vino', 'suché', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0044', 'Muškát moravský', 'bile-vino', 'polosuché', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0042', 'Tramín červený', 'bile-vino', '', '7', '8');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0049', 'Savilon', 'bile-vino', 'suché', '2', '29');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0184', 'Sylvánské zelené - Ledňáček říční', 'bile-vino', 'suché', '10', '21');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0185', 'Ryzlink rýnský', 'bile-vino', 'polosuché', '10', '3');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0084', 'Ryzlink rýnský z velkého sudu', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0231', 'Müller Thurgau', 'bile-vino', 'suché', '3', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0186', 'Sauvignon - Lacerta Viridis', 'bile-vino', 'suché', '10', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0066', 'Ryzlink rýnský - BETON', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0152', 'Rulandské bílé', 'bile-vino', 'polosuché', '8', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0041', 'Frankovka Rosé', 'ruzove-vino', 'polosladké', '7', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0055', 'RoseCO2 - perlivé víno', 'sekty-a-sumiva-vina', 'polosladké', '2', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0083', 'Veltlínské zelené', 'bile-vino', 'suché', '26', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0040', 'Hroznový mošt - Sylvánské zelené', 'hroznovy-most', 'sladké', '7', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0039', 'Rulandské šedé', 'bile-vino', 'polosuché', '7', '8');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JZM.0010', 'Rulandské šedé', 'bile-vino', 'sladké', '29', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0064', 'FREŠ - známkové cuvée', 'bile-vino', 'suché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0179', 'Modrý Janek', 'bile-vino', 'suché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0183', 'Veltlínské zelené - Ledňáček říční', 'bile-vino', 'suché', '10', '13');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JZM.0009', 'Tramín červený', 'bile-vino', 'sladké', '29', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0021', 'Frankovka rosé', 'ruzove-vino', 'suché', '25', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0223', 'Pálava', 'bile-vino', 'sladké', '3', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0067', 'Ryzlink vlašský / Pozdravy z NP Podyjí', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0065', 'Sauvignon', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0050', 'Frankovka', 'cervene-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0097', 'Zweigeltrebe', 'cervene-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0090', 'Svatovařinecké', 'cervene-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0086', 'Ryzlink rýnský', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0065', 'Cuvée Rosé', 'ruzove-vino', 'polosladké', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0154', 'Sauvignon', 'bile-vino', 'polosuché', '8', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0072', 'Chardonnay', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JZM.0008', 'Chardonnay', 'bile-vino', 'sladké', '29', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0096', 'Veltlínské zelené', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0081', 'Rulandské šedé', 'bile-vino', 'suché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0084', 'Ryzlink rýnský', 'bile-vino', 'suché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0045', 'Red Reserve', 'cervene-vino', 'suché', '27', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0087', 'Ryzlink vlašský', 'bile-vino', 'suché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0083', 'Ryzlink rýnský', 'bile-vino', 'polosladké', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0088', 'Sauvignon', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0075', 'Müller Thurgau', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0080', 'Rulandské bílé', 'bile-vino', 'suché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0078', 'Muškát moravský', 'bile-vino', 'polosuché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0071', 'Chardonnay', 'bile-vino', 'polosladké', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0076', 'Müller Thurgau', 'bile-vino', 'polosladké', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0089', 'Sauvignon', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0091', 'Tramín červený', 'bile-vino', 'polosladké', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0066', 'Cuvée sv. Urban', 'bile-vino', 'polosladké', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0099', 'Zweigeltrebe Rosé', 'ruzove-vino', 'polosuché', '5', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0065', 'Hibernal', 'bile-vino', 'polosuché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0180', 'Veritas', 'bile-vino', 'polosuché', '10', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0070', 'Hibernal', 'bile-vino', 'polosuché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0229', 'Veltlínské červené rané', 'bile-vino', 'suché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0150', 'Veltlínské zelené', 'bile-vino', 'suché', '8', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JOK.0026', 'Muškát moravský', 'bile-vino', 'suché', '4', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0098', 'Zweigeltrebe Rosé', 'ruzove-vino', 'suché', '5', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0077', 'Müller Thurgau', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0076', 'der Ilgner SPRUDEL', 'bile-vino', 'sladké', '26', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0214', 'Frankovka', 'cervene-vino', 'suché', '3', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0211', 'Ryzlink rýnský', 'bile-vino', 'polosuché', '3', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0176', 'Sauvignon TROPICAL', 'bile-vino', 'polosuché', '10', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0178', 'Denis d´ Or Barrique', 'cervene-vino', 'suché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0092', 'Tramín červený', 'bile-vino', 'polosladké', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0082', 'Rulandské šedé', 'bile-vino', 'sladké', '5', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0056', 'Merlot Nature 2016 HF', 'cervene-vino', 'suché', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0057', 'MOŠT HORT - Pinot Noir', 'hroznovy-most', 'sladké', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0068', 'Cuvée Waldberg', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0038', 'Tramín červený', 'bile-vino', 'sladké', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0036', 'Sekt Lechovice DEMI SEC', 'sekty-a-sumiva-vina', 'polosuché', '7', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0037', 'Ryzlink rýnský - slámové víno', 'bile-vino', 'sladké', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0039', 'Pálava', 'bile-vino', 'polosladké', '21', '17');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0081', 'Sauvignon - KRAVÁK', 'bile-vino', '', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0063', 'Veltlínské zelené', 'bile-vino', 'suché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JOK.0027', 'Solaris', 'bile-vino', 'polosuché', '4', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0047', 'Pinot Noir', 'cervene-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0044', 'Sauvignon KRAVÁK', 'bile-vino', 'suché', '27', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0038', 'Dornfelder', 'cervene-vino', 'suché', '24', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0061', 'Chardonnay SUR-LIE', 'bile-vino', 'suché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0074', 'Šaler červený', 'cervene-vino', 'sladké', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0073', 'Šaler bílý', 'bile-vino', 'sladké', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0062', 'Sauvignon KRAVÁK', 'bile-vino', 'suché', '23', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0035', 'Sekt Lechovice BRUT', 'sekty-a-sumiva-vina', 'suché', '7', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JOK.0024', 'Veltlínské zelené PÉT-NAT', 'bile-vino', '', '4', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0209', 'Ryzlink vlašský', 'bile-vino', 'polosladké', '3', '35');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0026', 'Frizzanté 2018', 'sekty-a-sumiva-vina', 'polosladké', '28', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0037', 'PINOT BLANC Sur-lie', 'bile-vino', 'suché', '24', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0113', 'Irsai Oliver', 'bile-vino', 'polosuché', '13', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0114', 'Müller Thrugau', 'bile-vino', 'polosuché', '13', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0028', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '15', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0029', 'Sauvignon - KRAVÁK', 'bile-vino', 'suché', '15', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0027', 'Sauvignon - KRAVÁK', 'bile-vino', 'suché', '19', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0034', 'Irsai Oliver', 'bile-vino', 'polosuché', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0170', 'Ryzlink vlašský - Terroir Club', 'bile-vino', 'polosladké', '10', '7');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0025', 'Moje Cuvée 2018', 'bile-vino', 'polosuché', '28', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0171', 'Rulandské bílé - SUR LIE', 'bile-vino', 'suché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0155', 'Martin Růžový 2018', 'ruzove-vino', 'polosuché', '8', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0066', 'Rulandské šedé', 'bile-vino', 'polosladké', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0065', 'Veltlínské zelené', 'bile-vino', 'suché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0169', 'ROBINIA - Ryzlink rýnský', 'bile-vino', 'suché', '10', '24');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0053', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '22', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0111', 'Cuvée Terasy VOC', 'bile-vino', 'suché', '13', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0075', 'Svatováclavské 2018', 'cervene-vino', 'suché', '26', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0082', 'Zweigeltrebe', 'cervene-vino', 'suché', '26', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0045', 'Rulandské bílé', 'bile-vino', 'suché', '2', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAR.0010', 'Chardonnay', 'bile-vino', 'suché', '18', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0019', 'Cuvée Ejbešic', 'bile-vino', 'suché', '25', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0032', 'Pálava', 'bile-vino', 'polosladké', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0112', 'Ryzlink rýnský VOC - Královská řada', 'bile-vino', 'suché', '8', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JOK.0025', 'Müller Thurgau', 'bile-vino', 'suché', '4', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0105', 'Kerka', 'bile-vino', 'polosladké', '13', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0166', 'Neuburské', 'bile-vino', 'polosuché', '10', '21');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0164', 'πnot noir - rosé', 'ruzove-vino', 'polosuché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0018', 'Ryzlink rýnský', 'bile-vino', 'suché', '25', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JZM.0007', 'Cabernet Sauvignon Rosé', 'ruzove-vino', 'polosladké', '29', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JZM.0005', 'Ryzlink rýnský', 'bile-vino', 'polosladké', '29', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JZM.0003', 'Rulandské šedé', 'bile-vino', 'polosladké', '29', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JZM.0002', 'Chardonnay', 'bile-vino', 'polosuché', '29', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JZM.0004', 'Sauvignon', 'bile-vino', 'polosuché', '29', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0063', 'Ryzlink rýnský VOC - Královská řada', 'bile-vino', 'suché', '5', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0054', 'Selection Cabernet Sauvignon 2017 HF', 'cervene-vino', 'suché', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0165', 'πnot noir - červené', 'cervene-vino', 'suché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0149', 'Tramín červený', 'bile-vino', 'polosuché', '8', '35');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0062', 'Frankovka', 'cervene-vino', 'suché', '1', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0063', 'Ryzlink rýnský / pro vegany', 'bile-vino', 'suché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0062', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0062', 'Müller Thrugau', 'bile-vino', 'polosuché', '11', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0009', 'Tramín červený', 'bile-vino', 'polosuché', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0045', 'Sauvignon - Staré hory', 'bile-vino', 'suché', '20', '32');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0027', 'Sylvánské zelené', 'bile-vino', 'polosuché', '15', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MAR.0009', 'Ryzlink rýnský', 'bile-vino', 'suché', '12', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0008', 'Cabernet sauvignon Rosé', 'ruzove-vino', 'polosladké', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0020', 'Frankovka', 'cervene-vino', 'suché', '25', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MAR.0008', 'Tramín červený', 'bile-vino', 'polosladké', '12', '33');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MAR.0007', 'Pálava', 'bile-vino', 'polosladké', '12', '33');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MAR.0010', 'Ryzlink vlašský', 'bile-vino', 'suché', '12', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0052', 'Veltlínské zelené', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0064', 'Rulandské šedé', 'bile-vino', 'polosuché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0052', 'Selection HF 2015', 'cervene-vino', 'suché', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0060', 'Frankovka rosé / Pozdravy z NP Podyjí', 'ruzove-vino', '', '1', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAR.0003', 'Sauvignon', 'bile-vino', 'polosuché', '18', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0158', 'Znovín de Lux Demi Sec', 'sekty-a-sumiva-vina', 'polosladké', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MAR.0011', 'Rulandské bílé', 'bile-vino', 'suché', '12', '8');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0030', 'Ryzlink rýnský', 'bile-vino', 'polosladké', '7', '18');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0029', 'Rulandské šedé', 'bile-vino', 'polosuché', '7', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0016', 'Veltlínské zelené', 'bile-vino', 'suché', '25', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0146', 'Sylvánské zelené', 'bile-vino', 'polosuché', '8', '36');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0015', 'Rulandské bílé', 'bile-vino', 'suché', '25', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0054', 'Müller Thurgau', 'bile-vino', 'polosuché', '14', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0055', 'Svatovavřinecké Rosé', 'ruzove-vino', 'polosuché', '14', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0050', 'Cuvée VzPg 2015', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0200', 'Rulandské modré', 'cervene-vino', 'suché', '3', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0050', 'Sauvignon', 'bile-vino', 'polosuché', '14', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JOK.0023', 'Veltlínské zelené', 'bile-vino', 'suché', '4', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0034', 'Veltlínské zelené', 'bile-vino', 'suché', '24', '28');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0051', 'Tramín', 'bile-vino', 'polosladké', '14', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0061', 'Chardonnay', 'bile-vino', 'polosladké', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0042', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '27', '28');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0033', 'Pinot Gris', 'bile-vino', 'polosuché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0041', 'Sauvignon VOC', 'bile-vino', 'suché', '27', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0017', 'Chardonnay', 'bile-vino', 'suché', '25', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0103', 'Pálava', 'bile-vino', 'sladké', '13', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0035', 'Tramín', 'bile-vino', 'polosuché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0058', 'Rulandské šedé', 'bile-vino', 'polosladké', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0147', 'Chardonnay', 'bile-vino', 'polosuché', '8', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0043', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '27', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0052', 'Ryzlink rýnský', 'bile-vino', 'polosuché', '14', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0053', 'Rulandské šedé', 'bile-vino', 'polosuché', '14', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0027', 'Sauvignon VOC', 'bile-vino', 'polosuché', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0194', 'LAHOFER červený Sladký - Dornfelder', 'cervene-vino', 'sladké', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('JZM.0001', 'Hroznový mošt - Rulandské modré', 'hroznovy-most', 'sladké', '29', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0028', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '16', '13');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0061', 'Sylvánské zelené', 'bile-vino', 'suché', '5', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0155', 'Znovín De Lux Brut', 'sekty-a-sumiva-vina', 'suché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0058', 'Sauvignon VOC', 'bile-vino', 'polosuché', '11', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0071', 'Ryzlink rýnský z velkého sudu', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0059', 'Ryzlink rýnský VOC', 'bile-vino', 'polosuché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0060', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0207', 'André', 'cervene-vino', 'suché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0051', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '22', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0069', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '26', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0060', 'Rulandské šedé', 'bile-vino', 'suché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0204', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '3', '25');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0053', 'Pálava', 'bile-vino', 'polosladké', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0049', 'Sauvignon VOC', 'bile-vino', 'suché', '22', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0026', 'Veltlínské zelené VOC', 'bile-vino', 'polosuché', '15', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0057', 'Sauvignon VOC', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0144', 'Sauvignon VOC', 'bile-vino', 'polosuché', '8', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0026', 'Sauvignon VOC', 'bile-vino', '', '7', '18');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0058', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0100', 'Sauvignon VOC', 'bile-vino', 'polosuché', '13', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0066', 'Sauvignon VOC', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0032', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0127', 'DNA - Tramín červený - Vinohrady - Cuvée', 'bile-vino', 'polosuché', '8', '35');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0050', 'Sauvignon VOC', 'bile-vino', 'suché', '22', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0126', 'DNA - Tramín červený - Nerez', 'bile-vino', 'polosuché', '8', '35');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0124', 'DNA - Tramín červený - Dub', 'bile-vino', 'polosuché', '8', '35');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0141', 'Kerner', 'bile-vino', 'polosladké', '8', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0067', 'Gryllus bílý BIO VOC', 'bile-vino', 'suché', '26', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0024', 'Muškát moravský', 'bile-vino', 'polosladké', '19', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0023', 'Rulandské modré - KLARET', 'ruzove-vino', '', '19', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0026', 'Veltlínské zelené', 'bile-vino', 'suché', '19', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0007', 'Ryzlink vlašský', 'bile-vino', 'polosuché', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0025', 'Sylvánské zelené', 'bile-vino', 'suché', '19', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0145', 'Znovín Classi Demi', 'sekty-a-sumiva-vina', 'polosladké', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0143', 'Znovín De Lux rosé Cabernet Sauvignon Demi sec', 'sekty-a-sumiva-vina', 'polosladké', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0143', 'Sylvánské zelené - HANZEL DNA', 'bile-vino', 'suché', '8', '36');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0025', 'Zweigeltrebe Rosé', 'ruzove-vino', 'polosuché', '15', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0049', 'Hibernal / panenská sklizeň', 'bile-vino', 'suché', '14', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0044', 'Veltlínské zelené', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0063', 'Gryllus červený', 'cervene-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0052', 'Müller Thurgau', 'bile-vino', 'polosuché', '1', '9');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0051', 'Veltlínské zelené', 'bile-vino', '', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0125', 'DNA - Tramín červený - akát', 'bile-vino', 'polosuché', '8', '35');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0056', 'Sylvánské zelené', 'bile-vino', 'suché', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0024', 'Pálava', 'bile-vino', 'polosladké', '28', '35');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0038', 'Cabernet Cortis', 'cervene-vino', 'suché', '2', '29');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0040', 'White RESERVE', 'bile-vino', 'suché', '27', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0139', 'Müller Thrugau', 'bile-vino', 'polosuché', '8', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0095', 'Müller Thurgau', 'bile-vino', 'polosladké', '13', '33');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0193', 'Rosé LAHOFER', 'ruzove-vino', 'sladké', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0192', 'Müller Thrugau', 'bile-vino', 'sladké', '3', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0047', 'Veltlínské zelené', 'bile-vino', 'suché', '14', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0023', 'Sauvignon Blanc', 'bile-vino', 'suché', '28', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0021', 'RESERVE Pinot Cuvée 2016', 'bile-vino', '', '28', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0132', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '8', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0176', 'Rulandské bílé', 'bile-vino', 'suché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0131', 'Rulandské bílé', 'bile-vino', 'suché', '8', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0068', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0035', 'Cabernet Sauvignon', 'cervene-vino', 'suché', '2', '20');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0139', 'Cabernet Sauvignon Rosé', 'ruzove-vino', 'polosladké', '10', '33');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PLA.0034', 'Cuvée Premiéra', 'bile-vino', '', '2', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0040', 'Cuvé 25', 'cervene-vino', 'suché', '20', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0050', '100% Hroznový mošt', 'hroznovy-most', 'sladké', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0060', 'Meruňkový nektar - der Ilgner', 'hroznovy-most', '', '26', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0046', 'Veltlínské zelené EXTRA', 'bile-vino', 'suché', '23', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0163', 'Sauvignon', 'bile-vino', 'sladké', '3', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0202', 'Muškát moravský', 'bile-vino', 'polosladké', '3', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0136', 'Sauvignon RETRO STYL', 'bile-vino', 'suché', '10', '3');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0138', 'Znovín Classic Brut', 'sekty-a-sumiva-vina', 'suché', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIH.0094', 'Cuvée Terasy VOC', 'bile-vino', 'suché', '13', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0031', 'Sauvignon VOC', 'bile-vino', 'suché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0049', 'Sauvignon VOC', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0013', 'Rulandské šedé', 'bile-vino', 'suché', '25', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0011', 'Zweigeltrebe', 'cervene-vino', 'suché', '25', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0045', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '22', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0135', 'Muškát žlutý', 'bile-vino', 'sladké', '8', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MOD.0045', 'Rulandské šedé', 'bile-vino', 'polosuché', '14', '10');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0131', 'Znovín Classic Sekt Demi sec - červený', 'sekty-a-sumiva-vina', 'polosladké', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0048', 'Chardonnay APRI 2015', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0173', 'Rulandské bílé', 'bile-vino', 'polosladké', '3', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0171', 'Ryzlink rýnský', 'bile-vino', 'polosladké', '3', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0054', 'Rulandské bílé', 'bile-vino', 'suché', '5', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0053', 'Ryzlink vlašský', 'bile-vino', 'suché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0051', 'Ryzlink rýnský', 'bile-vino', 'suché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0054', 'Sauvignon', 'bile-vino', 'polosuché', '11', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0055', 'Sauvignon', 'bile-vino', 'suché', '5', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0036', 'Zweigeltrebe - barrique', 'cervene-vino', 'suché', '21', '17');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0039', 'Merlot - barrique', 'cervene-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0128', 'Pálava', 'bile-vino', 'polosladké', '10', '39');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0132', 'Veltlínské zelené - Terroir Club', 'bile-vino', 'polosladké', '10', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0010', 'Svatovavřinecké', 'cervene-vino', 'suché', '25', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0184', 'Zweigeltrebe', 'cervene-vino', 'suché', '3', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0037', 'Sauvignon - KRAVÁK', 'bile-vino', 'suché', '27', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0026', 'Veritas', 'bile-vino', 'polosladké', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0024', 'Rulandské bílé', 'bile-vino', 'polosuché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0022', 'Sauvignon - KRAVÁK', 'bile-vino', 'suché', '19', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0036', 'Veltlínské zelené', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0053', 'Pinot Noir - Blanc de Noir', 'bile-vino', 'polosladké', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0012', 'Modrý Portugal', 'cervene-vino', 'suché', '25', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0035', 'Pinot Gris', 'bile-vino', '', '27', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0033', 'Sauvignon Blanc', 'bile-vino', 'suché', '27', '38');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('TAO.0037', 'Chardonnay', 'bile-vino', 'suché', '20', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0034', 'Sauvignon', 'bile-vino', 'polosladké', '21', '17');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0124', 'Pálava', 'bile-vino', '', '10', '39');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0175', 'Ryzlink vlašský', 'bile-vino', 'suché', '3', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0044', 'Sauvignon - KRAVÁK', 'bile-vino', 'suché', '23', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0050', 'Müller Thurgau', 'bile-vino', 'polosuché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0043', 'SAUVIGNON dolce vita', 'bile-vino', 'polosladké', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0023', 'Frankovka Rosé', 'ruzove-vino', '', '7', '18');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0042', 'Chardonnay - Grand Reserva No.3', 'bile-vino', 'suché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0047', 'Sylvánské zelené', 'bile-vino', 'suché', '5', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0022', 'Svatovavřinecké', 'cervene-vino', 'suché', '7', '26');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0049', 'Sylvánské zelené', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0019', 'Sauvignon VOC', 'bile-vino', 'suché', '15', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0042', 'Viognier', 'bile-vino', 'suché', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0005', 'Rulandské šedé', 'bile-vino', 'polosladké', '17', '30');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0025', 'Sauvignon VOC', 'bile-vino', 'polosuché', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0061', 'KRAVÍ HORA Pinot Blanc SUR LIE', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0040', 'Sauvignon VOC', 'bile-vino', 'suché', '22', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0038', 'CH sir lie 2011 - Chardonnay & Pinot Blanc', 'bile-vino', 'suché', '22', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0033', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '21', '17');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('KOR.0043', 'Ryzlink rýnský VOC', 'bile-vino', 'suché', '1', '6');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0052', 'EDELSPITZ PIGAGE - oranžové víno', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0021', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '7', '8');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0055', 'Ryzlink rýnský VOC', 'bile-vino', 'polosuché', '23', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0021', 'Sauvignon VOC', 'bile-vino', 'suché', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0120', 'Sauvignon VOC', 'bile-vino', 'suché', '8', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0004', 'Chardonnay', 'bile-vino', 'polosladké', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0043', 'Sauvignon VOC', 'bile-vino', 'suché', '5', '12');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0049', 'KRAVÍ HORA Sauvignon', 'bile-vino', 'suché', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0044', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0165', 'Neuburské', 'bile-vino', 'polosladké', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0117', 'Müller Thrugau', 'bile-vino', 'suché', '8', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0105', 'Veltlínské zelené', 'bile-vino', 'suché', '8', '36');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0014', 'Chardonnay', 'bile-vino', 'suché', '28', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0103', 'Sauvignon', 'bile-vino', 'polosuché', '8', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0057', 'Tramín červený', 'bile-vino', 'sladké', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0084', 'Sauvignon', 'bile-vino', 'polosuché', '8', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0001', 'Neuburské', 'bile-vino', 'suché', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VIZ.0003', 'Pálava', 'bile-vino', 'polosladké', '17', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0015', 'Sauvignon', 'bile-vino', 'suché', '7', '8');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0021', 'Ryzlink rýnský', 'bile-vino', 'polosuché', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0044', '100% Hroznový mošt', 'hroznovy-most', 'sladké', '11', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SPA.0044', 'Tramín červený', 'bile-vino', 'sladké', '26', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DVP.0011', 'Quatre - Štverka 2014', 'bile-vino', 'suché', '6', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0110', 'Rulandské šedé', 'bile-vino', 'polosuché', '8', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DVP.0012', 'Cuvée Národní Park', 'bile-vino', 'suché', '6', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0013', 'Tramín červený', 'bile-vino', 'polosuché', '7', '8');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0091', 'Kerner', 'bile-vino', 'sladké', '10', '21');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0102', 'Veltlínské zelené', 'bile-vino', 'polosuché', '10', '39');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0035', 'Ryzlink rýnský VOC - Královská řada', 'bile-vino', 'suché', '5', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('SIM.0016', 'Veltlínské zelené', 'bile-vino', 'polosuché', '28', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0039', 'Ryzlink rýnský', 'bile-vino', 'polosladké', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0020', 'Sauvignon - KRAVÁK', 'bile-vino', 'suché', '19', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0048', 'Muškát moravský', 'bile-vino', 'polosladké', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0087', 'Ryzlink rýnský', 'bile-vino', 'suché', '8', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0099', 'Rulandské šedé', 'bile-vino', 'sladké', '8', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0104', 'André', 'cervene-vino', 'suché', '8', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('AMP.0038', 'Müller Thrugau', 'bile-vino', 'polosladké', '11', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0084', 'SEKT Neuburské', 'sekty-a-sumiva-vina', 'polosuché', '3', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0020', 'Tasovjanka', 'bile-vino', 'polosladké', '16', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DVP.0008', 'Sauvignon Blanc qvevri', 'bile-vino', 'suché', '6', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ART.0029', 'ORANGE RESERVE 2015', 'bile-vino', 'suché', '27', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VSL.0011', 'Cabernet Sauvignon', 'cervene-vino', 'suché', '7', '8');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0017', 'Sauvignon (VOC)', 'bile-vino', 'polosladké', '15', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0017', 'Sauvignon (VOC)', 'bile-vino', 'suché', '16', '27');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0169', 'Veltlínské zelené VOC', 'bile-vino', 'suché', '3', '37');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('WAL.0032', 'Veltlínské zelené (VOC)', 'bile-vino', 'polosuché', '5', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0013', 'Zweigeltrebe', 'cervene-vino', 'suché', '24', '14');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0029', 'Sauvignon (VOC)', 'bile-vino', 'suché', '22', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HAN.0086', 'Veltlínské zelené', 'bile-vino', 'suché', '8', '25');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0025', 'Sauvignon (VOC)', 'bile-vino', 'polosladké', '21', '17');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0144', 'A-SEKT Neuburské', 'sekty-a-sumiva-vina', '', '3', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0019', 'Sauvignon - KRAVÁK', 'bile-vino', 'suché', '19', '34');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('MUS.0002', 'Veltlínské zelené', 'bile-vino', 'suché', '25', '16');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DVP.0007', 'Nejedlík Orange', 'bile-vino', 'suché', '6', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0020', 'Sauvignon VOC', 'bile-vino', 'suché', '22', '19');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('ZNO.0045', 'Znovín de Lux rosé Demi', 'sekty-a-sumiva-vina', '', '10', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0024', 'Rulandské bílé', 'bile-vino', 'polosladké', '21', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('PAJ.0034', 'Sauvignon - Grand Reserva No.2', 'bile-vino', 'suché', '23', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0072', 'Sauvignon Francie', 'bile-vino', 'suché', '3', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('VAN.0020', 'Sauvignon Blanc VOC', 'bile-vino', '', '24', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOR.0016', 'HORT FRANCE Premium', 'cervene-vino', 'suché', '22', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LIB.0016', 'Aurélius', 'bile-vino', 'suché', '21', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('HOD.0011', 'Veltlínské zelené', 'bile-vino', 'suché', '16', '13');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0010', 'Rulandské bílé', 'bile-vino', 'sladké', '19', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0021', 'Rulandské šedé', 'bile-vino', 'sladké', '3', '4');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('NAP.0011', 'Ryzlink vlašský', 'bile-vino', 'sladké', '19', '');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0015', 'Veltlínské zelené', 'bile-vino', '', '15', '11');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('LAH.0129', 'Svatovavřinecké', 'cervene-vino', 'suché', '3', '23');
INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)
VALUES('DOB.0018', 'Ryzlink rýnský (VOC)', 'bile-vino', 'polosladké', '15', '40');
