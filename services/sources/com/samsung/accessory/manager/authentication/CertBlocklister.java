package com.samsung.accessory.manager.authentication;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Binder;
import android.os.Debug;
import android.provider.Settings;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import libcore.io.IoUtils;

/* loaded from: classes.dex */
public class CertBlocklister extends Binder {
    public static final String BLOCKLIST_ROOT;
    public static final boolean DBG = Debug.semIsProductDev();
    public static final String PUBKEY_PATH;
    public static BlocklistObserver mBlocklistObserver;
    public static CertBlocklistListener mCertBlocklistListener;
    public static boolean mIsBlocked;

    /* loaded from: classes.dex */
    public interface CertBlocklistListener {
        void onAuthenticationBlocked(boolean z);

        void onCertBlocklistChanged();
    }

    static {
        String str = System.getenv("ANDROID_DATA") + "/misc/saccessory_manager/keychain/";
        BLOCKLIST_ROOT = str;
        PUBKEY_PATH = str + "cover_pubkey_blocklist.txt";
        mIsBlocked = false;
    }

    public void setCertBlocklistListener(CertBlocklistListener certBlocklistListener) {
        mCertBlocklistListener = certBlocklistListener;
    }

    public boolean isAuthenticationBlocked() {
        return mIsBlocked;
    }

    public boolean isThisKeyBlocklisted(String str) {
        return mBlocklistObserver.isThisKeyBlocklisted(str);
    }

    public void readFile() {
        mBlocklistObserver.readFile();
    }

    /* loaded from: classes.dex */
    public class BlocklistObserver extends ContentObserver {
        public static final boolean DBG = Debug.semIsProductDev();
        public String mBlocklist;
        public final ContentResolver mContentResolver;
        public final String mKey;
        public final String mName;
        public final String mPath;
        public final File mTmpDir;

        public BlocklistObserver(String str, String str2, String str3, ContentResolver contentResolver) {
            super(null);
            this.mKey = str;
            this.mName = str2;
            this.mPath = str3;
            this.mTmpDir = new File(str3).getParentFile();
            this.mContentResolver = contentResolver;
        }

        public boolean isThisKeyBlocklisted(String str) {
            synchronized (this.mTmpDir) {
                if (str != null) {
                    if (this.mBlocklist != null) {
                        Log.i("SAccessoryManager_CertBlocklister", "This key is in blocklist");
                        return this.mBlocklist.contains(str + ",");
                    }
                }
                return false;
            }
        }

        public void readFile() {
            new Thread("BlocklistReader") { // from class: com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    synchronized (BlocklistObserver.this.mTmpDir) {
                        if (BlocklistObserver.DBG) {
                            Log.d("SAccessoryManager_CertBlocklister", "Read a blocklist from file..");
                        }
                        try {
                            try {
                                BlocklistObserver.this.mBlocklist = IoUtils.readFileAsString(CertBlocklister.PUBKEY_PATH);
                            } catch (IOException e) {
                                Log.e("SAccessoryManager_CertBlocklister", "Failed to read list", e);
                            }
                        } catch (FileNotFoundException unused) {
                            Log.i("SAccessoryManager_CertBlocklister", "File does not exist");
                        }
                        if (BlocklistObserver.DBG) {
                            Log.d("SAccessoryManager_CertBlocklister", "mBlocklist = " + BlocklistObserver.this.mBlocklist);
                        }
                    }
                }
            }.start();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            writeBlocklist();
        }

        public String getValue() {
            return Settings.Secure.getString(this.mContentResolver, this.mKey);
        }

        public final void writeBlocklist() {
            new Thread("BlocklistUpdater") { // from class: com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.2
                /* JADX WARN: Removed duplicated region for block: B:30:0x00a0 A[Catch: all -> 0x00ae, TryCatch #4 {, blocks: (B:4:0x0007, B:6:0x000f, B:8:0x001b, B:10:0x0021, B:11:0x0028, B:15:0x002c, B:17:0x0037, B:27:0x0083, B:28:0x009a, B:30:0x00a0, B:38:0x00a8, B:39:0x00ab, B:34:0x0097, B:42:0x00ac), top: B:3:0x0007 }] */
                @Override // java.lang.Thread, java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public void run() {
                    /*
                        r5 = this;
                        com.samsung.accessory.manager.authentication.CertBlocklister$BlocklistObserver r0 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.this
                        java.io.File r0 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.m13933$$Nest$fgetmTmpDir(r0)
                        monitor-enter(r0)
                        com.samsung.accessory.manager.authentication.CertBlocklister$BlocklistObserver r1 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.this     // Catch: java.lang.Throwable -> Lae
                        java.lang.String r1 = r1.getValue()     // Catch: java.lang.Throwable -> Lae
                        if (r1 == 0) goto L2a
                        com.samsung.accessory.manager.authentication.CertBlocklister$BlocklistObserver r2 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.this     // Catch: java.lang.Throwable -> Lae
                        java.lang.String r2 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.m13931$$Nest$fgetmBlocklist(r2)     // Catch: java.lang.Throwable -> Lae
                        boolean r2 = r1.equals(r2)     // Catch: java.lang.Throwable -> Lae
                        if (r2 == 0) goto L2a
                        boolean r5 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.m13935$$Nest$sfgetDBG()     // Catch: java.lang.Throwable -> Lae
                        if (r5 == 0) goto L28
                        java.lang.String r5 = "SAccessoryManager_CertBlocklister"
                        java.lang.String r1 = "Certificate blocklist not changed, return..."
                        android.util.Log.d(r5, r1)     // Catch: java.lang.Throwable -> Lae
                    L28:
                        monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
                        return
                    L2a:
                        if (r1 == 0) goto Lac
                        com.samsung.accessory.manager.authentication.CertBlocklister$BlocklistObserver r2 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.this     // Catch: java.lang.Throwable -> Lae
                        com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.m13934$$Nest$fputmBlocklist(r2, r1)     // Catch: java.lang.Throwable -> Lae
                        boolean r1 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.m13935$$Nest$sfgetDBG()     // Catch: java.lang.Throwable -> Lae
                        if (r1 == 0) goto L3e
                        java.lang.String r1 = "SAccessoryManager_CertBlocklister"
                        java.lang.String r2 = "Certificate blocklist changed, updating..."
                        android.util.Log.d(r1, r2)     // Catch: java.lang.Throwable -> Lae
                    L3e:
                        r1 = 0
                        java.lang.String r2 = "journal"
                        java.lang.String r3 = ""
                        com.samsung.accessory.manager.authentication.CertBlocklister$BlocklistObserver r4 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.this     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
                        java.io.File r4 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.m13933$$Nest$fgetmTmpDir(r4)     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
                        java.io.File r2 = java.io.File.createTempFile(r2, r3, r4)     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
                        r3 = 1
                        r4 = 0
                        r2.setReadable(r3, r4)     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
                        java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
                        r3.<init>(r2)     // Catch: java.lang.Throwable -> L8d java.io.IOException -> L8f
                        com.samsung.accessory.manager.authentication.CertBlocklister$BlocklistObserver r1 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.this     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        java.lang.String r1 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.m13931$$Nest$fgetmBlocklist(r1)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        byte[] r1 = r1.getBytes()     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        r3.write(r1)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        android.os.FileUtils.sync(r3)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        com.samsung.accessory.manager.authentication.CertBlocklister$BlocklistObserver r5 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.this     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        java.lang.String r5 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.m13932$$Nest$fgetmPath(r5)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        r1.<init>(r5)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        r2.renameTo(r1)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        boolean r5 = com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.m13935$$Nest$sfgetDBG()     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                        if (r5 == 0) goto L83
                        java.lang.String r5 = "SAccessoryManager_CertBlocklister"
                        java.lang.String r1 = "Certificate blocklist updated"
                        android.util.Log.d(r5, r1)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L8a
                    L83:
                        libcore.io.IoUtils.closeQuietly(r3)     // Catch: java.lang.Throwable -> Lae
                        goto L9a
                    L87:
                        r5 = move-exception
                        r1 = r3
                        goto La8
                    L8a:
                        r5 = move-exception
                        r1 = r3
                        goto L90
                    L8d:
                        r5 = move-exception
                        goto La8
                    L8f:
                        r5 = move-exception
                    L90:
                        java.lang.String r2 = "SAccessoryManager_CertBlocklister"
                        java.lang.String r3 = "Failed to write list"
                        android.util.Log.e(r2, r3, r5)     // Catch: java.lang.Throwable -> L8d
                        libcore.io.IoUtils.closeQuietly(r1)     // Catch: java.lang.Throwable -> Lae
                    L9a:
                        com.samsung.accessory.manager.authentication.CertBlocklister$CertBlocklistListener r5 = com.samsung.accessory.manager.authentication.CertBlocklister.m13929$$Nest$sfgetmCertBlocklistListener()     // Catch: java.lang.Throwable -> Lae
                        if (r5 == 0) goto Lac
                        com.samsung.accessory.manager.authentication.CertBlocklister$CertBlocklistListener r5 = com.samsung.accessory.manager.authentication.CertBlocklister.m13929$$Nest$sfgetmCertBlocklistListener()     // Catch: java.lang.Throwable -> Lae
                        r5.onCertBlocklistChanged()     // Catch: java.lang.Throwable -> Lae
                        goto Lac
                    La8:
                        libcore.io.IoUtils.closeQuietly(r1)     // Catch: java.lang.Throwable -> Lae
                        throw r5     // Catch: java.lang.Throwable -> Lae
                    Lac:
                        monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
                        return
                    Lae:
                        r5 = move-exception
                        monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
                        throw r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.samsung.accessory.manager.authentication.CertBlocklister.BlocklistObserver.AnonymousClass2.run():void");
                }
            }.start();
        }
    }

    /* loaded from: classes.dex */
    public class AuthenticationSettingObserver extends ContentObserver {
        public final ContentResolver mContentResolver;
        public final String mKey;

        public AuthenticationSettingObserver(String str, ContentResolver contentResolver) {
            super(null);
            this.mKey = str;
            this.mContentResolver = contentResolver;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            String value = getValue();
            if ("true".equals(value)) {
                CertBlocklister.mIsBlocked = true;
                CertBlocklister.mCertBlocklistListener.onAuthenticationBlocked(true);
            } else if ("false".equals(value)) {
                CertBlocklister.mIsBlocked = false;
                CertBlocklister.mCertBlocklistListener.onAuthenticationBlocked(false);
            }
        }

        public String getValue() {
            return Settings.Secure.getString(this.mContentResolver, this.mKey);
        }
    }

    public CertBlocklister(Context context) {
        registerObservers(context.getContentResolver());
    }

    public final BlocklistObserver buildPubkeyObserver(ContentResolver contentResolver) {
        return new BlocklistObserver("cover_pubkey_blocklist", "pubkey", PUBKEY_PATH, contentResolver);
    }

    public final AuthenticationSettingObserver buildAuthenticationSettingObserver(ContentResolver contentResolver) {
        return new AuthenticationSettingObserver("cover_authentication_blocked", contentResolver);
    }

    public final void registerObservers(ContentResolver contentResolver) {
        mBlocklistObserver = buildPubkeyObserver(contentResolver);
        contentResolver.registerContentObserver(Settings.Secure.getUriFor("cover_pubkey_blocklist"), true, mBlocklistObserver);
        contentResolver.registerContentObserver(Settings.Secure.getUriFor("cover_authentication_blocked"), true, buildAuthenticationSettingObserver(contentResolver));
    }
}
