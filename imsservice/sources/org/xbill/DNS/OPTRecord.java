package org.xbill.DNS;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class OPTRecord extends Record {
    private static final long serialVersionUID = -6254521894809367938L;
    private List options;

    OPTRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new OPTRecord();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        if (dNSInput.remaining() > 0) {
            this.options = new ArrayList();
        }
        while (dNSInput.remaining() > 0) {
            this.options.add(EDNSOption.fromWire(dNSInput));
        }
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        List list = this.options;
        if (list != null) {
            stringBuffer.append(list);
            stringBuffer.append(" ");
        }
        stringBuffer.append(" ; payload ");
        stringBuffer.append(getPayloadSize());
        stringBuffer.append(", xrcode ");
        stringBuffer.append(getExtendedRcode());
        stringBuffer.append(", version ");
        stringBuffer.append(getVersion());
        stringBuffer.append(", flags ");
        stringBuffer.append(getFlags());
        return stringBuffer.toString();
    }

    public int getPayloadSize() {
        return this.dclass;
    }

    public int getExtendedRcode() {
        return (int) (this.ttl >>> 24);
    }

    public int getVersion() {
        return (int) ((this.ttl >>> 16) & 255);
    }

    public int getFlags() {
        return (int) (this.ttl & 65535);
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        List list = this.options;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((EDNSOption) it.next()).toWire(dNSOutput);
        }
    }

    @Override // org.xbill.DNS.Record
    public boolean equals(Object obj) {
        return super.equals(obj) && this.ttl == ((OPTRecord) obj).ttl;
    }
}
