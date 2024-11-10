package com.android.server.emailksproxy;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Debug;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.UserHandle;
import android.security.IKeyChainService;
import android.security.KeyStore;
import android.util.Log;
import com.android.org.conscrypt.TrustedCertificateStore;
import com.samsung.android.knox.util.ISemKeyStoreService;
import com.samsung.android.knox.util.SemCertAndroidKeyStore;
import com.samsung.android.knox.util.SemCertByte;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public class EmailKeystoreService extends ISemKeyStoreService.Stub {
    public static final boolean DBG = Debug.semIsProductDev();
    public Context mContext;

    public EmailKeystoreService(Context context) {
        this.mContext = context;
    }

    public int isAliasExists(String str) {
        Log.d("EmailKeystoreService", "isAliasExists()");
        if (DBG) {
            Log.d("EmailKeystoreService", "isAliasExists:: calling uid : " + Binder.getCallingUid());
        }
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            if (keyStore.containsAlias(str)) {
                Log.d("EmailKeystoreService", "isAliasExists:: returns SUCCESS");
                return 0;
            }
            Log.d("EmailKeystoreService", "isAliasExists:: returns FAILURE");
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    public int installCertificateInAndroidKeyStore(SemCertByte semCertByte, String str, char[] cArr, int i) {
        if (!isCallerSignedByAndroid() || semCertByte == null) {
            return 1;
        }
        long j = 0;
        try {
            try {
                try {
                    try {
                        try {
                            KeyStore keyStore = KeyStore.getInstance("PKCS12");
                            byte[] bArr = new byte[semCertByte.certsize];
                            keyStore.load(new ByteArrayInputStream(semCertByte.certBytes), cArr);
                            X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(str);
                            Key key = keyStore.getKey(str, cArr);
                            new Certificate[]{x509Certificate};
                            j = Binder.clearCallingIdentity();
                            if (DBG) {
                                Log.d("EmailKeystoreService", "installCertificateInAndroidKeyStore: " + UserHandle.getUserId(i));
                            }
                            KeyStore keyStore2 = KeyStore.getInstance("AndroidKeyStore");
                            keyStore2.load(null);
                            keyStore2.setKeyEntry(str, key.getEncoded(), keyStore.getCertificateChain(str));
                            Binder.restoreCallingIdentity(j);
                            return 0;
                        } catch (IOException e) {
                            e.printStackTrace();
                            Binder.restoreCallingIdentity(j);
                            return 4;
                        } catch (KeyStoreException e2) {
                            e2.printStackTrace();
                            Binder.restoreCallingIdentity(j);
                            return 2;
                        }
                    } catch (CertificateException e3) {
                        e3.printStackTrace();
                        Binder.restoreCallingIdentity(j);
                        return 3;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        Binder.restoreCallingIdentity(j);
                        return 4;
                    }
                } catch (UnrecoverableKeyException e5) {
                    e5.printStackTrace();
                    Binder.restoreCallingIdentity(j);
                    return 2;
                }
            } catch (NoSuchAlgorithmException e6) {
                e6.printStackTrace();
                Binder.restoreCallingIdentity(j);
                return 2;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(j);
            throw th;
        }
    }

    public void grantAccessForAKS(int i, String str) {
        Log.d("EmailKeystoreService", "grantAccessForAKS()  uid = " + i + " alias = " + str);
        if (str == null || i == -1) {
            Log.w("EmailKeystoreService", "grantAccessForAKS()   alias == null");
            return;
        }
        KeyChainConnection keyChainConnection = null;
        try {
            try {
                keyChainConnection = bind(this.mContext, i);
                IKeyChainService service = keyChainConnection.getService();
                Log.d("EmailKeystoreService", "grantAccessforAKS call setGrant : uid = " + i + " alias = " + str);
                service.setGrant(i, str, true);
                keyChainConnection.close();
            } catch (Throwable th) {
                if (keyChainConnection != null) {
                    keyChainConnection.close();
                }
                throw th;
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        } catch (AssertionError e2) {
            e2.printStackTrace();
        } catch (InterruptedException e3) {
            e3.printStackTrace();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public int installCACert(SemCertAndroidKeyStore semCertAndroidKeyStore) {
        if (!isCallerSignedByAndroid()) {
            return 1;
        }
        if (semCertAndroidKeyStore == null) {
            return -2;
        }
        try {
            for (Certificate certificate : semCertAndroidKeyStore.certs) {
                installCaCertificate(certificate.getEncoded());
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0029, code lost:
    
        if (r3 != 3) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getKeystoreStatus() {
        /*
            r3 = this;
            boolean r3 = r3.isCallerSignedByAndroid()
            r0 = 0
            if (r3 != 0) goto L8
            return r0
        L8:
            android.security.KeyStore r3 = android.security.KeyStore.getInstance()     // Catch: java.lang.Exception -> L46
            java.lang.String r1 = "EmailKeystoreService"
            if (r3 != 0) goto L16
            java.lang.String r3 = "getKeystoreStatus() - Failed to get KeyStore Instance"
            android.util.Log.e(r1, r3)     // Catch: java.lang.Exception -> L46
            return r0
        L16:
            int[] r2 = com.android.server.emailksproxy.EmailKeystoreService.AnonymousClass2.$SwitchMap$android$security$KeyStore$State     // Catch: java.lang.Exception -> L46
            android.security.KeyStore$State r3 = r3.state()     // Catch: java.lang.Exception -> L46
            int r3 = r3.ordinal()     // Catch: java.lang.Exception -> L46
            r3 = r2[r3]     // Catch: java.lang.Exception -> L46
            r2 = 1
            if (r3 == r2) goto L2c
            r2 = 2
            if (r3 == r2) goto L2c
            r2 = 3
            if (r3 == r2) goto L2c
            goto L2d
        L2c:
            r0 = r2
        L2d:
            boolean r3 = com.android.server.emailksproxy.EmailKeystoreService.DBG
            if (r3 == 0) goto L45
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r2 = "getKeystoreStatus returns: "
            r3.append(r2)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            android.util.Log.d(r1, r3)
        L45:
            return r0
        L46:
            r3 = move-exception
            r3.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.emailksproxy.EmailKeystoreService.getKeystoreStatus():int");
    }

    /* renamed from: com.android.server.emailksproxy.EmailKeystoreService$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$android$security$KeyStore$State;

        static {
            int[] iArr = new int[KeyStore.State.values().length];
            $SwitchMap$android$security$KeyStore$State = iArr;
            try {
                iArr[KeyStore.State.UNLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$security$KeyStore$State[KeyStore.State.LOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$security$KeyStore$State[KeyStore.State.UNINITIALIZED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public final void installCaCertificate(byte[] bArr) {
        TrustedCertificateStore trustedCertificateStore = new TrustedCertificateStore();
        try {
        } catch (IOException e) {
            if (DBG) {
                Log.d("EmailKeystoreService", "IOException while installing CA Certificate");
            }
            e.printStackTrace();
        } catch (CertificateException e2) {
            if (DBG) {
                Log.d("EmailKeystoreService", "CertificateException while installing CA Certificate");
            }
            e2.printStackTrace();
        }
        synchronized (trustedCertificateStore) {
            X509Certificate parseCertificate = parseCertificate(bArr);
            if (parseCertificate == null) {
                if (DBG) {
                    Log.d("EmailKeystoreService", "CA Certificate parse error");
                }
                return;
            }
            trustedCertificateStore.installCertificate(parseCertificate);
            if (trustedCertificateStore.getCertificateAlias(parseCertificate(bArr)) != null && DBG) {
                Log.d("EmailKeystoreService", "CA Certificate successfully installed");
            }
            broadcastStorageChange();
        }
    }

    public final X509Certificate parseCertificate(byte[] bArr) {
        return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
    }

    public final void broadcastStorageChange() {
        this.mContext.sendBroadcast(new Intent("android.security.STORAGE_CHANGED"));
    }

    public static KeyChainConnection bind(Context context, int i) {
        if (context == null) {
            throw new NullPointerException("context == null");
        }
        ensureNotOnMainThread(context);
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(1);
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.android.server.emailksproxy.EmailKeystoreService.1
            public volatile boolean mConnectedAtLeastOnce = false;

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                if (this.mConnectedAtLeastOnce) {
                    return;
                }
                this.mConnectedAtLeastOnce = true;
                Log.d("EmailKeystoreService", "Bind to keychain service happened");
                if (iBinder != null) {
                    try {
                        linkedBlockingQueue.put(IKeyChainService.Stub.asInterface(iBinder));
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        Intent intent = new Intent(IKeyChainService.class.getName());
        intent.setComponent(intent.resolveSystemService(context.getPackageManager(), 0));
        if (DBG) {
            Log.d("EmailKeystoreService", "KeyChainConnection: " + Binder.getCallingUid());
        }
        UserHandle userHandle = new UserHandle(UserHandle.getUserId(i));
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean bindServiceAsUser = context.bindServiceAsUser(intent, serviceConnection, 1, userHandle);
        Binder.restoreCallingIdentity(clearCallingIdentity);
        if (!bindServiceAsUser) {
            throw new AssertionError("Could not bind to KeyChainService");
        }
        return new KeyChainConnection(context, serviceConnection, (IKeyChainService) linkedBlockingQueue.take());
    }

    public static void ensureNotOnMainThread(Context context) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null && myLooper == context.getMainLooper()) {
            throw new IllegalStateException("calling this from your main thread can lead to deadlock");
        }
    }

    public final boolean isCallerSignedByAndroid() {
        String nameForUid = this.mContext.getPackageManager().getNameForUid(Binder.getCallingUid());
        PackageManager packageManager = this.mContext.getPackageManager();
        if (nameForUid != null && packageManager.checkSignatures("android", nameForUid) == 0) {
            Log.d("EmailKeystoreService", "isCallerSignedByAndroid()--true");
            return true;
        }
        Log.d("EmailKeystoreService", "isCallerSignedByAndroid()--false");
        return false;
    }

    /* loaded from: classes2.dex */
    public final class KeyChainConnection implements Closeable {
        public final Context context;
        public final IKeyChainService service;
        public final ServiceConnection serviceConnection;

        public KeyChainConnection(Context context, ServiceConnection serviceConnection, IKeyChainService iKeyChainService) {
            this.context = context;
            this.serviceConnection = serviceConnection;
            this.service = iKeyChainService;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.context.unbindService(this.serviceConnection);
        }

        public IKeyChainService getService() {
            return this.service;
        }
    }
}
