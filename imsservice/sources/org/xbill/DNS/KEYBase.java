package org.xbill.DNS;

import java.io.IOException;
import java.security.PublicKey;
import org.xbill.DNS.utils.base64;

/* loaded from: classes.dex */
abstract class KEYBase extends Record {
    private static final long serialVersionUID = 3469321722693285454L;
    protected int alg;
    protected int flags;
    protected byte[] key;
    protected int proto;
    protected int footprint = -1;
    protected PublicKey publicKey = null;

    protected KEYBase() {
    }

    @Override // org.xbill.DNS.Record
    void rrFromWire(DNSInput dNSInput) throws IOException {
        this.flags = dNSInput.readU16();
        this.proto = dNSInput.readU8();
        this.alg = dNSInput.readU8();
        if (dNSInput.remaining() > 0) {
            this.key = dNSInput.readByteArray();
        }
    }

    @Override // org.xbill.DNS.Record
    String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.flags);
        stringBuffer.append(" ");
        stringBuffer.append(this.proto);
        stringBuffer.append(" ");
        stringBuffer.append(this.alg);
        if (this.key != null) {
            if (Options.check("multiline")) {
                stringBuffer.append(" (\n");
                stringBuffer.append(base64.formatString(this.key, 64, "\t", true));
                stringBuffer.append(" ; key_tag = ");
                stringBuffer.append(getFootprint());
            } else {
                stringBuffer.append(" ");
                stringBuffer.append(base64.toString(this.key));
            }
        }
        return stringBuffer.toString();
    }

    public int getFootprint() {
        int i;
        int i2;
        int i3 = this.footprint;
        if (i3 >= 0) {
            return i3;
        }
        DNSOutput dNSOutput = new DNSOutput();
        int i4 = 0;
        rrToWire(dNSOutput, null, false);
        byte[] byteArray = dNSOutput.toByteArray();
        if (this.alg == 1) {
            int i5 = byteArray[byteArray.length - 3] & 255;
            i2 = byteArray[byteArray.length - 2] & 255;
            i = i5 << 8;
        } else {
            i = 0;
            while (i4 < byteArray.length - 1) {
                i += ((byteArray[i4] & 255) << 8) + (byteArray[i4 + 1] & 255);
                i4 += 2;
            }
            if (i4 < byteArray.length) {
                i += (byteArray[i4] & 255) << 8;
            }
            i2 = (i >> 16) & 65535;
        }
        int i6 = (i + i2) & 65535;
        this.footprint = i6;
        return i6;
    }

    @Override // org.xbill.DNS.Record
    void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z) {
        dNSOutput.writeU16(this.flags);
        dNSOutput.writeU8(this.proto);
        dNSOutput.writeU8(this.alg);
        byte[] bArr = this.key;
        if (bArr != null) {
            dNSOutput.writeByteArray(bArr);
        }
    }
}
