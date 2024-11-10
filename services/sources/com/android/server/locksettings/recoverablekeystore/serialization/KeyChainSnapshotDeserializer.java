package com.android.server.locksettings.recoverablekeystore.serialization;

import android.security.keystore.recovery.KeyChainSnapshot;
import android.util.Base64;
import com.android.modules.utils.TypedXmlPullParser;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.cert.CertPath;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public abstract class KeyChainSnapshotDeserializer {
    public static KeyChainSnapshot deserialize(InputStream inputStream) {
        try {
            return deserializeInternal(inputStream);
        } catch (XmlPullParserException e) {
            throw new KeyChainSnapshotParserException("Malformed KeyChainSnapshot XML", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x007d, code lost:
    
        if (r3.equals("thmCertPath") == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.security.keystore.recovery.KeyChainSnapshot deserializeInternal(java.io.InputStream r13) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotDeserializer.deserializeInternal(java.io.InputStream):android.security.keystore.recovery.KeyChainSnapshot");
    }

    public static List readWrappedApplicationKeys(TypedXmlPullParser typedXmlPullParser) {
        typedXmlPullParser.require(2, KeyChainSnapshotSchema.NAMESPACE, "applicationKeysList");
        ArrayList arrayList = new ArrayList();
        while (typedXmlPullParser.next() != 3) {
            if (typedXmlPullParser.getEventType() == 2) {
                arrayList.add(readWrappedApplicationKey(typedXmlPullParser));
            }
        }
        typedXmlPullParser.require(3, KeyChainSnapshotSchema.NAMESPACE, "applicationKeysList");
        return arrayList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004d, code lost:
    
        switch(r8) {
            case 0: goto L41;
            case 1: goto L40;
            case 2: goto L42;
            default: goto L39;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
    
        throw new com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException(java.lang.String.format(java.util.Locale.US, "Unexpected tag %s in wrappedApplicationKey", r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006a, code lost:
    
        r0.setEncryptedKeyMaterial(readBlobTag(r9, "keyMaterial"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
    
        r0.setMetadata(readBlobTag(r9, "keyMetadata"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0062, code lost:
    
        r0.setAlias(readStringTag(r9, "alias"));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.security.keystore.recovery.WrappedApplicationKey readWrappedApplicationKey(com.android.modules.utils.TypedXmlPullParser r9) {
        /*
            java.lang.String r0 = com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotSchema.NAMESPACE
            r1 = 2
            java.lang.String r2 = "applicationKey"
            r9.require(r1, r0, r2)
            android.security.keystore.recovery.WrappedApplicationKey$Builder r0 = new android.security.keystore.recovery.WrappedApplicationKey$Builder
            r0.<init>()
        Ld:
            int r3 = r9.next()
            r4 = 3
            if (r3 == r4) goto L7a
            int r3 = r9.getEventType()
            if (r3 == r1) goto L1b
            goto Ld
        L1b:
            java.lang.String r3 = r9.getName()
            r3.hashCode()
            int r4 = r3.hashCode()
            java.lang.String r5 = "alias"
            java.lang.String r6 = "keyMaterial"
            java.lang.String r7 = "keyMetadata"
            r8 = -1
            switch(r4) {
                case -1712279890: goto L45;
                case -963209050: goto L3c;
                case 92902992: goto L33;
                default: goto L32;
            }
        L32:
            goto L4d
        L33:
            boolean r4 = r3.equals(r5)
            if (r4 != 0) goto L3a
            goto L4d
        L3a:
            r8 = r1
            goto L4d
        L3c:
            boolean r4 = r3.equals(r6)
            if (r4 != 0) goto L43
            goto L4d
        L43:
            r8 = 1
            goto L4d
        L45:
            boolean r4 = r3.equals(r7)
            if (r4 != 0) goto L4c
            goto L4d
        L4c:
            r8 = 0
        L4d:
            switch(r8) {
                case 0: goto L72;
                case 1: goto L6a;
                case 2: goto L62;
                default: goto L50;
            }
        L50:
            com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException r9 = new com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r1 = "Unexpected tag %s in wrappedApplicationKey"
            java.lang.Object[] r2 = new java.lang.Object[]{r3}
            java.lang.String r0 = java.lang.String.format(r0, r1, r2)
            r9.<init>(r0)
            throw r9
        L62:
            java.lang.String r3 = readStringTag(r9, r5)
            r0.setAlias(r3)
            goto Ld
        L6a:
            byte[] r3 = readBlobTag(r9, r6)
            r0.setEncryptedKeyMaterial(r3)
            goto Ld
        L72:
            byte[] r3 = readBlobTag(r9, r7)
            r0.setMetadata(r3)
            goto Ld
        L7a:
            java.lang.String r1 = com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotSchema.NAMESPACE
            r9.require(r4, r1, r2)
            android.security.keystore.recovery.WrappedApplicationKey r9 = r0.build()     // Catch: java.lang.NullPointerException -> L84
            return r9
        L84:
            r9 = move-exception
            com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException r0 = new com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException
            java.lang.String r1 = "Failed to build WrappedApplicationKey"
            r0.<init>(r1, r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotDeserializer.readWrappedApplicationKey(com.android.modules.utils.TypedXmlPullParser):android.security.keystore.recovery.WrappedApplicationKey");
    }

    public static List readKeyChainProtectionParamsList(TypedXmlPullParser typedXmlPullParser) {
        typedXmlPullParser.require(2, KeyChainSnapshotSchema.NAMESPACE, "keyChainProtectionParamsList");
        ArrayList arrayList = new ArrayList();
        while (typedXmlPullParser.next() != 3) {
            if (typedXmlPullParser.getEventType() == 2) {
                arrayList.add(readKeyChainProtectionParams(typedXmlPullParser));
            }
        }
        typedXmlPullParser.require(3, KeyChainSnapshotSchema.NAMESPACE, "keyChainProtectionParamsList");
        return arrayList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        switch(r7) {
            case 0: goto L41;
            case 1: goto L40;
            case 2: goto L42;
            default: goto L39;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
    
        throw new com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException(java.lang.String.format(java.util.Locale.US, "Unexpected tag %s in keyChainProtectionParams", r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006c, code lost:
    
        r0.setUserSecretType(readIntTag(r8, "userSecretType"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0074, code lost:
    
        r0.setLockScreenUiFormat(readIntTag(r8, "lockScreenUiType"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0064, code lost:
    
        r0.setKeyDerivationParams(readKeyDerivationParams(r8));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.security.keystore.recovery.KeyChainProtectionParams readKeyChainProtectionParams(com.android.modules.utils.TypedXmlPullParser r8) {
        /*
            java.lang.String r0 = com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotSchema.NAMESPACE
            r1 = 2
            java.lang.String r2 = "keyChainProtectionParams"
            r8.require(r1, r0, r2)
            android.security.keystore.recovery.KeyChainProtectionParams$Builder r0 = new android.security.keystore.recovery.KeyChainProtectionParams$Builder
            r0.<init>()
        Le:
            int r3 = r8.next()
            r4 = 3
            if (r3 == r4) goto L7c
            int r3 = r8.getEventType()
            if (r3 == r1) goto L1c
            goto Le
        L1c:
            java.lang.String r3 = r8.getName()
            r3.hashCode()
            int r4 = r3.hashCode()
            java.lang.String r5 = "userSecretType"
            java.lang.String r6 = "lockScreenUiType"
            r7 = -1
            switch(r4) {
                case -776797115: goto L47;
                case -696958923: goto L3e;
                case 912448924: goto L32;
                default: goto L31;
            }
        L31:
            goto L4f
        L32:
            java.lang.String r4 = "keyDerivationParams"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L3c
            goto L4f
        L3c:
            r7 = r1
            goto L4f
        L3e:
            boolean r4 = r3.equals(r5)
            if (r4 != 0) goto L45
            goto L4f
        L45:
            r7 = 1
            goto L4f
        L47:
            boolean r4 = r3.equals(r6)
            if (r4 != 0) goto L4e
            goto L4f
        L4e:
            r7 = 0
        L4f:
            switch(r7) {
                case 0: goto L74;
                case 1: goto L6c;
                case 2: goto L64;
                default: goto L52;
            }
        L52:
            com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException r8 = new com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r1 = "Unexpected tag %s in keyChainProtectionParams"
            java.lang.Object[] r2 = new java.lang.Object[]{r3}
            java.lang.String r0 = java.lang.String.format(r0, r1, r2)
            r8.<init>(r0)
            throw r8
        L64:
            android.security.keystore.recovery.KeyDerivationParams r3 = readKeyDerivationParams(r8)
            r0.setKeyDerivationParams(r3)
            goto Le
        L6c:
            int r3 = readIntTag(r8, r5)
            r0.setUserSecretType(r3)
            goto Le
        L74:
            int r3 = readIntTag(r8, r6)
            r0.setLockScreenUiFormat(r3)
            goto Le
        L7c:
            java.lang.String r1 = com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotSchema.NAMESPACE
            r8.require(r4, r1, r2)
            android.security.keystore.recovery.KeyChainProtectionParams r8 = r0.build()     // Catch: java.lang.NullPointerException -> L86
            return r8
        L86:
            r8 = move-exception
            com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException r0 = new com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException
            java.lang.String r1 = "Failed to build KeyChainProtectionParams"
            r0.<init>(r1, r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotDeserializer.readKeyChainProtectionParams(com.android.modules.utils.TypedXmlPullParser):android.security.keystore.recovery.KeyChainProtectionParams");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0041, code lost:
    
        if (r6.equals("salt") == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.security.keystore.recovery.KeyDerivationParams readKeyDerivationParams(com.android.modules.utils.TypedXmlPullParser r12) {
        /*
            java.lang.String r0 = com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotSchema.NAMESPACE
            r1 = 2
            java.lang.String r2 = "keyDerivationParams"
            r12.require(r1, r0, r2)
            r0 = -1
            r3 = 0
            r4 = r0
            r5 = r4
        Ld:
            int r6 = r12.next()
            r7 = 1
            r8 = 3
            if (r6 == r8) goto L70
            int r6 = r12.getEventType()
            if (r6 == r1) goto L1c
            goto Ld
        L1c:
            java.lang.String r6 = r12.getName()
            r6.hashCode()
            int r8 = r6.hashCode()
            java.lang.String r9 = "algorithm"
            java.lang.String r10 = "salt"
            java.lang.String r11 = "memoryDifficulty"
            switch(r8) {
                case -973274212: goto L44;
                case 3522646: goto L3d;
                case 225490031: goto L34;
                default: goto L32;
            }
        L32:
            r7 = r0
            goto L4c
        L34:
            boolean r7 = r6.equals(r9)
            if (r7 != 0) goto L3b
            goto L32
        L3b:
            r7 = r1
            goto L4c
        L3d:
            boolean r8 = r6.equals(r10)
            if (r8 != 0) goto L4c
            goto L32
        L44:
            boolean r7 = r6.equals(r11)
            if (r7 != 0) goto L4b
            goto L32
        L4b:
            r7 = 0
        L4c:
            switch(r7) {
                case 0: goto L6b;
                case 1: goto L66;
                case 2: goto L61;
                default: goto L4f;
            }
        L4f:
            com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException r12 = new com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r1 = "Unexpected tag %s in keyDerivationParams"
            java.lang.Object[] r2 = new java.lang.Object[]{r6}
            java.lang.String r0 = java.lang.String.format(r0, r1, r2)
            r12.<init>(r0)
            throw r12
        L61:
            int r4 = readIntTag(r12, r9)
            goto Ld
        L66:
            byte[] r3 = readBlobTag(r12, r10)
            goto Ld
        L6b:
            int r5 = readIntTag(r12, r11)
            goto Ld
        L70:
            if (r3 == 0) goto L8d
            if (r4 == r7) goto L83
            if (r4 != r1) goto L7b
            android.security.keystore.recovery.KeyDerivationParams r0 = android.security.keystore.recovery.KeyDerivationParams.createScryptParams(r3, r5)
            goto L87
        L7b:
            com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException r12 = new com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException
            java.lang.String r0 = "Unknown algorithm in keyDerivationParams"
            r12.<init>(r0)
            throw r12
        L83:
            android.security.keystore.recovery.KeyDerivationParams r0 = android.security.keystore.recovery.KeyDerivationParams.createSha256Params(r3)
        L87:
            java.lang.String r1 = com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotSchema.NAMESPACE
            r12.require(r8, r1, r2)
            return r0
        L8d:
            com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException r12 = new com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotParserException
            java.lang.String r0 = "salt was not set in keyDerivationParams"
            r12.<init>(r0)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.locksettings.recoverablekeystore.serialization.KeyChainSnapshotDeserializer.readKeyDerivationParams(com.android.modules.utils.TypedXmlPullParser):android.security.keystore.recovery.KeyDerivationParams");
    }

    public static int readIntTag(TypedXmlPullParser typedXmlPullParser, String str) {
        String str2 = KeyChainSnapshotSchema.NAMESPACE;
        typedXmlPullParser.require(2, str2, str);
        String readText = readText(typedXmlPullParser);
        typedXmlPullParser.require(3, str2, str);
        try {
            return Integer.valueOf(readText).intValue();
        } catch (NumberFormatException e) {
            throw new KeyChainSnapshotParserException(String.format(Locale.US, "%s expected int but got '%s'", str, readText), e);
        }
    }

    public static long readLongTag(TypedXmlPullParser typedXmlPullParser, String str) {
        String str2 = KeyChainSnapshotSchema.NAMESPACE;
        typedXmlPullParser.require(2, str2, str);
        String readText = readText(typedXmlPullParser);
        typedXmlPullParser.require(3, str2, str);
        try {
            return Long.valueOf(readText).longValue();
        } catch (NumberFormatException e) {
            throw new KeyChainSnapshotParserException(String.format(Locale.US, "%s expected long but got '%s'", str, readText), e);
        }
    }

    public static String readStringTag(TypedXmlPullParser typedXmlPullParser, String str) {
        String str2 = KeyChainSnapshotSchema.NAMESPACE;
        typedXmlPullParser.require(2, str2, str);
        String readText = readText(typedXmlPullParser);
        typedXmlPullParser.require(3, str2, str);
        return readText;
    }

    public static byte[] readBlobTag(TypedXmlPullParser typedXmlPullParser, String str) {
        String str2 = KeyChainSnapshotSchema.NAMESPACE;
        typedXmlPullParser.require(2, str2, str);
        String readText = readText(typedXmlPullParser);
        typedXmlPullParser.require(3, str2, str);
        try {
            return Base64.decode(readText, 0);
        } catch (IllegalArgumentException e) {
            throw new KeyChainSnapshotParserException(String.format(Locale.US, "%s expected base64 encoded bytes but got '%s'", str, readText), e);
        }
    }

    public static CertPath readCertPathTag(TypedXmlPullParser typedXmlPullParser, String str) {
        try {
            return CertificateFactory.getInstance("X.509").generateCertPath(new ByteArrayInputStream(readBlobTag(typedXmlPullParser, str)));
        } catch (CertificateException e) {
            throw new KeyChainSnapshotParserException("Could not parse CertPath in tag " + str, e);
        }
    }

    public static String readText(TypedXmlPullParser typedXmlPullParser) {
        if (typedXmlPullParser.next() != 4) {
            return "";
        }
        String text = typedXmlPullParser.getText();
        typedXmlPullParser.nextTag();
        return text;
    }
}
