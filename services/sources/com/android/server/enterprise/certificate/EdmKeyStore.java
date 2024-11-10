package com.android.server.enterprise.certificate;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import com.android.internal.org.bouncycastle.asn1.ASN1InputStream;
import com.android.internal.org.bouncycastle.asn1.x509.BasicConstraints;
import com.android.server.enterprise.adapter.AdapterRegistry;
import com.android.server.enterprise.adapter.IPersonaManagerAdapter;
import com.android.server.enterprise.utils.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes2.dex */
public class EdmKeyStore {
    public static final String NATIVE_KEYSTORE_PATH;
    public static final String TRUSTED_KEYSTORE_PATH;
    public static final String UNTRUSTED_KEYSTORE_PATH;
    public static final String USER_KEYSTORE_PATH;
    public static EdmKeyStore mInstanceNative;
    public static EdmKeyStore mInstanceTrusted;
    public static EdmKeyStore mInstanceUntrusted;
    public static EdmKeyStore mInstanceUser;
    public KeyStore mKeyStore;
    public Object mKeyStoreLock;
    public String mPath;
    public int mType;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getDataSystemDirectory());
        String str = File.separator;
        sb.append(str);
        sb.append("enterprise_cacerts.bks");
        TRUSTED_KEYSTORE_PATH = sb.toString();
        UNTRUSTED_KEYSTORE_PATH = Environment.getDataSystemDirectory() + str + "enterprise_untrustedcerts.bks";
        USER_KEYSTORE_PATH = Environment.getDataSystemDirectory() + str + "enterprise_usercerts.bks";
        NATIVE_KEYSTORE_PATH = Environment.getDataSystemDirectory() + str + "enterprise_nativecerts.bks";
    }

    public static synchronized EdmKeyStore getInstance(int i) {
        synchronized (EdmKeyStore.class) {
            if (i == 0) {
                if (mInstanceTrusted == null) {
                    try {
                        mInstanceTrusted = new EdmKeyStore(TRUSTED_KEYSTORE_PATH, i);
                    } catch (Exception e) {
                        Log.e("EdmKeyStore", "Should not happen! ", e);
                        mInstanceTrusted = null;
                    }
                }
                return mInstanceTrusted;
            }
            if (i == 1) {
                if (mInstanceUser == null) {
                    try {
                        mInstanceUser = new EdmKeyStore(USER_KEYSTORE_PATH, i);
                    } catch (Exception e2) {
                        Log.e("EdmKeyStore", "Should not happen! ", e2);
                        mInstanceUser = null;
                    }
                }
                return mInstanceUser;
            }
            if (i == 2) {
                if (mInstanceNative == null) {
                    try {
                        mInstanceNative = new EdmKeyStore(NATIVE_KEYSTORE_PATH, i);
                    } catch (Exception e3) {
                        Log.e("EdmKeyStore", "Should not happen! ", e3);
                        mInstanceNative = null;
                    }
                }
                return mInstanceNative;
            }
            if (i != 3) {
                return null;
            }
            if (mInstanceUntrusted == null) {
                try {
                    mInstanceUntrusted = new EdmKeyStore(UNTRUSTED_KEYSTORE_PATH, i);
                } catch (Exception e4) {
                    Log.e("EdmKeyStore", "Should not happen! ", e4);
                    mInstanceUntrusted = null;
                }
            }
            return mInstanceUntrusted;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0076 A[Catch: all -> 0x007a, TRY_ENTER, TryCatch #9 {, blocks: (B:12:0x0057, B:13:0x005a, B:35:0x0076, B:36:0x0079), top: B:4:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public EdmKeyStore(java.lang.String r5, int r6) {
        /*
            r4 = this;
            r4.<init>()
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r4.mKeyStoreLock = r0
            r4.mPath = r5
            r4.mType = r6
            monitor-enter(r0)
            r6 = 0
            java.lang.String r1 = "BKS"
            java.security.KeyStore r1 = java.security.KeyStore.getInstance(r1)     // Catch: java.lang.Throwable -> L73
            r4.mKeyStore = r1     // Catch: java.lang.Throwable -> L73
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L25 java.io.IOException -> L28
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L25 java.io.IOException -> L28
            java.security.KeyStore r2 = r4.mKeyStore     // Catch: java.lang.Throwable -> L23 java.io.IOException -> L29
            r2.load(r1, r6)     // Catch: java.lang.Throwable -> L23 java.io.IOException -> L29
            goto L57
        L23:
            r4 = move-exception
            goto L62
        L25:
            r4 = move-exception
            r1 = r6
            goto L62
        L28:
            r1 = r6
        L29:
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.lang.Throwable -> L23
            r1 = r6
        L2f:
            java.security.KeyStore r2 = r4.mKeyStore     // Catch: java.lang.Throwable -> L23
            r2.load(r6, r6)     // Catch: java.lang.Throwable -> L23
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L23
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L23
            java.security.KeyStore r3 = r4.mKeyStore     // Catch: java.lang.Throwable -> L60
            r3.store(r2, r6)     // Catch: java.lang.Throwable -> L60
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L60
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L60
            java.security.KeyStore r4 = r4.mKeyStore     // Catch: java.lang.Throwable -> L5c
            r4.load(r3, r6)     // Catch: java.lang.Throwable -> L5c
            r2.close()     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L4f
            goto L56
        L4c:
            r4 = move-exception
            r6 = r3
            goto L74
        L4f:
            java.lang.String r4 = "EdmKeyStore"
            java.lang.String r5 = "fos close failed"
            android.util.Log.d(r4, r5)     // Catch: java.lang.Throwable -> L4c
        L56:
            r1 = r3
        L57:
            r1.close()     // Catch: java.lang.Throwable -> L7a
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7a
            return
        L5c:
            r4 = move-exception
            r6 = r2
            r1 = r3
            goto L62
        L60:
            r4 = move-exception
            r6 = r2
        L62:
            if (r6 == 0) goto L6f
            r6.close()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L70
            goto L6f
        L68:
            java.lang.String r5 = "EdmKeyStore"
            java.lang.String r6 = "fos close failed"
            android.util.Log.d(r5, r6)     // Catch: java.lang.Throwable -> L70
        L6f:
            throw r4     // Catch: java.lang.Throwable -> L70
        L70:
            r4 = move-exception
            r6 = r1
            goto L74
        L73:
            r4 = move-exception
        L74:
            if (r6 == 0) goto L79
            r6.close()     // Catch: java.lang.Throwable -> L7a
        L79:
            throw r4     // Catch: java.lang.Throwable -> L7a
        L7a:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7a
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.certificate.EdmKeyStore.<init>(java.lang.String, int):void");
    }

    public List installCertificates(List list, int i) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            X509Certificate x509Certificate = (X509Certificate) it.next();
            String generateAlias = generateAlias(x509Certificate, i);
            try {
                synchronized (this.mKeyStoreLock) {
                    this.mKeyStore.setCertificateEntry(generateAlias, x509Certificate);
                    if (this.mKeyStore.isCertificateEntry(generateAlias)) {
                        arrayList.add(removeUserIdFromAlias(generateAlias));
                    }
                }
            } catch (KeyStoreException e) {
                Log.d("EdmKeyStore", "Exception with keystore " + e);
            }
        }
        saveKeyStore();
        return arrayList;
    }

    public List installCertificates(Map map, int i) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            try {
                synchronized (this.mKeyStoreLock) {
                    String addUserIdToAlias = addUserIdToAlias((String) entry.getKey(), i);
                    this.mKeyStore.setCertificateEntry(addUserIdToAlias, (Certificate) entry.getValue());
                    if (this.mKeyStore.isCertificateEntry(addUserIdToAlias)) {
                        arrayList.add((String) entry.getKey());
                    }
                }
            } catch (KeyStoreException e) {
                Log.d("EdmKeyStore", "Exception with keystore " + e);
            }
        }
        saveKeyStore();
        return arrayList;
    }

    public List removeCertificates(List list, int i) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                synchronized (this.mKeyStoreLock) {
                    String addUserIdToAlias = addUserIdToAlias(str, i);
                    this.mKeyStore.deleteEntry(addUserIdToAlias);
                    if (!this.mKeyStore.isCertificateEntry(addUserIdToAlias)) {
                        arrayList.add(str);
                    }
                }
            } catch (KeyStoreException e) {
                Log.d("EdmKeyStore", "Exception with keystore " + e);
            }
        }
        saveKeyStore();
        return arrayList;
    }

    public Map getCertificates(List list, int i) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                synchronized (this.mKeyStoreLock) {
                    X509Certificate x509Certificate = (X509Certificate) this.mKeyStore.getCertificate(addUserIdToAlias(str, i));
                    if (x509Certificate != null) {
                        hashMap.put(str, x509Certificate);
                    }
                }
            } catch (KeyStoreException e) {
                Log.d("EdmKeyStore", "Exception with keystore " + e);
            }
        }
        return hashMap;
    }

    public final void saveKeyStore() {
        String str;
        String str2;
        FileOutputStream fileOutputStream;
        synchronized (this.mKeyStoreLock) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(this.mPath);
                    try {
                        this.mKeyStore.store(fileOutputStream, null);
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream2 = fileOutputStream;
                        Log.e("EdmKeyStore", "save error" + e);
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused) {
                                str = "EdmKeyStore";
                                str2 = "fos close failed";
                                Log.d(str, str2);
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream2 = fileOutputStream;
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused2) {
                                Log.d("EdmKeyStore", "fos close failed");
                            }
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                try {
                    fileOutputStream.close();
                } catch (IOException unused3) {
                    str = "EdmKeyStore";
                    str2 = "fos close failed";
                    Log.d(str, str2);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public String generateAlias(X509Certificate x509Certificate) {
        return generateAlias(x509Certificate.getSubjectX500Principal());
    }

    public final String generateAlias(X500Principal x500Principal) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(x500Principal.getEncoded());
            return Utils.intToHexString(((digest[3] & 255) << 24) | ((digest[0] & 255) << 0) | ((digest[1] & 255) << 8) | ((digest[2] & 255) << 16), 8);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public final String generateAlias(X509Certificate x509Certificate, int i) {
        return addUserIdToAlias(generateAlias(x509Certificate), i);
    }

    public final List generateAllAliasesForUser(CertificateCache certificateCache, X500Principal x500Principal, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        String generateAlias = generateAlias(x500Principal);
        arrayList.add(addUserIdToAlias(generateAlias, i));
        if (getPersonaManagerAdapter().isValidKnoxId(i)) {
            if (isFromContainerOwner(certificateCache, generateAlias, i2)) {
                arrayList.add(addUserIdToAlias(generateAlias, 0));
            }
        } else if (i != 0) {
            arrayList.add(addUserIdToAlias(generateAlias, 0));
        }
        return arrayList;
    }

    public final IPersonaManagerAdapter getPersonaManagerAdapter() {
        return (IPersonaManagerAdapter) AdapterRegistry.getAdapter(IPersonaManagerAdapter.class);
    }

    public boolean containsCertificateOrChain(Context context, CertificateCache certificateCache, X509Certificate x509Certificate, int i, int i2) {
        X509Certificate findIssuerInAndroidKeystore;
        if (x509Certificate == null) {
            return false;
        }
        String str = this.mPath;
        String str2 = TRUSTED_KEYSTORE_PATH;
        if (!str.equals(str2) && !this.mPath.equals(UNTRUSTED_KEYSTORE_PATH)) {
            return false;
        }
        if (findCertificateOrIssuer(certificateCache, x509Certificate, i, i2) != null) {
            return true;
        }
        if (!this.mPath.equals(str2) || isSelfSigned(x509Certificate) || (findIssuerInAndroidKeystore = CertificatePolicy.findIssuerInAndroidKeystore(context, x509Certificate, i)) == null) {
            return false;
        }
        return containsCertificateOrChain(context, certificateCache, findIssuerInAndroidKeystore, i, i2);
    }

    public final X509Certificate findCertificateOrIssuer(CertificateCache certificateCache, X509Certificate x509Certificate, int i, int i2) {
        try {
            Iterator it = generateAllAliasesForUser(certificateCache, x509Certificate.getSubjectX500Principal(), i, i2).iterator();
            while (it.hasNext()) {
                X509Certificate x509Certificate2 = (X509Certificate) this.mKeyStore.getCertificate((String) it.next());
                if (x509Certificate2 != null && areEqual(x509Certificate2, x509Certificate)) {
                    return x509Certificate2;
                }
            }
            Iterator it2 = generateAllAliasesForUser(certificateCache, x509Certificate.getIssuerX500Principal(), i, i2).iterator();
            while (it2.hasNext()) {
                X509Certificate x509Certificate3 = (X509Certificate) this.mKeyStore.getCertificate((String) it2.next());
                if (x509Certificate3 != null && matchPublicKey(x509Certificate3, x509Certificate)) {
                    return x509Certificate3;
                }
            }
            Iterator it3 = getAliasesForUser(certificateCache, i, i2).iterator();
            while (it3.hasNext()) {
                X509Certificate x509Certificate4 = (X509Certificate) this.mKeyStore.getCertificate((String) it3.next());
                if (x509Certificate4 != null && (matchPublicKey(x509Certificate4, x509Certificate) || areEqual(x509Certificate4, x509Certificate))) {
                    return x509Certificate4;
                }
            }
            return null;
        } catch (KeyStoreException e) {
            Log.e("EdmKeyStore", "get error" + e);
            return null;
        }
    }

    public final boolean matchPublicKey(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (x509Certificate == null || x509Certificate2 == null) {
            return false;
        }
        try {
            x509Certificate2.verify(x509Certificate.getPublicKey());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isSelfSigned(X509Certificate x509Certificate) {
        if (!x509Certificate.getSubjectX500Principal().equals(x509Certificate.getIssuerX500Principal())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate.getPublicKey());
            return true;
        } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchProviderException | SignatureException | CertificateException e) {
            Log.i("EdmKeyStore", "Verifying self-signed certificate: " + e.getMessage());
            return false;
        }
    }

    public static boolean isCa(X509Certificate x509Certificate) {
        try {
            byte[] extensionValue = x509Certificate.getExtensionValue("2.5.29.19");
            if (extensionValue == null) {
                return false;
            }
            return BasicConstraints.getInstance(new ASN1InputStream(new ASN1InputStream(extensionValue).readObject().getOctets()).readObject()).isCA();
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean areEqual(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (x509Certificate == null || x509Certificate2 == null) {
            return false;
        }
        try {
            return Arrays.equals(x509Certificate.getEncoded(), x509Certificate2.getEncoded());
        } catch (CertificateEncodingException unused) {
            return false;
        }
    }

    public final List getAliasesForUser(CertificateCache certificateCache, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        boolean isValidKnoxId = getPersonaManagerAdapter().isValidKnoxId(i);
        try {
            Enumeration<String> aliases = this.mKeyStore.aliases();
            while (aliases.hasMoreElements()) {
                String nextElement = aliases.nextElement();
                if (!nextElement.startsWith(String.valueOf(0) + "_")) {
                    if (nextElement.startsWith(String.valueOf(i) + "_") && i != 0) {
                        arrayList.add(nextElement);
                    }
                } else if (isValidKnoxId) {
                    if (isFromContainerOwner(certificateCache, nextElement, i2)) {
                        arrayList.add(nextElement);
                    }
                } else {
                    arrayList.add(nextElement);
                }
            }
        } catch (KeyStoreException e) {
            Log.d("EdmKeyStore", "Exception with keystore " + e);
        }
        return arrayList;
    }

    public final boolean isFromContainerOwner(CertificateCache certificateCache, String str, int i) {
        return certificateCache.isInAdminList(0, str, i);
    }

    public final String removeUserIdFromAlias(String str) {
        return str.indexOf("_") == -1 ? str : str.substring(str.indexOf("_") + 1);
    }

    public final String addUserIdToAlias(String str, int i) {
        return String.valueOf(i) + "_" + str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        if (r1 != 3) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void performKeystoreUpgrade() {
        /*
            r5 = this;
            java.util.List r0 = r5.getAliases()
            int r1 = r5.mType
            if (r1 == 0) goto L48
            r2 = 1
            if (r1 == r2) goto L48
            r3 = 2
            if (r1 == r3) goto L12
            r2 = 3
            if (r1 == r2) goto L48
            goto L75
        L12:
            java.util.Iterator r0 = r0.iterator()
        L16:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L75
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            int r3 = r1.length()
            if (r3 < r2) goto L16
            r3 = 0
            char r3 = r1.charAt(r3)
            boolean r3 = java.lang.Character.isLetter(r3)
            if (r3 == 0) goto L16
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "1010_"
            r3.append(r4)
            r3.append(r1)
            java.lang.String r3 = r3.toString()
            r5.changeAlias(r1, r3)
            goto L16
        L48:
            java.util.Iterator r0 = r0.iterator()
        L4c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L75
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r2 = "_"
            boolean r2 = r1.contains(r2)
            if (r2 != 0) goto L4c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "0_"
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            r5.changeAlias(r1, r2)
            goto L4c
        L75:
            r5.saveKeyStore()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.certificate.EdmKeyStore.performKeystoreUpgrade():void");
    }

    public final void changeAlias(String str, String str2) {
        try {
            X509Certificate x509Certificate = (X509Certificate) this.mKeyStore.getCertificate(str);
            this.mKeyStore.deleteEntry(str);
            this.mKeyStore.setCertificateEntry(str2, x509Certificate);
        } catch (KeyStoreException e) {
            Log.d("EdmKeyStore", "Exception with keystore " + e);
        }
    }

    public List getAliases() {
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration<String> aliases = this.mKeyStore.aliases();
            while (aliases.hasMoreElements()) {
                arrayList.add(aliases.nextElement());
            }
        } catch (KeyStoreException e) {
            Log.d("EdmKeyStore", "Exception with keystore " + e);
        }
        return arrayList;
    }

    public List cleanUid(int i) {
        ArrayList arrayList = new ArrayList();
        for (String str : getAliases()) {
            try {
                synchronized (this.mKeyStoreLock) {
                    if (str.startsWith(i + "_")) {
                        this.mKeyStore.deleteEntry(str);
                    }
                }
            } catch (KeyStoreException e) {
                Log.d("EdmKeyStore", "Exception with keystore " + e);
            }
        }
        saveKeyStore();
        return arrayList;
    }

    public void dump(PrintWriter printWriter, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("Certificate aliases {");
        try {
            Enumeration<String> aliases = this.mKeyStore.aliases();
            while (aliases.hasMoreElements()) {
                sb.append(aliases.nextElement());
                if (aliases.hasMoreElements()) {
                    sb.append(", ");
                }
            }
        } catch (KeyStoreException e) {
            sb.append("Could not dump alias from keystore ");
            sb.append(e.getMessage());
        }
        sb.append("}");
        sb.append(System.lineSeparator());
        sb.append(System.lineSeparator());
        printWriter.write(sb.toString());
    }
}
