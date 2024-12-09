package org.xbill.DNS;

/* loaded from: classes.dex */
public class MGRecord extends SingleNameBase {
    private static final long serialVersionUID = -3980055550863644582L;

    MGRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new MGRecord();
    }
}
