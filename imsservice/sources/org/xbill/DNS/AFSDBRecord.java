package org.xbill.DNS;

/* loaded from: classes.dex */
public class AFSDBRecord extends U16NameBase {
    private static final long serialVersionUID = 3034379930729102437L;

    AFSDBRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new AFSDBRecord();
    }
}
