package org.xbill.DNS;

/* loaded from: classes.dex */
public class SIGRecord extends SIGBase {
    private static final long serialVersionUID = 4963556060953589058L;

    SIGRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new SIGRecord();
    }
}
