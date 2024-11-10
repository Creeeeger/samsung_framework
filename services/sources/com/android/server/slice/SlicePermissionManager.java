package com.android.server.slice;

import android.content.ContentProvider;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.XmlUtils;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.slice.DirtyTracker;
import com.android.server.slice.SliceProviderPermissions;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes3.dex */
public class SlicePermissionManager implements DirtyTracker {
    public final String ATT_VERSION;
    public final ArrayMap mCachedClients;
    public final ArrayMap mCachedProviders;
    public final Context mContext;
    public final ArraySet mDirty;
    public final Handler mHandler;
    public final File mSliceDir;

    public static /* synthetic */ void lambda$writeBackup$0(DirtyTracker.Persistable persistable) {
    }

    public SlicePermissionManager(Context context, Looper looper, File file) {
        this.ATT_VERSION = "version";
        this.mCachedProviders = new ArrayMap();
        this.mCachedClients = new ArrayMap();
        this.mDirty = new ArraySet();
        this.mContext = context;
        this.mHandler = new H(looper);
        this.mSliceDir = file;
    }

    public SlicePermissionManager(Context context, Looper looper) {
        this(context, looper, new File(Environment.getDataDirectory(), "system/slice"));
    }

    public void grantFullAccess(String str, int i) {
        getClient(new PkgUser(str, i)).setHasFullAccess(true);
    }

    public void grantSliceAccess(String str, int i, String str2, int i2, Uri uri) {
        PkgUser pkgUser = new PkgUser(str, i);
        PkgUser pkgUser2 = new PkgUser(str2, i2);
        getClient(pkgUser).grantUri(uri, pkgUser2);
        getProvider(pkgUser2).getOrCreateAuthority(ContentProvider.getUriWithoutUserId(uri).getAuthority()).addPkg(pkgUser);
    }

    public void revokeSliceAccess(String str, int i, String str2, int i2, Uri uri) {
        PkgUser pkgUser = new PkgUser(str, i);
        getClient(pkgUser).revokeUri(uri, new PkgUser(str2, i2));
    }

    public void removePkg(String str, int i) {
        PkgUser pkgUser = new PkgUser(str, i);
        for (SliceProviderPermissions.SliceAuthority sliceAuthority : getProvider(pkgUser).getAuthorities()) {
            Iterator it = sliceAuthority.getPkgs().iterator();
            while (it.hasNext()) {
                getClient((PkgUser) it.next()).removeAuthority(sliceAuthority.getAuthority(), i);
            }
        }
        getClient(pkgUser).clear();
        this.mHandler.obtainMessage(3, pkgUser).sendToTarget();
    }

    public String[] getAllPackagesGranted(String str) {
        ArraySet arraySet = new ArraySet();
        Iterator it = getProvider(new PkgUser(str, 0)).getAuthorities().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((SliceProviderPermissions.SliceAuthority) it.next()).getPkgs().iterator();
            while (it2.hasNext()) {
                arraySet.add(((PkgUser) it2.next()).mPkg);
            }
        }
        return (String[]) arraySet.toArray(new String[arraySet.size()]);
    }

    public boolean hasFullAccess(String str, int i) {
        return getClient(new PkgUser(str, i)).hasFullAccess();
    }

    public boolean hasPermission(String str, int i, Uri uri) {
        SliceClientPermissions client = getClient(new PkgUser(str, i));
        return client.hasFullAccess() || client.hasPermission(ContentProvider.getUriWithoutUserId(uri), ContentProvider.getUserIdFromUri(uri, i));
    }

    @Override // com.android.server.slice.DirtyTracker
    public void onPersistableDirty(DirtyTracker.Persistable persistable) {
        this.mHandler.removeMessages(2);
        this.mHandler.obtainMessage(1, persistable).sendToTarget();
        this.mHandler.sendEmptyMessageDelayed(2, 500L);
    }

    public void writeBackup(XmlSerializer xmlSerializer) {
        DirtyTracker.Persistable persistable;
        synchronized (this) {
            xmlSerializer.startTag(null, "slice-access-list");
            xmlSerializer.attribute(null, "version", String.valueOf(2));
            DirtyTracker dirtyTracker = new DirtyTracker() { // from class: com.android.server.slice.SlicePermissionManager$$ExternalSyntheticLambda0
                @Override // com.android.server.slice.DirtyTracker
                public final void onPersistableDirty(DirtyTracker.Persistable persistable2) {
                    SlicePermissionManager.lambda$writeBackup$0(persistable2);
                }
            };
            if (this.mHandler.hasMessages(2)) {
                this.mHandler.removeMessages(2);
                handlePersist();
            }
            for (String str : new File(this.mSliceDir.getAbsolutePath()).list()) {
                ParserHolder parser = getParser(str);
                while (true) {
                    try {
                        if (parser.parser.getEventType() == 1) {
                            persistable = null;
                            break;
                        } else if (parser.parser.getEventType() == 2) {
                            if ("client".equals(parser.parser.getName())) {
                                persistable = SliceClientPermissions.createFrom(parser.parser, dirtyTracker);
                            } else {
                                persistable = SliceProviderPermissions.createFrom(parser.parser, dirtyTracker);
                            }
                        } else {
                            parser.parser.next();
                        }
                    } finally {
                    }
                }
                if (persistable != null) {
                    persistable.writeTo(xmlSerializer);
                } else {
                    Slog.w("SlicePermissionManager", "Invalid or empty slice permissions file: " + str);
                }
                if (parser != null) {
                    parser.close();
                }
            }
            xmlSerializer.endTag(null, "slice-access-list");
        }
    }

    public void readRestore(XmlPullParser xmlPullParser) {
        synchronized (this) {
            while (true) {
                if ((xmlPullParser.getEventType() != 2 || !"slice-access-list".equals(xmlPullParser.getName())) && xmlPullParser.getEventType() != 1) {
                    xmlPullParser.next();
                }
            }
            if (XmlUtils.readIntAttribute(xmlPullParser, "version", 0) < 2) {
                return;
            }
            while (xmlPullParser.getEventType() != 1) {
                if (xmlPullParser.getEventType() == 2) {
                    if ("client".equals(xmlPullParser.getName())) {
                        SliceClientPermissions createFrom = SliceClientPermissions.createFrom(xmlPullParser, this);
                        synchronized (this.mCachedClients) {
                            this.mCachedClients.put(createFrom.getPkg(), createFrom);
                        }
                        onPersistableDirty(createFrom);
                        Handler handler = this.mHandler;
                        handler.sendMessageDelayed(handler.obtainMessage(4, createFrom.getPkg()), BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
                    } else if ("provider".equals(xmlPullParser.getName())) {
                        SliceProviderPermissions createFrom2 = SliceProviderPermissions.createFrom(xmlPullParser, this);
                        synchronized (this.mCachedProviders) {
                            this.mCachedProviders.put(createFrom2.getPkg(), createFrom2);
                        }
                        onPersistableDirty(createFrom2);
                        Handler handler2 = this.mHandler;
                        handler2.sendMessageDelayed(handler2.obtainMessage(5, createFrom2.getPkg()), BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
                    } else {
                        xmlPullParser.next();
                    }
                } else {
                    xmlPullParser.next();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.server.slice.SliceClientPermissions getClient(com.android.server.slice.SlicePermissionManager.PkgUser r7) {
        /*
            r6 = this;
            android.util.ArrayMap r0 = r6.mCachedClients
            monitor-enter(r0)
            android.util.ArrayMap r1 = r6.mCachedClients     // Catch: java.lang.Throwable -> L6d
            java.lang.Object r1 = r1.get(r7)     // Catch: java.lang.Throwable -> L6d
            com.android.server.slice.SliceClientPermissions r1 = (com.android.server.slice.SliceClientPermissions) r1     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6d
            if (r1 != 0) goto L6c
            java.lang.String r0 = com.android.server.slice.SliceClientPermissions.getFileName(r7)     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
            com.android.server.slice.SlicePermissionManager$ParserHolder r0 = r6.getParser(r0)     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
            org.xmlpull.v1.XmlPullParser r1 = com.android.server.slice.SlicePermissionManager.ParserHolder.m11243$$Nest$fgetparser(r0)     // Catch: java.lang.Throwable -> L3d
            com.android.server.slice.SliceClientPermissions r1 = com.android.server.slice.SliceClientPermissions.createFrom(r1, r6)     // Catch: java.lang.Throwable -> L3d
            android.util.ArrayMap r2 = r6.mCachedClients     // Catch: java.lang.Throwable -> L3d
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L3d
            android.util.ArrayMap r3 = r6.mCachedClients     // Catch: java.lang.Throwable -> L3a
            r3.put(r7, r1)     // Catch: java.lang.Throwable -> L3a
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3a
            android.os.Handler r2 = r6.mHandler     // Catch: java.lang.Throwable -> L3d
            r3 = 4
            android.os.Message r3 = r2.obtainMessage(r3, r7)     // Catch: java.lang.Throwable -> L3d
            r4 = 300000(0x493e0, double:1.482197E-318)
            r2.sendMessageDelayed(r3, r4)     // Catch: java.lang.Throwable -> L3d
            if (r0 == 0) goto L39
            r0.close()     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
        L39:
            return r1
        L3a:
            r1 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3a
            throw r1     // Catch: java.lang.Throwable -> L3d
        L3d:
            r1 = move-exception
            if (r0 == 0) goto L48
            r0.close()     // Catch: java.lang.Throwable -> L44
            goto L48
        L44:
            r0 = move-exception
            r1.addSuppressed(r0)     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
        L48:
            throw r1     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
        L49:
            r0 = move-exception
            java.lang.String r1 = "SlicePermissionManager"
            java.lang.String r2 = "Can't read client"
            android.util.Log.e(r1, r2, r0)
            goto L5a
        L52:
            r0 = move-exception
            java.lang.String r1 = "SlicePermissionManager"
            java.lang.String r2 = "Can't read client"
            android.util.Log.e(r1, r2, r0)
        L5a:
            com.android.server.slice.SliceClientPermissions r1 = new com.android.server.slice.SliceClientPermissions
            r1.<init>(r7, r6)
            android.util.ArrayMap r0 = r6.mCachedClients
            monitor-enter(r0)
            android.util.ArrayMap r6 = r6.mCachedClients     // Catch: java.lang.Throwable -> L69
            r6.put(r7, r1)     // Catch: java.lang.Throwable -> L69
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L69
            goto L6c
        L69:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L69
            throw r6
        L6c:
            return r1
        L6d:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6d
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.slice.SlicePermissionManager.getClient(com.android.server.slice.SlicePermissionManager$PkgUser):com.android.server.slice.SliceClientPermissions");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.server.slice.SliceProviderPermissions getProvider(com.android.server.slice.SlicePermissionManager.PkgUser r7) {
        /*
            r6 = this;
            android.util.ArrayMap r0 = r6.mCachedProviders
            monitor-enter(r0)
            android.util.ArrayMap r1 = r6.mCachedProviders     // Catch: java.lang.Throwable -> L6d
            java.lang.Object r1 = r1.get(r7)     // Catch: java.lang.Throwable -> L6d
            com.android.server.slice.SliceProviderPermissions r1 = (com.android.server.slice.SliceProviderPermissions) r1     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6d
            if (r1 != 0) goto L6c
            java.lang.String r0 = com.android.server.slice.SliceProviderPermissions.getFileName(r7)     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
            com.android.server.slice.SlicePermissionManager$ParserHolder r0 = r6.getParser(r0)     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
            org.xmlpull.v1.XmlPullParser r1 = com.android.server.slice.SlicePermissionManager.ParserHolder.m11243$$Nest$fgetparser(r0)     // Catch: java.lang.Throwable -> L3d
            com.android.server.slice.SliceProviderPermissions r1 = com.android.server.slice.SliceProviderPermissions.createFrom(r1, r6)     // Catch: java.lang.Throwable -> L3d
            android.util.ArrayMap r2 = r6.mCachedProviders     // Catch: java.lang.Throwable -> L3d
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L3d
            android.util.ArrayMap r3 = r6.mCachedProviders     // Catch: java.lang.Throwable -> L3a
            r3.put(r7, r1)     // Catch: java.lang.Throwable -> L3a
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3a
            android.os.Handler r2 = r6.mHandler     // Catch: java.lang.Throwable -> L3d
            r3 = 5
            android.os.Message r3 = r2.obtainMessage(r3, r7)     // Catch: java.lang.Throwable -> L3d
            r4 = 300000(0x493e0, double:1.482197E-318)
            r2.sendMessageDelayed(r3, r4)     // Catch: java.lang.Throwable -> L3d
            if (r0 == 0) goto L39
            r0.close()     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
        L39:
            return r1
        L3a:
            r1 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3a
            throw r1     // Catch: java.lang.Throwable -> L3d
        L3d:
            r1 = move-exception
            if (r0 == 0) goto L48
            r0.close()     // Catch: java.lang.Throwable -> L44
            goto L48
        L44:
            r0 = move-exception
            r1.addSuppressed(r0)     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
        L48:
            throw r1     // Catch: org.xmlpull.v1.XmlPullParserException -> L49 java.io.IOException -> L52 java.io.FileNotFoundException -> L5a
        L49:
            r0 = move-exception
            java.lang.String r1 = "SlicePermissionManager"
            java.lang.String r2 = "Can't read provider"
            android.util.Log.e(r1, r2, r0)
            goto L5a
        L52:
            r0 = move-exception
            java.lang.String r1 = "SlicePermissionManager"
            java.lang.String r2 = "Can't read provider"
            android.util.Log.e(r1, r2, r0)
        L5a:
            com.android.server.slice.SliceProviderPermissions r1 = new com.android.server.slice.SliceProviderPermissions
            r1.<init>(r7, r6)
            android.util.ArrayMap r0 = r6.mCachedProviders
            monitor-enter(r0)
            android.util.ArrayMap r6 = r6.mCachedProviders     // Catch: java.lang.Throwable -> L69
            r6.put(r7, r1)     // Catch: java.lang.Throwable -> L69
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L69
            goto L6c
        L69:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L69
            throw r6
        L6c:
            return r1
        L6d:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6d
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.slice.SlicePermissionManager.getProvider(com.android.server.slice.SlicePermissionManager$PkgUser):com.android.server.slice.SliceProviderPermissions");
    }

    public final ParserHolder getParser(String str) {
        AtomicFile file = getFile(str);
        ParserHolder parserHolder = new ParserHolder();
        parserHolder.input = file.openRead();
        parserHolder.parser = XmlPullParserFactory.newInstance().newPullParser();
        parserHolder.parser.setInput(parserHolder.input, Xml.Encoding.UTF_8.name());
        return parserHolder;
    }

    public final AtomicFile getFile(String str) {
        if (!this.mSliceDir.exists()) {
            this.mSliceDir.mkdir();
        }
        return new AtomicFile(new File(this.mSliceDir, str));
    }

    public void handlePersist() {
        synchronized (this) {
            Iterator it = this.mDirty.iterator();
            while (it.hasNext()) {
                DirtyTracker.Persistable persistable = (DirtyTracker.Persistable) it.next();
                AtomicFile file = getFile(persistable.getFileName());
                try {
                    FileOutputStream startWrite = file.startWrite();
                    try {
                        XmlSerializer newSerializer = XmlPullParserFactory.newInstance().newSerializer();
                        newSerializer.setOutput(startWrite, Xml.Encoding.UTF_8.name());
                        persistable.writeTo(newSerializer);
                        newSerializer.flush();
                        file.finishWrite(startWrite);
                    } catch (IOException | RuntimeException | XmlPullParserException e) {
                        Slog.w("SlicePermissionManager", "Failed to save access file, restoring backup", e);
                        file.failWrite(startWrite);
                    }
                } catch (IOException e2) {
                    Slog.w("SlicePermissionManager", "Failed to save access file", e2);
                    return;
                }
            }
            this.mDirty.clear();
        }
    }

    public void addDirtyImmediate(DirtyTracker.Persistable persistable) {
        this.mDirty.add(persistable);
    }

    public final void handleRemove(PkgUser pkgUser) {
        getFile(SliceClientPermissions.getFileName(pkgUser)).delete();
        getFile(SliceProviderPermissions.getFileName(pkgUser)).delete();
        this.mDirty.remove(this.mCachedClients.remove(pkgUser));
        this.mDirty.remove(this.mCachedProviders.remove(pkgUser));
    }

    /* loaded from: classes3.dex */
    public final class H extends Handler {
        public H(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                SlicePermissionManager.this.mDirty.add((DirtyTracker.Persistable) message.obj);
                return;
            }
            if (i == 2) {
                SlicePermissionManager.this.handlePersist();
                return;
            }
            if (i == 3) {
                SlicePermissionManager.this.handleRemove((PkgUser) message.obj);
                return;
            }
            if (i == 4) {
                synchronized (SlicePermissionManager.this.mCachedClients) {
                    SlicePermissionManager.this.mCachedClients.remove(message.obj);
                }
            } else {
                if (i != 5) {
                    return;
                }
                synchronized (SlicePermissionManager.this.mCachedProviders) {
                    SlicePermissionManager.this.mCachedProviders.remove(message.obj);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class PkgUser {
        public final String mPkg;
        public final int mUserId;

        public PkgUser(String str, int i) {
            this.mPkg = str;
            this.mUserId = i;
        }

        public PkgUser(String str) {
            try {
                String[] split = str.split("@", 2);
                this.mPkg = split[0];
                this.mUserId = Integer.parseInt(split[1]);
            } catch (Exception e) {
                throw new IllegalArgumentException(e);
            }
        }

        public String getPkg() {
            return this.mPkg;
        }

        public int getUserId() {
            return this.mUserId;
        }

        public int hashCode() {
            return this.mPkg.hashCode() + this.mUserId;
        }

        public boolean equals(Object obj) {
            if (!getClass().equals(obj != null ? obj.getClass() : null)) {
                return false;
            }
            PkgUser pkgUser = (PkgUser) obj;
            return Objects.equals(pkgUser.mPkg, this.mPkg) && pkgUser.mUserId == this.mUserId;
        }

        public String toString() {
            return String.format("%s@%d", this.mPkg, Integer.valueOf(this.mUserId));
        }
    }

    /* loaded from: classes3.dex */
    public class ParserHolder implements AutoCloseable {
        public InputStream input;
        public XmlPullParser parser;

        public ParserHolder() {
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            this.input.close();
        }
    }
}
