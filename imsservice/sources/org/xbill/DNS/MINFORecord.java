package org.xbill.DNS;

import java.io.IOException;

/* loaded from: classes.dex */
public class MINFORecord extends Record {
    private static final long serialVersionUID = -3962147172340353796L;
    private Name errorAddress;
    private Name responsibleAddress;

    MINFORecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new MINFORecord();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.responsibleAddress = new Name(dNSInput);
        this.errorAddress = new Name(dNSInput);
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.responsibleAddress);
        stringBuffer.append(" ");
        stringBuffer.append(this.errorAddress);
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        this.responsibleAddress.toWire(dNSOutput, null, z);
        this.errorAddress.toWire(dNSOutput, null, z);
    }
}
