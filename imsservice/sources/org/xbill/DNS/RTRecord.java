package org.xbill.DNS;

/* loaded from: classes.dex */
public class RTRecord extends U16NameBase {
    private static final long serialVersionUID = -3206215651648278098L;

    RTRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new RTRecord();
    }
}
