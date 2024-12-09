package org.xbill.DNS;

import java.io.IOException;

/* loaded from: classes.dex */
public class ISDNRecord extends Record {
    private static final long serialVersionUID = -8730801385178968798L;
    private byte[] address;
    private byte[] subAddress;

    ISDNRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new ISDNRecord();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.address = dNSInput.readCountedString();
        if (dNSInput.remaining() > 0) {
            this.subAddress = dNSInput.readCountedString();
        }
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeCountedString(this.address);
        byte[] bArr = this.subAddress;
        if (bArr != null) {
            dNSOutput.writeCountedString(bArr);
        }
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Record.byteArrayToString(this.address, true));
        if (this.subAddress != null) {
            stringBuffer.append(" ");
            stringBuffer.append(Record.byteArrayToString(this.subAddress, true));
        }
        return stringBuffer.toString();
    }
}
