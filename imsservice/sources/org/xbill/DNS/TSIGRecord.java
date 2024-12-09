package org.xbill.DNS;

import java.io.IOException;
import java.util.Date;
import org.xbill.DNS.utils.base64;

/* loaded from: classes.dex */
public class TSIGRecord extends Record {
    private static final long serialVersionUID = -88820909016649306L;
    private Name alg;
    private int error;
    private int fudge;
    private int originalID;
    private byte[] other;
    private byte[] signature;
    private Date timeSigned;

    TSIGRecord() {
    }

    @Override // org.xbill.DNS.Record
    Record getObject() {
        return new TSIGRecord();
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.alg = new Name(dNSInput);
        this.timeSigned = new Date(((dNSInput.readU16() << 32) + dNSInput.readU32()) * 1000);
        this.fudge = dNSInput.readU16();
        this.signature = dNSInput.readByteArray(dNSInput.readU16());
        this.originalID = dNSInput.readU16();
        this.error = dNSInput.readU16();
        int readU16 = dNSInput.readU16();
        if (readU16 > 0) {
            this.other = dNSInput.readByteArray(readU16);
        } else {
            this.other = null;
        }
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.alg);
        stringBuffer.append(" ");
        if (Options.check("multiline")) {
            stringBuffer.append("(\n\t");
        }
        stringBuffer.append(this.timeSigned.getTime() / 1000);
        stringBuffer.append(" ");
        stringBuffer.append(this.fudge);
        stringBuffer.append(" ");
        stringBuffer.append(this.signature.length);
        if (Options.check("multiline")) {
            stringBuffer.append("\n");
            stringBuffer.append(base64.formatString(this.signature, 64, "\t", false));
        } else {
            stringBuffer.append(" ");
            stringBuffer.append(base64.toString(this.signature));
        }
        stringBuffer.append(" ");
        stringBuffer.append(Rcode.TSIGstring(this.error));
        stringBuffer.append(" ");
        byte[] bArr = this.other;
        if (bArr == null) {
            stringBuffer.append(0);
        } else {
            stringBuffer.append(bArr.length);
            if (Options.check("multiline")) {
                stringBuffer.append("\n\n\n\t");
            } else {
                stringBuffer.append(" ");
            }
            if (this.error == 18) {
                if (this.other.length != 6) {
                    stringBuffer.append("<invalid BADTIME other data>");
                } else {
                    stringBuffer.append("<server time: ");
                    stringBuffer.append(new Date((((r10[0] & 255) << 40) + ((r10[1] & 255) << 32) + ((r10[2] & 255) << 24) + ((r10[3] & 255) << 16) + ((r10[4] & 255) << 8) + (r10[5] & 255)) * 1000));
                    stringBuffer.append(">");
                }
            } else {
                stringBuffer.append("<");
                stringBuffer.append(base64.toString(this.other));
                stringBuffer.append(">");
            }
        }
        if (Options.check("multiline")) {
            stringBuffer.append(" )");
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        this.alg.toWire(dNSOutput, null, z);
        long time = this.timeSigned.getTime() / 1000;
        dNSOutput.writeU16((int) (time >> 32));
        dNSOutput.writeU32(time & 4294967295L);
        dNSOutput.writeU16(this.fudge);
        dNSOutput.writeU16(this.signature.length);
        dNSOutput.writeByteArray(this.signature);
        dNSOutput.writeU16(this.originalID);
        dNSOutput.writeU16(this.error);
        byte[] bArr = this.other;
        if (bArr != null) {
            dNSOutput.writeU16(bArr.length);
            dNSOutput.writeByteArray(this.other);
        } else {
            dNSOutput.writeU16(0);
        }
    }
}
