package org.xbill.DNS;

/* loaded from: classes.dex */
public class DNSKEYRecord extends KEYBase {
    private static final long serialVersionUID = -8679800040426675002L;

    DNSKEYRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new DNSKEYRecord();
    }
}
