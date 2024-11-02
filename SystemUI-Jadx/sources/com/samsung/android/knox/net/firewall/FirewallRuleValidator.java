package com.samsung.android.knox.net.firewall;

import android.text.TextUtils;
import android.util.Patterns;
import com.samsung.android.knox.AppIdentity;
import com.samsung.android.knox.net.firewall.Firewall;
import com.samsung.android.knox.net.firewall.FirewallResponse;
import com.samsung.android.knox.net.firewall.FirewallRule;
import com.sec.ims.configuration.DATA;
import java.util.regex.Pattern;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class FirewallRuleValidator {
    public static final String ADDRESS = "address";
    public static final String APP_IDENTITY = "app identity";
    public static final String DIRECTION = "direction";
    public static final Pattern INTERFACE_REGEX = Pattern.compile("[a-z_]{2,}([0-9]*|\\+?)$");
    public static final String NETWORK_INTERFACE = "network interface";
    public static final String PARAMETERS = "Parameter(s): ";
    public static final String PORT_LOCATION = "port location";
    public static final String PORT_NUMBER = "port number";
    public static final String PROTOCOL = "protocol";
    public static final int SIZE_IPV4_ADDRESS = 4;
    public static final int SIZE_IPV6_ADDRESS = 16;
    public static final int SIZE_SHORT_INT = 2;
    public static final String SOURCE_ADDRESS = "source address";
    public static final String SOURCE_PORT_NUMBER = "source port number";
    public static final String TARGET_IP = "target IP";
    public static final String TARGET_PORT_NUMBER = "target port number";

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.samsung.android.knox.net.firewall.FirewallRuleValidator$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType;

        static {
            int[] iArr = new int[FirewallRule.RuleType.values().length];
            $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType = iArr;
            try {
                iArr[FirewallRule.RuleType.ALLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType[FirewallRule.RuleType.DENY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType[FirewallRule.RuleType.REDIRECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType[FirewallRule.RuleType.REDIRECT_EXCEPTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static long convertFromHexToInt(String str) {
        return Long.parseLong(str, 16);
    }

    public static String convertIpv6ToCompleteForm(String str) {
        if (str != null && str.contains("::")) {
            String[] split = str.split("::");
            int i = 0;
            if (split.length == 1) {
                if (str.charAt(0) == ':') {
                    String[] split2 = split[0].split(":");
                    int length = 8 - split2.length;
                    StringBuilder sb = new StringBuilder();
                    while (i < length) {
                        sb.append("0:");
                        i++;
                    }
                    for (int i2 = length; i2 < 8; i2++) {
                        sb.append(split2[i2 - length]);
                        if (i2 != 7) {
                            sb.append(":");
                        }
                    }
                    return sb.toString();
                }
                String[] split3 = split[0].split(":");
                int length2 = 8 - split3.length;
                StringBuilder sb2 = new StringBuilder();
                while (i < length2) {
                    sb2.append(split3[i] + ":");
                    i++;
                }
                while (length2 < 8) {
                    sb2.append(DATA.DM_FIELD_INDEX.PCSCF_DOMAIN);
                    if (length2 != 7) {
                        sb2.append(":");
                    }
                    length2++;
                }
                return sb2.toString();
            }
            if (split.length == 2) {
                String[] split4 = split[0].split(":");
                String[] split5 = split[1].split(":");
                int length3 = (8 - split4.length) - split5.length;
                StringBuilder sb3 = new StringBuilder();
                while (i < split4.length) {
                    sb3.append(split4[i] + ":");
                    i++;
                }
                for (int length4 = split4.length; length4 < split4.length + length3; length4++) {
                    sb3.append("0:");
                }
                for (int length5 = split4.length + length3; length5 < 8; length5++) {
                    sb3.append(split5[(length5 - split4.length) - length3]);
                    if (length5 != 7) {
                        sb3.append(":");
                    }
                }
                return sb3.toString();
            }
            return null;
        }
        return str;
    }

    public static boolean isIpv4MappedAddress(byte[] bArr) {
        if (bArr != null && bArr.length >= 16) {
            for (int i = 0; i < 10; i++) {
                if (bArr[i] != 0) {
                    return false;
                }
            }
            if (bArr[10] == -1 && bArr[11] == -1) {
                return true;
            }
        }
        return false;
    }

    public static byte[] translateIpv4MappedAddress(byte[] bArr) {
        if (isIpv4MappedAddress(bArr)) {
            byte[] bArr2 = new byte[4];
            System.arraycopy(bArr, 12, bArr2, 0, 4);
            return bArr2;
        }
        return null;
    }

    public static byte[] translateIpv4TextualAddress(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        byte[] bArr = new byte[4];
        String[] split = str.split("\\.", -1);
        try {
            int length = split.length;
            int i = 0;
            try {
                if (length != 1) {
                    if (length != 2) {
                        if (length != 3) {
                            if (length != 4) {
                                return null;
                            }
                            while (i < 4) {
                                long parseInt = Integer.parseInt(split[i]);
                                if (parseInt >= 0 && parseInt <= 255) {
                                    bArr[i] = (byte) (parseInt & 255);
                                    i++;
                                }
                                return null;
                            }
                        }
                        while (i < 2) {
                            long parseInt2 = Integer.parseInt(split[i]);
                            if (parseInt2 >= 0 && parseInt2 <= 255) {
                                bArr[i] = (byte) (parseInt2 & 255);
                                i++;
                            }
                            return null;
                        }
                        long parseInt3 = Integer.parseInt(split[2]);
                        if (parseInt3 >= 0 && parseInt3 <= 65535) {
                            bArr[2] = (byte) ((parseInt3 >> 8) & 255);
                            bArr[3] = (byte) (parseInt3 & 255);
                        }
                        return null;
                        return bArr;
                    }
                    long parseInt4 = Integer.parseInt(split[0]);
                    if (parseInt4 >= 0 && parseInt4 <= 255) {
                        bArr[0] = (byte) (parseInt4 & 255);
                        long parseInt5 = Integer.parseInt(split[1]);
                        if (parseInt5 >= 0 && parseInt5 <= 16777215) {
                            bArr[1] = (byte) ((parseInt5 >> 16) & 255);
                            bArr[2] = (byte) (((parseInt5 & 65535) >> 8) & 255);
                            bArr[3] = (byte) (parseInt5 & 255);
                        }
                        return null;
                    }
                    return null;
                }
                long parseLong = Long.parseLong(split[0]);
                if (parseLong >= 0 && parseLong <= 4294967295L) {
                    bArr[0] = (byte) ((parseLong >> 24) & 255);
                    bArr[1] = (byte) (((16777215 & parseLong) >> 16) & 255);
                    bArr[2] = (byte) (((parseLong & 65535) >> 8) & 255);
                    bArr[3] = (byte) (parseLong & 255);
                }
                return null;
                return bArr;
            } catch (NumberFormatException unused) {
                return null;
            }
        } catch (NumberFormatException unused2) {
            return null;
        }
    }

    public static boolean validadeIpv4Range(String str) {
        if (str != null && str.contains("-")) {
            String[] split = str.split("-");
            if (split.length == 2 && validateIpv4Address(split[0]) && validateIpv4Address(split[1])) {
                String[] split2 = split[0].split("\\.");
                String[] split3 = split[1].split("\\.");
                if (split2 != null && split2.length == 4 && split3 != null && split3.length == 4) {
                    for (int i = 0; i < 4; i++) {
                        try {
                            int parseInt = Integer.parseInt(split2[i]);
                            int parseInt2 = Integer.parseInt(split3[i]);
                            if (parseInt > parseInt2) {
                                return false;
                            }
                            if (parseInt < parseInt2) {
                                return true;
                            }
                        } catch (NumberFormatException unused) {
                            return false;
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean validadeIpv6Range(String str) {
        if (str != null && str.contains("-")) {
            String[] split = str.split("-");
            if (split.length == 2 && validateIpv6Address(split[0]) && validateIpv6Address(split[1])) {
                String[] split2 = str.split("-");
                if (split2[0].contains("::")) {
                    split2[0] = convertIpv6ToCompleteForm(split2[0]);
                }
                if (split2[1].contains("::")) {
                    split2[1] = convertIpv6ToCompleteForm(split2[1]);
                }
                String[] split3 = split2[0].split(":");
                String[] split4 = split2[1].split(":");
                if (split3 != null && split3.length == 8 && split4 != null && split4.length == 8) {
                    for (int i = 0; i < 8; i++) {
                        long convertFromHexToInt = convertFromHexToInt(split3[i]);
                        long convertFromHexToInt2 = convertFromHexToInt(split4[i]);
                        if (convertFromHexToInt > convertFromHexToInt2) {
                            return false;
                        }
                        if (convertFromHexToInt < convertFromHexToInt2) {
                            return true;
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean validadePortNumberRange(String str) {
        if (str != null && str.contains("-")) {
            String[] split = str.split("-");
            if (split.length == 2 && validatePortNumber(split[0]) && validatePortNumber(split[1])) {
                try {
                    if (Integer.parseInt(split[0]) > Integer.parseInt(split[1])) {
                        return false;
                    }
                    return true;
                } catch (NumberFormatException unused) {
                }
            }
        }
        return false;
    }

    public static FirewallResponse validateAllowRule(FirewallRule firewallRule) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        if (firewallRule == null) {
            return new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.OPERATION_NOT_PERMITTED_ERROR, FirewallResponseMessages.RULE_IS_NULL);
        }
        if (!validateUidRule(firewallRule)) {
            return new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.OPERATION_NOT_PERMITTED_ERROR, sb.toString());
        }
        if (!validateForwardConstraints(firewallRule)) {
            return new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.OPERATION_NOT_PERMITTED_ERROR, sb.toString());
        }
        Firewall.AddressType addressType = firewallRule.mAddressType;
        String str = firewallRule.mAddress;
        boolean z2 = false;
        if (addressType.equals(Firewall.AddressType.IPV4)) {
            if (!validadeIpv4Range(str) && !validateIpv4Address(str) && !"*".equals(str)) {
                sb.append("Parameter(s): address");
                z = false;
            }
            z = true;
        } else {
            if (!validadeIpv6Range(str) && !validateIpv6Address(str) && !"*".equals(str)) {
                sb.append("Parameter(s): address");
                z = false;
            }
            z = true;
        }
        if (!validatePortNumber(firewallRule.mPortNumber) && !validadePortNumberRange(firewallRule.mPortNumber) && !"*".equals(firewallRule.mPortNumber)) {
            if (z) {
                sb.append("Parameter(s): port number");
            } else {
                sb.append(", port number");
            }
            z = false;
        }
        if (firewallRule.getPortLocation() == null) {
            if (z) {
                sb.append("Parameter(s): port location");
            } else {
                sb.append(", port location");
            }
            z = false;
        }
        AppIdentity appIdentity = firewallRule.mAppIdentity;
        if (appIdentity == null || appIdentity.getPackageName() == null || (!TextUtils.isEmpty(firewallRule.mAppIdentity.getPackageName()) && !validatePackageName(firewallRule.mAppIdentity.getPackageName()))) {
            if (z) {
                sb.append("Parameter(s): app identity");
            } else {
                sb.append(", app identity");
            }
            z = false;
        }
        if ((firewallRule.mStrNetworkInterface != null && !validateInterfaceName(firewallRule)) || firewallRule.mNetworkInterface == null) {
            if (z) {
                sb.append("Parameter(s): network interface");
            } else {
                sb.append(", network interface");
            }
            z = false;
        }
        if (firewallRule.mProtocol == null) {
            if (z) {
                sb.append("Parameter(s): protocol");
            } else {
                sb.append(", protocol");
            }
            z = false;
        }
        if (firewallRule.getDirection() == null) {
            if (z) {
                sb.append("Parameter(s): direction");
            } else {
                sb.append(", direction");
            }
        } else {
            z2 = z;
        }
        if (!z2) {
            sb.append(FirewallResponseMessages.IS_ARE_INVALID);
            return new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.INVALID_PARAMETER_ERROR, sb.toString());
        }
        return new FirewallResponse(FirewallResponse.Result.SUCCESS, FirewallResponse.ErrorCode.NO_ERROR, FirewallResponseMessages.VALIDATION_SUCCESS);
    }

    public static FirewallResponse validateDenyRule(FirewallRule firewallRule) {
        return validateAllowRule(firewallRule);
    }

    public static FirewallResponse validateFirewallRule(FirewallRule firewallRule) {
        if (firewallRule == null) {
            return new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.OPERATION_NOT_PERMITTED_ERROR, FirewallResponseMessages.RULE_IS_NULL);
        }
        int i = AnonymousClass1.$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType[firewallRule.mRuleType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.UNEXPECTED_ERROR, FirewallResponseMessages.VALIDATION_FAILED);
                    }
                    return validateRedirectExceptionRule(firewallRule);
                }
                return validateRedirectRule(firewallRule);
            }
            return validateAllowRule(firewallRule);
        }
        return validateAllowRule(firewallRule);
    }

    public static boolean validateForwardConstraints(FirewallRule firewallRule) {
        Firewall.NetworkInterface networkInterface;
        if (!Firewall.Direction.FORWARD.equals(firewallRule.getDirection())) {
            return true;
        }
        if (firewallRule.getPortLocation() != null && Firewall.PortLocation.ALL.equals(firewallRule.getPortLocation()) && (networkInterface = firewallRule.mNetworkInterface) != null && Firewall.NetworkInterface.ALL_NETWORKS.equals(networkInterface) && TextUtils.isEmpty(firewallRule.mStrNetworkInterface)) {
            return true;
        }
        return false;
    }

    public static boolean validateHostName(String str) {
        boolean z;
        if (str == null) {
            return false;
        }
        if (str.equals("*")) {
            return true;
        }
        if (str.length() > 255) {
            return false;
        }
        String[] split = str.split("\\.");
        for (int i = 0; i < split[0].length(); i++) {
            char charAt = split[0].charAt(i);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                z = true;
                break;
            }
        }
        z = false;
        if (!z) {
            return false;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (str.charAt(i3) == '.') {
                i2++;
            }
        }
        if (i2 >= split.length) {
            return false;
        }
        for (String str2 : split) {
            if (str2.length() > 63) {
                return false;
            }
        }
        for (String str3 : split) {
            if (!str3.matches("^[A-Za-z0-9-]+$") || str3.charAt(0) == '-' || str3.charAt(str3.length() - 1) == '-') {
                return false;
            }
        }
        return true;
    }

    public static boolean validateInterfaceName(FirewallRule firewallRule) {
        String str = firewallRule.mStrNetworkInterface;
        if (str == null) {
            return false;
        }
        return INTERFACE_REGEX.matcher(str).matches();
    }

    public static boolean validateIpv4Address(String str) {
        if (translateIpv4TextualAddress(str) != null) {
            return Patterns.IP_ADDRESS.matcher(str).matches();
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ab, code lost:
    
        if (r9 == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00af, code lost:
    
        if ((r10 + 2) <= 16) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b1, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b2, code lost:
    
        r14 = r10 + 1;
        r2[r10] = (byte) ((r8 >> 8) & 255);
        r10 = r14 + 1;
        r2[r14] = (byte) (r8 & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00c2, code lost:
    
        if (r11 == (-1)) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c4, code lost:
    
        r14 = r10 - r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c6, code lost:
    
        if (r10 != 16) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c8, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00c9, code lost:
    
        r3 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ca, code lost:
    
        if (r3 > r14) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00cc, code lost:
    
        r6 = (r11 + r14) - r3;
        r2[16 - r3] = r2[r6];
        r2[r6] = 0;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00da, code lost:
    
        r10 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00db, code lost:
    
        if (r10 == 16) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00dd, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00de, code lost:
    
        translateIpv4MappedAddress(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00e1, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean validateIpv6Address(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knox.net.firewall.FirewallRuleValidator.validateIpv6Address(java.lang.String):boolean");
    }

    public static boolean validatePackageName(String str) {
        if (str == null) {
            return false;
        }
        if ("*".equals(str)) {
            return true;
        }
        String[] split = str.split("\\.");
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '.') {
                i++;
            }
        }
        if (i >= split.length) {
            return false;
        }
        for (String str2 : split) {
            if (!str2.matches("^[A-Za-z0-9_]+$") || str2.charAt(0) == '_' || (str2.charAt(0) >= '0' && str2.charAt(0) <= '9')) {
                return false;
            }
        }
        return true;
    }

    public static boolean validatePortNumber(String str) {
        int i;
        if (str == null) {
            return false;
        }
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            i = -1;
        }
        if (i < 0 || i > 65535) {
            return false;
        }
        return true;
    }

    public static FirewallResponse validateRedirectExceptionRule(FirewallRule firewallRule) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        if (firewallRule == null) {
            return new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.OPERATION_NOT_PERMITTED_ERROR, FirewallResponseMessages.RULE_IS_NULL);
        }
        Firewall.AddressType addressType = firewallRule.mAddressType;
        String str = firewallRule.mAddress;
        boolean z2 = false;
        if (addressType.equals(Firewall.AddressType.IPV4)) {
            if (!validadeIpv4Range(str) && !validateIpv4Address(str) && !"*".equals(str)) {
                sb.append("Parameter(s): address");
                z = false;
            }
            z = true;
        } else {
            if (!validadeIpv6Range(str) && !validateIpv6Address(str) && !"*".equals(str)) {
                sb.append("Parameter(s): address");
                z = false;
            }
            z = true;
        }
        if (!validatePortNumber(firewallRule.mPortNumber) && !validadePortNumberRange(firewallRule.mPortNumber) && !"*".equals(firewallRule.mPortNumber)) {
            if (z) {
                sb.append("Parameter(s): port number");
            } else {
                sb.append(", port number");
            }
            z = false;
        }
        AppIdentity appIdentity = firewallRule.mAppIdentity;
        if (appIdentity == null || appIdentity.getPackageName() == null || (!TextUtils.isEmpty(firewallRule.mAppIdentity.getPackageName()) && !validatePackageName(firewallRule.mAppIdentity.getPackageName()))) {
            if (z) {
                sb.append("Parameter(s): app identity");
            } else {
                sb.append(", app identity");
            }
            z = false;
        }
        if (firewallRule.mProtocol == null) {
            if (z) {
                sb.append("Parameter(s): protocol");
            } else {
                sb.append(", protocol");
            }
            z = false;
        }
        if ((firewallRule.mStrNetworkInterface != null && !validateInterfaceName(firewallRule)) || firewallRule.mNetworkInterface == null) {
            if (z) {
                sb.append("Parameter(s): network interface");
            } else {
                sb.append(", network interface");
            }
        } else {
            z2 = z;
        }
        if (!z2) {
            sb.append(FirewallResponseMessages.IS_ARE_INVALID);
            return new FirewallResponse(FirewallResponse.Result.FAILED, FirewallResponse.ErrorCode.INVALID_PARAMETER_ERROR, sb.toString());
        }
        return new FirewallResponse(FirewallResponse.Result.SUCCESS, FirewallResponse.ErrorCode.NO_ERROR, FirewallResponseMessages.VALIDATION_SUCCESS);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.samsung.android.knox.net.firewall.FirewallResponse validateRedirectRule(com.samsung.android.knox.net.firewall.FirewallRule r8) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knox.net.firewall.FirewallRuleValidator.validateRedirectRule(com.samsung.android.knox.net.firewall.FirewallRule):com.samsung.android.knox.net.firewall.FirewallResponse");
    }

    public static boolean validateUidRule(FirewallRule firewallRule) {
        if ((Firewall.Direction.INPUT.equals(firewallRule.getDirection()) || Firewall.Direction.FORWARD.equals(firewallRule.getDirection())) && !"*".equals(firewallRule.mAppIdentity.getPackageName())) {
            return false;
        }
        return true;
    }
}
