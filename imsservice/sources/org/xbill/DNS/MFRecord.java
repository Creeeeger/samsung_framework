package org.xbill.DNS;

/* loaded from: classes.dex */
public class MFRecord extends SingleNameBase {
    private static final long serialVersionUID = -6670449036843028169L;

    MFRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new MFRecord();
    }
}
