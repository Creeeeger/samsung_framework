package org.xbill.DNS;

/* loaded from: classes.dex */
public class MDRecord extends SingleNameBase {
    private static final long serialVersionUID = 5268878603762942202L;

    MDRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new MDRecord();
    }
}
