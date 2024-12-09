package org.xbill.DNS;

import java.io.IOException;

/* loaded from: classes.dex */
class EmptyRecord extends Record {
    private static final long serialVersionUID = 3601852050646429582L;

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        return "";
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
    }

    EmptyRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new EmptyRecord();
    }
}
