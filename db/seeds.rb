#encoding: utf-8

### Management Firms ###
others = ManagementFirm.find_or_create_by_abbr!({ name: 'Other management firms', abbr: 'OTHERS'})
bbl = ManagementFirm.find_or_create_by_abbr!({ name: 'BBL Asset Management', abbr: 'BBL'})
bay = ManagementFirm.find_or_create_by_abbr!({ name: 'Krungsri Asset Management', abbr: 'BAY'})
kbank = ManagementFirm.find_or_create_by_abbr!({ name: 'Kasikorn Asset Management', abbr: 'KBANK'})
ktb = ManagementFirm.find_or_create_by_abbr!({ name: 'Krung Thai Asset Management', abbr: 'KTB'})
scb = ManagementFirm.find_or_create_by_abbr!({ name: 'SCB Asset Management', abbr: 'SCB'})

### Funds ###
# others
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดธนชาต Low Beta', abbr: 'T-LowBeta', management_firm: others})
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดวรรณเอเอ็มหุ้นคุณค่าปันผล', abbr: '1VAL-D', management_firm: others})
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดเอ็มเอฟซี ไฮ-ดิวิเดนด์ ฟันด์', abbr: 'HI-DIV', management_firm: others})
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดเพิ่มพูนทรัพย์ปันผล', abbr: 'PPSD', management_firm: others})
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดธนชาติทุนทวี1', abbr: 'TTW1', management_firm: others})

# bbl
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดบัวแก้วปันผล', abbr: 'BKD', management_firm: bbl })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดบัวหลวงร่วมทุน', abbr: 'BCAP', management_firm: bbl })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดบัวหลวงธนคม', abbr: 'BTK', management_firm: bbl })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดบัวหลวงทศพล', abbr: 'BTP', management_firm: bbl })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดบีแอ็คทีฟ', abbr: 'B-ACTIVE', management_firm: bbl })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดบัวหลวงโครงสร้างพื้นฐาน', abbr: 'B-INFRA', management_firm: bbl })

# bay
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดกรุงศรีหุ้นแวลู', abbr: 'KFVALUE', management_firm: bay })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดกรุงศรีหุ้นปันผล', abbr: 'KFSDIV', management_firm: bay })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดกรุงศรีเฟล็กซิเบิ้ลปันผล', abbr: 'KFFLEX-D', management_firm: bay })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดกรุงศรีเฟล็กซิเบิล', abbr: 'KFFLEX', management_firm: bay })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดกรุงศรีอิควิตี้', abbr: 'KFSEQ', management_firm: bay })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดกรุงศรีไชน่าอิควิตี้', abbr: 'KF-CHINA', management_firm: bay })

# kbank
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดเค สตาร์หุ้นทุนคืนกำไร', abbr: 'K-STAR', management_firm: kbank })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดเค หุ้นปันผล', abbr: 'K-VALUE', management_firm: kbank })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดเค หุ้นทุน', abbr: 'K-EQUITY', management_firm: kbank })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดเค หุ้นทุนบริพัตร', abbr: 'K-FEQ', management_firm: kbank })

# ktb
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดกรุงไทย ซีเล็คทีฟ อิควิตี้', abbr: 'KTSE', management_firm: ktb })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดกรุงไทยหุ้นทุนปันผล', abbr: 'KTSF', management_firm: ktb })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดกรุงไทย สมาร์ท อิควิตี้ ฟันด์', abbr: 'KTEF', management_firm: ktb })

# scb
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดไทยพาณิชย์หุ้นทุนปันผล', abbr: 'SCBDV', management_firm: scb })
Fund.find_or_create_by_abbr!({ name: 'กองทุนเปิดไทยพาณิชย์ซีเล็คท์ อิควิตี้ ฟันด์', abbr: 'SCBSE', management_firm: scb })
