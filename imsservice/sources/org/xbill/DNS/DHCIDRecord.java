package org.xbill.DNS;

import java.io.IOException;
import org.xbill.DNS.utils.base64;

/* loaded from: classes.dex */
public class DHCIDRecord extends Record {
    private static final long serialVersionUID = -8214820200808997707L;
    private byte[] data;

    DHCIDRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new DHCIDRecord();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.data = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeByteArray(this.data);
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        return base64.toString(this.data);
    }
}
