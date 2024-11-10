package com.android.server.enterprise.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.UserInfo;
import android.os.Binder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.os.UserManager;
import android.security.Credentials;
import android.security.IKeyChainService;
import android.security.KeyChain;
import android.util.Log;
import com.android.internal.org.bouncycastle.asn1.ASN1InputStream;
import com.android.internal.org.bouncycastle.asn1.x509.BasicConstraints;
import com.android.internal.org.bouncycastle.util.io.pem.PemObject;
import com.android.internal.org.bouncycastle.util.io.pem.PemWriter;
import com.android.server.enterprise.adapter.AdapterRegistry;
import com.android.server.enterprise.adapter.IPersonaManagerAdapter;
import com.samsung.android.knox.keystore.CertificateInfo;
import com.samsung.android.knox.keystore.ICertificatePolicy;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* loaded from: classes2.dex */
public class CertificateUtil {
    public Context mContext;
    public UserManager mUserManager;
    public PrivateKey mUserKey = null;
    public X509Certificate mUserCert = null;
    public List mCaCerts = new ArrayList();
    public Random mRandom = new Random();

    public static int convertStoreTypeToUid(int i) {
        return (i != 4 && i == 2) ? 1010 : -1;
    }

    /* loaded from: classes2.dex */
    public class KeyChainCRUD {
        public Context mContext;
        public UserHandle mUser;
        public KeyChain.KeyChainConnection mConnection = null;
        public IKeyChainService mService = null;

        public KeyChainCRUD(Context context, int i) {
            this.mUser = null;
            this.mContext = null;
            this.mUser = new UserHandle(i);
            this.mContext = context;
            connect();
        }

        public boolean isConnected() {
            return (this.mService == null || this.mConnection == null) ? false : true;
        }

        public final boolean connect() {
            if (isConnected()) {
                return true;
            }
            try {
                KeyChain.KeyChainConnection bindAsUser = KeyChain.bindAsUser(this.mContext, this.mUser);
                this.mConnection = bindAsUser;
                this.mService = bindAsUser.getService();
                return true;
            } catch (AssertionError unused) {
                Log.d("CertificateUtil", "Unable to connect to KeyChainService for user " + this.mUser.getIdentifier());
                disconnect();
                return false;
            } catch (Exception e) {
                Log.e("CertificateUtil", "Error binding KeyChain. Is KeyChainService running for user " + this.mUser.getIdentifier() + "?", e);
                disconnect();
                return false;
            }
        }

        public void disconnect() {
            KeyChain.KeyChainConnection keyChainConnection = this.mConnection;
            if (keyChainConnection != null) {
                try {
                    keyChainConnection.close();
                } catch (Exception unused) {
                    Log.e("CertificateUtil", "Error disconnecting from KeyChain!");
                }
                this.mConnection = null;
                this.mService = null;
            }
        }

        public boolean put(byte[] bArr, byte[] bArr2, byte[] bArr3, String str, int i) {
            if (!connect()) {
                Log.d("CertificateUtil", "Aborting put operation.");
                return false;
            }
            try {
                boolean installKeyPair = this.mService.installKeyPair(bArr, bArr2, bArr3, str, i);
                if (bArr != null && installKeyPair) {
                    this.mService.setUserSelectable(str, true);
                }
                return installKeyPair;
            } catch (Exception e) {
                Log.e("CertificateUtil", "Error in KeyChainService.installKeyPair for alias " + str, e);
                return false;
            }
        }

        public boolean deleteEntry(String str, int i) {
            if (!connect()) {
                Log.d("CertificateUtil", "Aborting deleteEntry operation");
                return false;
            }
            try {
                return this.mService.deleteEntry(str, i);
            } catch (Exception e) {
                Log.e("CertificateUtil", "Error in KeyChainService.deleteEntry for alias " + str, e);
                return false;
            }
        }

        public String[] listAliases(String str, int i) {
            if (!connect()) {
                Log.d("CertificateUtil", "Aborting listAliases operation");
                return null;
            }
            try {
                return this.mService.listAliases(str, i);
            } catch (Exception e) {
                Log.e("CertificateUtil", "Error in KeyChainService.listAliases for keystore " + i, e);
                return null;
            }
        }

        public static String[] listAliases(Context context, String str, int i, int i2) {
            KeyChainCRUD keyChainCRUD = new KeyChainCRUD(context, i2);
            String[] listAliases = keyChainCRUD.listAliases(str, i);
            keyChainCRUD.disconnect();
            return listAliases;
        }

        public byte[] get(String str, String str2, int i) {
            if (!connect()) {
                Log.d("CertificateUtil", "Aborting get operation");
                return null;
            }
            try {
                return this.mService.getCertificateSystem(str, str2, i);
            } catch (Exception e) {
                Log.e("CertificateUtil", "Error in KeyChainService.getCertificateSystem for alias " + str, e);
                return null;
            }
        }

        public boolean contains(String str, int i) {
            if (!connect()) {
                Log.d("CertificateUtil", "Aborting contains operation");
                return false;
            }
            try {
                return this.mService.contains(str, i);
            } catch (Exception e) {
                Log.e("CertificateUtil", "Error in KeyChainService.contains for alias " + str, e);
                return false;
            }
        }

        public boolean updateKeyPair(String str, byte[] bArr, byte[] bArr2, int i) {
            if (!connect()) {
                Log.d("CertificateUtil", "Aborting updateKeyPair operation.");
                return false;
            }
            try {
                return this.mService.updateKeyPair(str, bArr, bArr2, i);
            } catch (Exception e) {
                Log.e("CertificateUtil", "Error in KeyChainService.updateKeyPair for alias " + str, e);
                return false;
            }
        }

        public boolean isCertificateEntry(String str, int i) {
            if (!connect()) {
                Log.d("CertificateUtil", "Aborting isCertificateEntry operation.");
                return false;
            }
            try {
                return this.mService.isCertificateEntry(str, i);
            } catch (Exception e) {
                Log.e("CertificateUtil", "Error in KeyChainService.isCertificateEntry for alias " + str, e);
                return false;
            }
        }

        public String installCaCertificate(byte[] bArr) {
            if (!connect()) {
                Log.d("CertificateUtil", "Aborting installCaCertificate operation");
                return null;
            }
            try {
                return this.mService.installCaCertificate(bArr);
            } catch (Exception e) {
                Log.e("CertificateUtil", "Error in KeyChainService.installCaCertificate", e);
                return null;
            }
        }
    }

    public CertificateUtil(Context context) {
        this.mContext = context;
        this.mUserManager = (UserManager) this.mContext.getSystemService("user");
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x005a, code lost:
    
        if (parseCert(r19, r23) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0150, code lost:
    
        if (r1.equalsIgnoreCase("CERT") != false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
    
        if (extractPkcs12(r19, "", r23) != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int installAsUser(java.lang.String r18, byte[] r19, java.lang.String r20, java.lang.String r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.utils.CertificateUtil.installAsUser(java.lang.String, byte[], java.lang.String, java.lang.String, int, int):int");
    }

    public final boolean installCaCertsToDefaultKeystore(KeyChainCRUD keyChainCRUD, String str) {
        byte[] bArr;
        if (this.mCaCerts.isEmpty()) {
            return true;
        }
        Iterator it = this.mCaCerts.iterator();
        boolean z = true;
        while (true) {
            byte[] bArr2 = null;
            if (!it.hasNext()) {
                break;
            }
            X509Certificate x509Certificate = (X509Certificate) it.next();
            if (x509Certificate.getSubjectX500Principal().equals(x509Certificate.getIssuerX500Principal())) {
                try {
                    bArr2 = Credentials.convertToPem(new Certificate[]{x509Certificate});
                } catch (Exception e) {
                    Log.e("CertificateUtil", "Error converting certificate to PEM: ", e);
                    z &= false;
                }
                if (bArr2 != null) {
                    z &= keyChainCRUD.installCaCertificate(bArr2) != null;
                }
            }
        }
        for (X509Certificate x509Certificate2 : this.mCaCerts) {
            if (!x509Certificate2.getSubjectX500Principal().equals(x509Certificate2.getIssuerX500Principal())) {
                try {
                    bArr = Credentials.convertToPem(new Certificate[]{x509Certificate2});
                } catch (Exception e2) {
                    Log.e("CertificateUtil", "Error converting certificate to PEM: ", e2);
                    z &= false;
                    bArr = null;
                }
                if (bArr != null) {
                    z = (keyChainCRUD.installCaCertificate(bArr) != null) & z;
                }
            }
        }
        Log.d("CertificateUtil", "CaCerts put state for default keystore: " + z);
        return z;
    }

    public final boolean parseCert(byte[] bArr, int i) {
        int validateCertificateAtInstallAsUser;
        try {
            X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
            ICertificatePolicy asInterface = ICertificatePolicy.Stub.asInterface(ServiceManager.getService("certificate_policy"));
            if (asInterface != null) {
                try {
                    try {
                        if (asInterface.isCertificateValidationAtInstallEnabledAsUser(i) && (validateCertificateAtInstallAsUser = asInterface.validateCertificateAtInstallAsUser(new CertificateInfo(x509Certificate), i)) != -1) {
                            Log.d("CertificateUtil", "certificate failed during validation");
                            asInterface.notifyCertificateFailureAsUser("installer_module", String.valueOf(validateCertificateAtInstallAsUser), false, i);
                            return false;
                        }
                    } catch (RemoteException unused) {
                        Log.d("CertificateUtil", "Failed talking to certificate policy");
                    }
                } catch (NullPointerException unused2) {
                    Log.d("CertificateUtil", "Certificate policy not found");
                }
            }
            if (isCa(x509Certificate)) {
                Log.d("CertificateUtil", "got a CA cert");
                this.mCaCerts.add(x509Certificate);
            } else {
                Log.d("CertificateUtil", "got a user cert");
                this.mUserCert = x509Certificate;
            }
            return true;
        } catch (CertificateException e) {
            Log.w("CertificateUtil", "parseCert(): " + e);
            return false;
        }
    }

    public final boolean isCa(X509Certificate x509Certificate) {
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

    public final boolean extractPkcs12(byte[] bArr, String str, int i) {
        KeyStore keyStore;
        KeyStore.PasswordProtection passwordProtection;
        Enumeration<String> aliases;
        if (str == null) {
            str = "";
        }
        try {
            keyStore = KeyStore.getInstance("PKCS12");
            passwordProtection = new KeyStore.PasswordProtection(str.toCharArray());
            keyStore.load(new ByteArrayInputStream(bArr), passwordProtection.getPassword());
            aliases = keyStore.aliases();
        } catch (Exception e) {
            Log.w("CertificateUtil", "extractPkcs12(): " + e);
        }
        if (!aliases.hasMoreElements()) {
            return false;
        }
        while (aliases.hasMoreElements()) {
            String nextElement = aliases.nextElement();
            if (keyStore.isKeyEntry(nextElement)) {
                KeyStore.Entry entry = keyStore.getEntry(nextElement, passwordProtection);
                if (entry instanceof KeyStore.PrivateKeyEntry) {
                    return installFrom((KeyStore.PrivateKeyEntry) entry, i);
                }
            } else {
                Log.d("CertificateUtil", "Skipping non-key entry");
            }
        }
        return false;
    }

    public final synchronized boolean installFrom(KeyStore.PrivateKeyEntry privateKeyEntry, int i) {
        ICertificatePolicy asInterface = ICertificatePolicy.Stub.asInterface(ServiceManager.getService("certificate_policy"));
        if (asInterface != null) {
            try {
                if (asInterface.isCertificateValidationAtInstallEnabledAsUser(i)) {
                    Certificate[] certificateChain = privateKeyEntry.getCertificateChain();
                    ArrayList arrayList = new ArrayList(certificateChain.length);
                    for (Certificate certificate : certificateChain) {
                        arrayList.add(new CertificateInfo((X509Certificate) certificate));
                    }
                    int validateChainAtInstallAsUser = asInterface.validateChainAtInstallAsUser(arrayList, i);
                    if (validateChainAtInstallAsUser != -1) {
                        Log.d("CertificateUtil", "certificate failed during validation");
                        asInterface.notifyCertificateFailureAsUser("installer_module", String.valueOf(validateChainAtInstallAsUser), false, i);
                        return false;
                    }
                }
            } catch (RemoteException unused) {
                Log.d("CertificateUtil", "Failed talking to certificate policy");
            } catch (NullPointerException unused2) {
                Log.d("CertificateUtil", "Certificate policy not found");
            }
        }
        this.mUserKey = privateKeyEntry.getPrivateKey();
        this.mUserCert = (X509Certificate) privateKeyEntry.getCertificate();
        Certificate[] certificateChain2 = privateKeyEntry.getCertificateChain();
        Log.d("CertificateUtil", "# certs extracted = " + certificateChain2.length);
        ArrayList arrayList2 = new ArrayList(certificateChain2.length);
        this.mCaCerts = arrayList2;
        for (Certificate certificate2 : certificateChain2) {
            X509Certificate x509Certificate = (X509Certificate) certificate2;
            if (isCa(x509Certificate)) {
                arrayList2.add(x509Certificate);
            }
        }
        Log.d("CertificateUtil", "# ca certs extracted = " + this.mCaCerts.size());
        return true;
    }

    public void sendIntentToSettings(int i, boolean z) {
        List<UserInfo> enabledProfiles;
        UserManager userManager;
        if (z) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            Intent intent = new Intent();
            intent.setAction("com.samsung.android.knox.intent.action.REFRESH_CREDENTIALS_UI_INTERNAL");
            if (getPersonaManagerAdapter().isKnoxId(i) && (userManager = this.mUserManager) != null) {
                i = userManager.getUserInfo(i).profileGroupId;
            }
            this.mContext.sendBroadcastAsUser(intent, new UserHandle(i), "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL");
            UserManager userManager2 = this.mUserManager;
            if (userManager2 != null && (enabledProfiles = userManager2.getEnabledProfiles(i)) != null) {
                for (UserInfo userInfo : enabledProfiles) {
                    if (userInfo.isManagedProfile()) {
                        this.mContext.sendBroadcastAsUser(intent, new UserHandle(userInfo.id), "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL");
                    }
                }
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final IPersonaManagerAdapter getPersonaManagerAdapter() {
        return (IPersonaManagerAdapter) AdapterRegistry.getAdapter(IPersonaManagerAdapter.class);
    }

    public int getRandomInt() {
        return this.mRandom.nextInt();
    }

    public List getAllUsersId() {
        ArrayList arrayList = new ArrayList();
        Iterator it = getAllUsersInfo().iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((UserInfo) it.next()).getUserHandle().getIdentifier()));
        }
        return arrayList;
    }

    public List getAllUsersInfo() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mUserManager.getUsers(true);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public static List toCertificates(byte[] bArr) {
        try {
            return new ArrayList(KeyChain.toCertificates(bArr));
        } catch (Exception e) {
            e.printStackTrace();
            return Collections.EMPTY_LIST;
        }
    }

    public static List convertToX509List(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((X509Certificate) ((CertificateInfo) it.next()).getCertificate());
        }
        return arrayList;
    }

    public static byte[] convertX509ListToPem(List list) {
        if (list == null) {
            return null;
        }
        try {
            return Credentials.convertToPem((X509Certificate[]) list.toArray(new X509Certificate[list.size()]));
        } catch (IOException unused) {
            Log.e("CertificateUtil", "Could not convert certificate.");
            return null;
        } catch (IllegalArgumentException e) {
            Log.d("CertificateUtil", "Not a certificate " + e.getMessage());
            return null;
        } catch (CertificateException unused2) {
            Log.e("CertificateUtil", "Could not convert certificate.");
            return null;
        }
    }

    public static byte[] convertDerToPem(byte[] bArr) {
        Log.d("CertificateUtil", "Convert DER to PEM");
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            PemWriter pemWriter = new PemWriter(new OutputStreamWriter(byteArrayOutputStream, StandardCharsets.US_ASCII));
            pemWriter.writeObject(new PemObject("CERTIFICATE", bArr));
            pemWriter.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            Log.e("CertificateUtil", "Exception converting DER to PEM " + e.getMessage());
            return null;
        }
    }
}
