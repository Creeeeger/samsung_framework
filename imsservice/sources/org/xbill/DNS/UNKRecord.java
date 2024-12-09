package org.xbill.DNS;

import java.io.IOException;

/* loaded from: classes.dex */
public class UNKRecord extends Record {
    private static final long serialVersionUID = -4193583311594626915L;
    private byte[] data;

    UNKRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new UNKRecord();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.data = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        return Record.unknownToString(this.data);
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeByteArray(this.data);
    }
}
