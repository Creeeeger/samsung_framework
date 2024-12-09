package org.xbill.DNS;

/* loaded from: classes.dex */
public class NSRecord extends SingleCompressedNameBase {
    private static final long serialVersionUID = 487170758138268838L;

    NSRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new NSRecord();
    }
}
