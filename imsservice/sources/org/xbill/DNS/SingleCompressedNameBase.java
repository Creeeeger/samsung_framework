package org.xbill.DNS;

/* loaded from: classes.dex */
abstract class SingleCompressedNameBase extends SingleNameBase {
    private static final long serialVersionUID = -236435396815460677L;

    protected SingleCompressedNameBase() {
    }

    @Override // org.xbill.DNS.SingleNameBase, org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        this.singleName.toWire(dNSOutput, compression, z);
    }
}
