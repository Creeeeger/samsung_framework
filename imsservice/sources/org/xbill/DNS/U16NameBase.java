package org.xbill.DNS;

import java.io.IOException;

/* loaded from: classes.dex */
abstract class U16NameBase extends Record {
    private static final long serialVersionUID = -8315884183112502995L;
    protected Name nameField;
    protected int u16Field;

    protected U16NameBase() {
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.u16Field = dNSInput.readU16();
        this.nameField = new Name(dNSInput);
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.u16Field);
        stringBuffer.append(" ");
        stringBuffer.append(this.nameField);
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeU16(this.u16Field);
        this.nameField.toWire(dNSOutput, null, z);
    }
}
