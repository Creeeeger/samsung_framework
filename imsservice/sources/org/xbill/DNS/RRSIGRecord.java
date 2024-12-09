package org.xbill.DNS;

/* loaded from: classes.dex */
public class RRSIGRecord extends SIGBase {
    private static final long serialVersionUID = -2609150673537226317L;

    RRSIGRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new RRSIGRecord();
    }
}
