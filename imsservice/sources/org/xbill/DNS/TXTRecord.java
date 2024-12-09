package org.xbill.DNS;

/* loaded from: classes.dex */
public class TXTRecord extends TXTBase {
    private static final long serialVersionUID = -5780785764284221342L;

    TXTRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new TXTRecord();
    }
}
