package org.xbill.DNS;

/* loaded from: classes.dex */
public class NSAP_PTRRecord extends SingleNameBase {
    private static final long serialVersionUID = 2386284746382064904L;

    NSAP_PTRRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new NSAP_PTRRecord();
    }
}
