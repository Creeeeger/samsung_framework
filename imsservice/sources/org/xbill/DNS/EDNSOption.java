package org.xbill.DNS;

import com.sec.internal.interfaces.ims.config.IConfigModule;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class EDNSOption {
    private final int code;

    abstract void optionFromWire(DNSInput dNSInput) throws IOException;

    abstract String optionToString();

    abstract void optionToWire(DNSOutput dNSOutput);

    public static class Code {
        private static Mnemonic codes;

        static {
            Mnemonic mnemonic = new Mnemonic("EDNS Option Codes", 2);
            codes = mnemonic;
            mnemonic.setMaximum(65535);
            codes.setPrefix(IConfigModule.KEY_OMCNW_CODE);
            codes.setNumericAllowed(true);
            codes.add(3, "NSID");
            codes.add(8, "CLIENT_SUBNET");
        }

        public static String string(int i) {
            return codes.getText(i);
        }
    }

    public EDNSOption(int i) {
        this.code = Record.checkU16("code", i);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        stringBuffer.append(Code.string(this.code));
        stringBuffer.append(": ");
        stringBuffer.append(optionToString());
        stringBuffer.append("}");
        return stringBuffer.toString();
    }

    byte[] getData() {
        DNSOutput dNSOutput = new DNSOutput();
        optionToWire(dNSOutput);
        return dNSOutput.toByteArray();
    }

    static EDNSOption fromWire(DNSInput dNSInput) throws IOException {
        EDNSOption nSIDOption;
        int readU16 = dNSInput.readU16();
        int readU162 = dNSInput.readU16();
        if (dNSInput.remaining() < readU162) {
            throw new WireParseException("truncated option");
        }
        int saveActive = dNSInput.saveActive();
        dNSInput.setActive(readU162);
        if (readU16 == 3) {
            nSIDOption = new NSIDOption();
        } else if (readU16 == 8) {
            nSIDOption = new ClientSubnetOption();
        } else {
            nSIDOption = new GenericEDNSOption(readU16);
        }
        nSIDOption.optionFromWire(dNSInput);
        dNSInput.restoreActive(saveActive);
        return nSIDOption;
    }

    void toWire(DNSOutput dNSOutput) {
        dNSOutput.writeU16(this.code);
        int current = dNSOutput.current();
        dNSOutput.writeU16(0);
        optionToWire(dNSOutput);
        dNSOutput.writeU16At((dNSOutput.current() - current) - 2, current);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof EDNSOption)) {
            return false;
        }
        EDNSOption eDNSOption = (EDNSOption) obj;
        if (this.code != eDNSOption.code) {
            return false;
        }
        return Arrays.equals(getData(), eDNSOption.getData());
    }

    public int hashCode() {
        int i = 0;
        for (byte b : getData()) {
            i += (i << 3) + (b & 255);
        }
        return i;
    }
}
