package org.xbill.DNS;

import java.io.IOException;
import org.xbill.DNS.utils.base64;

/* loaded from: classes.dex */
public class OPENPGPKEYRecord extends Record {
    private static final long serialVersionUID = -1277262990243423062L;
    private byte[] cert;

    OPENPGPKEYRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new OPENPGPKEYRecord();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.cert = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.cert != null) {
            if (Options.check("multiline")) {
                stringBuffer.append("(\n");
                stringBuffer.append(base64.formatString(this.cert, 64, "\t", true));
            } else {
                stringBuffer.append(base64.toString(this.cert));
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeByteArray(this.cert);
    }
}
