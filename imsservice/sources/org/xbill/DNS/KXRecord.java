package org.xbill.DNS;

/* loaded from: classes.dex */
public class KXRecord extends U16NameBase {
    private static final long serialVersionUID = 7448568832769757809L;

    KXRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new KXRecord();
    }
}
