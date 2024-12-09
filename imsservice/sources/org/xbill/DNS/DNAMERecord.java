package org.xbill.DNS;

/* loaded from: classes.dex */
public class DNAMERecord extends SingleNameBase {
    private static final long serialVersionUID = 2670767677200844154L;

    DNAMERecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new DNAMERecord();
    }
}
