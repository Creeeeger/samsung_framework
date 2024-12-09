package org.xbill.DNS;

/* loaded from: classes.dex */
public class MBRecord extends SingleNameBase {
    private static final long serialVersionUID = 532349543479150419L;

    MBRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new MBRecord();
    }
}
