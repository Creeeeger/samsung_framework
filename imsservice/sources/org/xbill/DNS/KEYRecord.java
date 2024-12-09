package org.xbill.DNS;

/* loaded from: classes.dex */
public class KEYRecord extends KEYBase {
    private static final long serialVersionUID = 6385613447571488906L;

    KEYRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new KEYRecord();
    }
}
