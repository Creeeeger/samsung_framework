package org.xbill.DNS;

import java.io.IOException;

/* loaded from: classes.dex */
public class X25Record extends Record {
    private static final long serialVersionUID = 4267576252335579764L;
    private byte[] address;

    X25Record() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new X25Record();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.address = dNSInput.readCountedString();
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeCountedString(this.address);
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        return Record.byteArrayToString(this.address, true);
    }
}
