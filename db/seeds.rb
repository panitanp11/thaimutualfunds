#encoding: utf-8

### Management Firms ###
others = ManagementFirm.create!({ name: 'Other management firms', abbr: 'OTHERS'})
bbl = ManagementFirm.create!({ name: 'BBL Asset Management', abbr: 'BBL'})
bay = ManagementFirm.create!({ name: 'Krungsri Asset Management', abbr: 'BAY'})
kbank = ManagementFirm.create!({ name: 'Kasikorn Asset Management', abbr: 'KBANK'})
ktb = ManagementFirm.create!({ name: 'Krung Thai Asset Management', abbr: 'KTB'})
scb = ManagementFirm.create!({ name: 'SCB Asset Management', abbr: 'SCB'})

### Funds ###
# others
Fund.create!({ name: 'กองทุนเปิดธนชาต Low Beta', abbr: 'T-LowBeta', management_firm: others})
Fund.create!({ name: 'กองทุนเปิดวรรณเอเอ็มหุ้นคุณค่าปันผล', abbr: '1VAL-D', management_firm: others})
Fund.create!({ name: 'กองทุนเปิดเอ็มเอฟซี ไฮ-ดิวิเดนด์ ฟันด์', abbr: 'HI-DIV', management_firm: others})

# bbl
Fund.create!({ name: 'กองทุนเปิดบัวแก้วปันผล', abbr: 'BKD', management_firm: bbl })
Fund.create!({ name: 'กองทุนเปิดบัวหลวงร่วมทุน', abbr: 'BCAP', management_firm: bbl })
Fund.create!({ name: 'กองทุนเปิดบัวหลวงธนคม', abbr: 'BTK', management_firm: bbl })

# bay
Fund.create!({ name: 'กองทุนเปิดกรุงศรีหุ้นแวลู', abbr: 'KFVALUE', management_firm: bay })
Fund.create!({ name: 'กองทุนเปิดกรุงศรีหุ้นปันผล', abbr: 'KFSDIV', management_firm: bay })
Fund.create!({ name: 'กองทุนเปิดกรุงศรีเฟล็กซิเบิ้ลปันผล', abbr: 'KFFLEX-D', management_firm: bay })

# kbank
Fund.create!({ name: 'กองทุนเปิดเค สตาร์หุ้นทุนคืนกำไร', abbr: 'K-STAR', management_firm: kbank })
Fund.create!({ name: 'กองทุนเปิดเค หุ้นปันผล', abbr: 'K-VALUE', management_firm: kbank })
Fund.create!({ name: 'กองทุนเปิดเค หุ้นทุน', abbr: 'K-EQUITY', management_firm: kbank })

# ktb
Fund.create!({ name: 'กองทุนเปิดกรุงไทย ซีเล็คทีฟ อิควิตี้', abbr: 'KTSE', management_firm: ktb })
Fund.create!({ name: 'กองทุนเปิดกรุงไทยหุ้นทุนปันผล', abbr: 'KTSF', management_firm: ktb })
Fund.create!({ name: 'กองทุนเปิดกรุงไทย สมาร์ท อิควิตี้ ฟันด์', abbr: 'KTEF', management_firm: ktb })

# scb
Fund.create!({ name: 'กองทุนเปิดไทยพาณิชย์หุ้นทุนปันผล', abbr: 'SCBDV', management_firm: scb })
Fund.create!({ name: 'กองทุนเปิดไทยพาณิชย์ซีเล็คท์ อิควิตี้ ฟันด์', abbr: 'SCBSE', management_firm: scb })
