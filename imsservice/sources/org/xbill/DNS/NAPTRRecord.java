package org.xbill.DNS;

import java.io.IOException;

/* loaded from: classes.dex */
public class NAPTRRecord extends Record {
    private static final long serialVersionUID = 5191232392044947002L;
    private byte[] flags;
    private int order;
    private int preference;
    private byte[] regexp;
    private Name replacement;
    private byte[] service;

    NAPTRRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new NAPTRRecord();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.order = dNSInput.readU16();
        this.preference = dNSInput.readU16();
        this.flags = dNSInput.readCountedString();
        this.service = dNSInput.readCountedString();
        this.regexp = dNSInput.readCountedString();
        this.replacement = new Name(dNSInput);
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.order);
        stringBuffer.append(" ");
        stringBuffer.append(this.preference);
        stringBuffer.append(" ");
        stringBuffer.append(Record.byteArrayToString(this.flags, true));
        stringBuffer.append(" ");
        stringBuffer.append(Record.byteArrayToString(this.service, true));
        stringBuffer.append(" ");
        stringBuffer.append(Record.byteArrayToString(this.regexp, true));
        stringBuffer.append(" ");
        stringBuffer.append(this.replacement);
        return stringBuffer.toString();
    }

    public String getService() {
        return Record.byteArrayToString(this.service, false);
    }

    public Name getReplacement() {
        return this.replacement;
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeU16(this.order);
        dNSOutput.writeU16(this.preference);
        dNSOutput.writeCountedString(this.flags);
        dNSOutput.writeCountedString(this.service);
        dNSOutput.writeCountedString(this.regexp);
        this.replacement.toWire(dNSOutput, null, z);
    }
}
