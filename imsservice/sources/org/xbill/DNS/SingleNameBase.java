package org.xbill.DNS;

import java.io.IOException;

/* loaded from: classes.dex */
abstract class SingleNameBase extends Record {
    private static final long serialVersionUID = -18595042501413L;
    protected Name singleName;

    protected SingleNameBase() {
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.singleName = new Name(dNSInput);
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        return this.singleName.toString();
    }

    protected Name getSingleName() {
        return this.singleName;
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        this.singleName.toWire(dNSOutput, null, z);
    }
}
