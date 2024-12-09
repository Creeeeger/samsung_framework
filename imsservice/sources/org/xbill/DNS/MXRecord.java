package org.xbill.DNS;

/* loaded from: classes.dex */
public class MXRecord extends U16NameBase {
    private static final long serialVersionUID = 2914841027584208546L;

    MXRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new MXRecord();
    }

    @Override // org.xbill.DNS.U16NameBase, org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeU16(this.u16Field);
        this.nameField.toWire(dNSOutput, compression, z);
    }
}
