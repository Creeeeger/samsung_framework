package org.xbill.DNS;

/* loaded from: classes.dex */
public class SPFRecord extends TXTBase {
    private static final long serialVersionUID = -2100754352801658722L;

    SPFRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new SPFRecord();
    }
}
