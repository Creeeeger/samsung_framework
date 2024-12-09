package javax.mail.internet;

import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ParameterList {
    private static boolean applehack = false;
    private static boolean decodeParameters = false;
    private static boolean decodeParametersStrict = false;
    private static boolean encodeParameters = false;
    private static final char[] hex;
    private String lastName;
    private Map list;
    private Set multisegmentNames;
    private Map slist;

    static {
        try {
            String property = System.getProperty("mail.mime.encodeparameters");
            boolean z = true;
            encodeParameters = property != null && property.equalsIgnoreCase(CloudMessageProviderContract.JsonData.TRUE);
            String property2 = System.getProperty("mail.mime.decodeparameters");
            decodeParameters = property2 != null && property2.equalsIgnoreCase(CloudMessageProviderContract.JsonData.TRUE);
            String property3 = System.getProperty("mail.mime.decodeparameters.strict");
            decodeParametersStrict = property3 != null && property3.equalsIgnoreCase(CloudMessageProviderContract.JsonData.TRUE);
            String property4 = System.getProperty("mail.mime.applefilenames");
            if (property4 == null || !property4.equalsIgnoreCase(CloudMessageProviderContract.JsonData.TRUE)) {
                z = false;
            }
            applehack = z;
        } catch (SecurityException unused) {
        }
        hex = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    private static class Value {
        String charset;
        String encodedValue;
        String value;

        private Value() {
        }

        /* synthetic */ Value(Value value) {
            this();
        }
    }

    private static class MultiValue extends ArrayList {
        String value;

        private MultiValue() {
        }

        /* synthetic */ MultiValue(MultiValue multiValue) {
            this();
        }
    }

    public ParameterList() {
        this.list = new LinkedHashMap();
        this.lastName = null;
        if (decodeParameters) {
            this.multisegmentNames = new HashSet();
            this.slist = new HashMap();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0124, code lost:
    
        throw new javax.mail.internet.ParseException("Expected ';', got \"" + r8.getValue() + com.sec.internal.ims.core.cmc.CmcConstants.E_NUM_STR_QUOTE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x002a, code lost:
    
        if (javax.mail.internet.ParameterList.decodeParameters == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x002c, code lost:
    
        combineMultisegmentNames(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0030, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ParameterList(java.lang.String r8) throws javax.mail.internet.ParseException {
        /*
            Method dump skipped, instructions count: 293
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.ParameterList.<init>(java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void putEncodedName(String str, String str2) throws ParseException {
        int indexOf = str.indexOf(42);
        if (indexOf < 0) {
            this.list.put(str, str2);
            return;
        }
        if (indexOf == str.length() - 1) {
            this.list.put(str.substring(0, indexOf), decodeValue(str2));
            return;
        }
        String substring = str.substring(0, indexOf);
        this.multisegmentNames.add(substring);
        this.list.put(substring, "");
        if (str.endsWith("*")) {
            Value value = new Value(null);
            value.encodedValue = str2;
            value.value = str2;
            str = str.substring(0, str.length() - 1);
            str2 = value;
        }
        this.slist.put(str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void combineMultisegmentNames(boolean r13) throws javax.mail.internet.ParseException {
        /*
            Method dump skipped, instructions count: 352
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.ParameterList.combineMultisegmentNames(boolean):void");
    }

    public String get(String str) {
        Object obj = this.list.get(str.trim().toLowerCase(Locale.ENGLISH));
        if (obj instanceof MultiValue) {
            return ((MultiValue) obj).value;
        }
        if (obj instanceof Value) {
            return ((Value) obj).value;
        }
        return (String) obj;
    }

    public void set(String str, String str2) {
        if (str == null && str2 != null && str2.equals("DONE")) {
            if (!decodeParameters || this.multisegmentNames.size() <= 0) {
                return;
            }
            try {
                combineMultisegmentNames(true);
                return;
            } catch (ParseException unused) {
                return;
            }
        }
        String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
        if (decodeParameters) {
            try {
                putEncodedName(lowerCase, str2);
                return;
            } catch (ParseException unused2) {
                this.list.put(lowerCase, str2);
                return;
            }
        }
        this.list.put(lowerCase, str2);
    }

    public String toString() {
        return toString(0);
    }

    public String toString(int i) {
        ToStringBuffer toStringBuffer = new ToStringBuffer(i);
        for (String str : this.list.keySet()) {
            Object obj = this.list.get(str);
            if (obj instanceof MultiValue) {
                MultiValue multiValue = (MultiValue) obj;
                String str2 = String.valueOf(str) + "*";
                for (int i2 = 0; i2 < multiValue.size(); i2++) {
                    Object obj2 = multiValue.get(i2);
                    if (obj2 instanceof Value) {
                        toStringBuffer.addNV(String.valueOf(str2) + i2 + "*", ((Value) obj2).encodedValue);
                    } else {
                        toStringBuffer.addNV(String.valueOf(str2) + i2, (String) obj2);
                    }
                }
            } else if (obj instanceof Value) {
                toStringBuffer.addNV(String.valueOf(str) + "*", ((Value) obj).encodedValue);
            } else {
                toStringBuffer.addNV(str, (String) obj);
            }
        }
        return toStringBuffer.toString();
    }

    private static class ToStringBuffer {
        private StringBuffer sb = new StringBuffer();
        private int used;

        public ToStringBuffer(int i) {
            this.used = i;
        }

        public void addNV(String str, String str2) {
            String quote = ParameterList.quote(str2);
            this.sb.append("; ");
            this.used += 2;
            if (this.used + str.length() + quote.length() + 1 > 76) {
                this.sb.append("\r\n\t");
                this.used = 8;
            }
            StringBuffer stringBuffer = this.sb;
            stringBuffer.append(str);
            stringBuffer.append('=');
            int length = this.used + str.length() + 1;
            this.used = length;
            if (length + quote.length() > 76) {
                String fold = MimeUtility.fold(this.used, quote);
                this.sb.append(fold);
                if (fold.lastIndexOf(10) >= 0) {
                    this.used += (fold.length() - r5) - 1;
                    return;
                } else {
                    this.used += fold.length();
                    return;
                }
            }
            this.sb.append(quote);
            this.used += quote.length();
        }

        public String toString() {
            return this.sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String quote(String str) {
        return MimeUtility.quote(str, "()<>@,;:\\\"\t []/?=");
    }

    private static Value decodeValue(String str) throws ParseException {
        int indexOf;
        Value value = new Value(null);
        value.encodedValue = str;
        value.value = str;
        try {
            indexOf = str.indexOf(39);
        } catch (UnsupportedEncodingException e) {
            if (decodeParametersStrict) {
                throw new ParseException(e.toString());
            }
        } catch (NumberFormatException e2) {
            if (decodeParametersStrict) {
                throw new ParseException(e2.toString());
            }
        } catch (StringIndexOutOfBoundsException e3) {
            if (decodeParametersStrict) {
                throw new ParseException(e3.toString());
            }
        }
        if (indexOf <= 0) {
            if (!decodeParametersStrict) {
                return value;
            }
            throw new ParseException("Missing charset in encoded value: " + str);
        }
        String substring = str.substring(0, indexOf);
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(39, i);
        if (indexOf2 < 0) {
            if (!decodeParametersStrict) {
                return value;
            }
            throw new ParseException("Missing language in encoded value: " + str);
        }
        str.substring(i, indexOf2);
        String substring2 = str.substring(indexOf2 + 1);
        value.charset = substring;
        value.value = decodeBytes(substring2, substring);
        return value;
    }

    private static String decodeBytes(String str, String str2) throws UnsupportedEncodingException {
        byte[] bArr = new byte[str.length()];
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '%') {
                charAt = (char) Integer.parseInt(str.substring(i + 1, i + 3), 16);
                i += 2;
            }
            bArr[i2] = (byte) charAt;
            i++;
            i2++;
        }
        return new String(bArr, 0, i2, MimeUtility.javaCharset(str2));
    }
}
