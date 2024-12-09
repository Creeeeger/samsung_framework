package org.xbill.DNS;

/* loaded from: classes.dex */
public class CNAMERecord extends SingleCompressedNameBase {
    private static final long serialVersionUID = -4020373886892538580L;

    CNAMERecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new CNAMERecord();
    }

    public Name getTarget() {
        return getSingleName();
    }
}
