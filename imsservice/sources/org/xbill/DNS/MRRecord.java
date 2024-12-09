package org.xbill.DNS;

/* loaded from: classes.dex */
public class MRRecord extends SingleNameBase {
    private static final long serialVersionUID = -5617939094209927533L;

    MRRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new MRRecord();
    }
}
