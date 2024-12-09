package org.xbill.DNS;

import java.io.IOException;

/* loaded from: classes.dex */
public class HINFORecord extends Record {
    private static final long serialVersionUID = -4732870630947452112L;
    private byte[] cpu;
    private byte[] os;

    HINFORecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new HINFORecord();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.cpu = dNSInput.readCountedString();
        this.os = dNSInput.readCountedString();
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeCountedString(this.cpu);
        dNSOutput.writeCountedString(this.os);
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Record.byteArrayToString(this.cpu, true));
        stringBuffer.append(" ");
        stringBuffer.append(Record.byteArrayToString(this.os, true));
        return stringBuffer.toString();
    }
}
