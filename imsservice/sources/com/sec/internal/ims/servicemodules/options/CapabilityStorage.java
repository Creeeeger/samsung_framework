package com.sec.internal.ims.servicemodules.options;

import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Handler;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.options.CapabilityStorage;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class CapabilityStorage {
    private static final int APPLY_BATCH_MAX_SIZE = 100;
    private static final int APPLY_BATCH_TIMEOUT = 1000;
    private static final String LOG_TAG = "CapabilityStorage";
    private static final String MIMETYPE_RCSE = "vnd.android.cursor.item/rcs_data";
    private CapabilitiesCache mCapabilitiesCache;
    protected Context mContext;
    private final DatabaseHelper mDbHelper;
    private SimpleEventLog mEventLog;
    int mPhoneId;
    int mUserId = 0;
    private boolean mIsKor = false;
    private boolean mNeedResetRcsData = false;
    String[] projection = {"_id", CloudMessageProviderContract.BufferDBMMSaddr.CONTACT_ID, "uri", "available", "timestamp", "display_name", "number", "phone_id", "features", "avail_features", "ext_features", "presence_support", GlobalSettingsConstants.RCS.LEGACY_LATCHING, "isexpired", "lastseen", "botserviceid", "passertedidset", "pidf"};
    private final SequenceUpdater mUpdater = new SequenceUpdater();

    private String setSelection() {
        return "data1 = ? AND (mimetype = ? OR mimetype = ?)";
    }

    public CapabilityStorage(Context context, CapabilitiesCache capabilitiesCache, int i) {
        this.mPhoneId = 0;
        this.mContext = context;
        this.mEventLog = new SimpleEventLog(context, i, LOG_TAG, 5);
        this.mCapabilitiesCache = capabilitiesCache;
        this.mDbHelper = new DatabaseHelper(this.mContext);
        this.mPhoneId = i;
    }

    public int getAmountCapabilities() {
        this.mDbHelper.incrementRefCount();
        Cursor cursor = this.mDbHelper.getCursor("capabilities", new String[]{"_id"}, null, null);
        int count = cursor != null ? cursor.getCount() : 0;
        this.mDbHelper.safeClose(cursor);
        IMSLog.i(LOG_TAG, this.mPhoneId, "getAmountCapabilities: Total " + count + " capabilities records");
        return count;
    }

    public int getAmountRcsCapabilities() {
        String[] strArr = {Integer.toString(Capabilities.FEATURE_OFFLINE_RCS_USER), Integer.toString(Capabilities.FEATURE_NON_RCS_USER), Integer.toString(Capabilities.FEATURE_NOT_UPDATED)};
        this.mDbHelper.incrementRefCount();
        Cursor cursor = this.mDbHelper.getCursor("capabilities", new String[]{"_id"}, "avail_features <> ? AND avail_features <> ? AND avail_features <> ?", strArr);
        int count = cursor != null ? cursor.getCount() : 0;
        this.mDbHelper.safeClose(cursor);
        IMSLog.i(LOG_TAG, this.mPhoneId, "getAmountRcsCapabilities: " + count + " RCS capabilities records");
        return count;
    }

    public void persist() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "persist: start");
        ConcurrentHashMap<ImsUri, Capabilities> updatedUriList = this.mCapabilitiesCache.getUpdatedUriList();
        List<ImsUri> trashedUriList = this.mCapabilitiesCache.getTrashedUriList();
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                try {
                    try {
                        sQLiteDatabase = this.mDbHelper.getWritableDatabase();
                        sQLiteDatabase.beginTransaction();
                        this.mDbHelper.incrementRefCount();
                        if (updatedUriList != null && updatedUriList.size() > 0) {
                            Iterator<ImsUri> it = updatedUriList.keySet().iterator();
                            while (it.hasNext()) {
                                Capabilities capabilities = updatedUriList.get(it.next());
                                if (capabilities != null) {
                                    arrayList.add(capabilities);
                                } else {
                                    Log.e(LOG_TAG, "persist: not found in cache.");
                                }
                            }
                            update(sQLiteDatabase, arrayList);
                        }
                        if (trashedUriList != null && trashedUriList.size() > 0) {
                            remove(sQLiteDatabase, trashedUriList);
                        }
                        sQLiteDatabase.setTransactionSuccessful();
                    } catch (SQLiteDatabaseCorruptException e) {
                        Log.e(LOG_TAG, "persist: SQLiteDatabaseCorruptException: " + e.toString());
                    } catch (SQLiteFullException e2) {
                        Log.e(LOG_TAG, "persist: SQLiteFullException: " + e2.toString());
                    } catch (SQLException e3) {
                        Log.e(LOG_TAG, "persist: SQLException: " + e3.toString());
                    }
                } catch (SQLiteDiskIOException e4) {
                    Log.e(LOG_TAG, "persist: SQLiteDiskIOException: " + e4.toString());
                } catch (SQLiteException e5) {
                    Log.e(LOG_TAG, "persist: SQLiteException: " + e5.toString());
                }
            } catch (SQLiteDatabaseLockedException e6) {
                Log.e(LOG_TAG, "persist: SQLiteDatabaseLockedException: " + e6.toString());
            } catch (IllegalStateException e7) {
                Log.e(LOG_TAG, "persist: IllegalStateException: " + e7.toString());
            }
            this.mDbHelper.safeClose(sQLiteDatabase);
            IMSLog.i(LOG_TAG, this.mPhoneId, "persist: end");
        } finally {
            endTransaction(sQLiteDatabase);
        }
    }

    public void reset() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "reset:");
        try {
            SQLiteDatabase writableDatabase = this.mDbHelper.getWritableDatabase();
            this.mDbHelper.incrementRefCount();
            writableDatabase.delete("capabilities", null, null);
            this.mDbHelper.safeClose(writableDatabase);
            if (this.mIsKor) {
                this.mNeedResetRcsData = true;
            }
        } catch (SQLiteException e) {
            Log.e(LOG_TAG, "reset: SQLiteException: " + e.toString());
        }
    }

    private void remove(SQLiteDatabase sQLiteDatabase, List<ImsUri> list) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "remove: " + list.size() + " Capabilities");
        Iterator<ImsUri> it = list.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.delete("capabilities", "uri=?", new String[]{it.next().toString()});
        }
    }

    private void update(SQLiteDatabase sQLiteDatabase, List<Capabilities> list) {
        ContentValues contentValues = new ContentValues();
        IMSLog.i(LOG_TAG, this.mPhoneId, "update: " + list.size() + " Capabilities");
        for (Capabilities capabilities : list) {
            contentValues.clear();
            fillCapexInfo(contentValues, capabilities);
            if (capabilities.getId() >= 0) {
                sQLiteDatabase.update("capabilities", contentValues, "_id = ?", new String[]{String.valueOf(capabilities.getId())});
            } else {
                capabilities.setId(sQLiteDatabase.insert("capabilities", null, contentValues));
            }
        }
    }

    private void endTransaction(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase == null) {
            Log.e(LOG_TAG, "endTransaction: db is null");
            return;
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (SQLiteDatabaseCorruptException e) {
            Log.e(LOG_TAG, "endTransaction: SQLiteDatabaseCorruptException: " + e.toString());
        } catch (SQLiteFullException e2) {
            Log.e(LOG_TAG, "endTransaction: SQLiteFullException: " + e2.toString());
        } catch (SQLException e3) {
            Log.e(LOG_TAG, "endTransaction: SQLException: " + e3.toString());
        } catch (IllegalStateException e4) {
            Log.e(LOG_TAG, "endTransaction: IllegalStateException: " + e4.toString());
        }
    }

    private void fillCapexInfo(ContentValues contentValues, Capabilities capabilities) {
        String host;
        contentValues.put(CloudMessageProviderContract.BufferDBMMSaddr.CONTACT_ID, capabilities.getContactId());
        contentValues.put("uri", capabilities.getUri().toString());
        contentValues.put("available", Boolean.valueOf(capabilities.isAvailable()));
        contentValues.put("timestamp", Long.valueOf(capabilities.getTimestamp().getTime()));
        contentValues.put("display_name", capabilities.getDisplayName());
        contentValues.put("number", capabilities.getNumber());
        contentValues.put("features", Long.valueOf(capabilities.getFeature()));
        contentValues.put("avail_features", Long.valueOf(capabilities.getAvailableFeatures()));
        contentValues.put("phone_id", Integer.valueOf(capabilities.getPhoneId()));
        StringBuilder sb = new StringBuilder();
        Iterator it = capabilities.getExtFeature().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && !str.isEmpty()) {
                sb.append(str);
                if (it.hasNext()) {
                    sb.append(',');
                }
            }
        }
        contentValues.put("ext_features", sb.toString());
        contentValues.put("presence_support", Boolean.valueOf(capabilities.hasPresenceSupport()));
        contentValues.put(GlobalSettingsConstants.RCS.LEGACY_LATCHING, Boolean.valueOf(capabilities.getLegacyLatching()));
        contentValues.put("isexpired", Boolean.valueOf(capabilities.getExpired()));
        contentValues.put("lastseen", Long.valueOf(capabilities.getLastSeen()));
        contentValues.put("botserviceid", capabilities.getBotServiceId());
        contentValues.put("pidf", capabilities.getPidf());
        StringBuilder sb2 = new StringBuilder();
        Iterator it2 = capabilities.getPAssertedId().iterator();
        while (it2.hasNext()) {
            ImsUri imsUri = (ImsUri) it2.next();
            if (imsUri != null && (host = imsUri.getHost()) != null && !host.isEmpty()) {
                sb2.append(host);
                if (it2.hasNext()) {
                    sb2.append(',');
                }
            }
        }
        contentValues.put("passertedidset", sb2.toString());
    }

    void setIsKor() {
        if (SimUtil.getSimMno(this.mPhoneId).isKor()) {
            Log.i(LOG_TAG, "setIsKor: true");
            this.mIsKor = true;
        } else {
            this.mIsKor = false;
        }
    }

    private Capabilities convertCursorToCapex(Cursor cursor) {
        Capabilities capabilities = new Capabilities(ImsUri.parse(cursor.getString(cursor.getColumnIndex("uri"))), cursor.getString(cursor.getColumnIndex("number")), cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSaddr.CONTACT_ID)), cursor.getInt(cursor.getColumnIndex("_id")), cursor.getString(cursor.getColumnIndex("display_name")));
        capabilities.setFeatures(cursor.getLong(cursor.getColumnIndex("features")));
        capabilities.setAvailableFeatures(cursor.getLong(cursor.getColumnIndex("avail_features")));
        capabilities.setPhoneId(cursor.getInt(cursor.getColumnIndex("phone_id")));
        capabilities.setTimestamp(new Date(cursor.getLong(cursor.getColumnIndex("timestamp"))));
        capabilities.setPresenceSupport(cursor.getInt(cursor.getColumnIndex("presence_support")) == 1);
        capabilities.setAvailiable(cursor.getInt(cursor.getColumnIndex("available")) == 1);
        capabilities.setLegacyLatching(cursor.getInt(cursor.getColumnIndex(GlobalSettingsConstants.RCS.LEGACY_LATCHING)) == 1);
        ArrayList arrayList = new ArrayList();
        String string = cursor.getString(cursor.getColumnIndex("ext_features"));
        if (string != null && !string.isEmpty()) {
            Collections.addAll(arrayList, string.split(","));
            capabilities.setExtFeature(arrayList);
        }
        capabilities.setExpired(cursor.getInt(cursor.getColumnIndex("isexpired")) == 1);
        capabilities.setLastSeen(cursor.getLong(cursor.getColumnIndex("lastseen")));
        capabilities.setBotServiceId(cursor.getString(cursor.getColumnIndex("botserviceid")));
        String string2 = cursor.getString(cursor.getColumnIndex("passertedidset"));
        ArrayList arrayList2 = new ArrayList();
        if (string2 != null && !string2.isEmpty()) {
            for (String str : string2.split(",")) {
                if (!str.isEmpty()) {
                    arrayList2.add(new ImsUri(str));
                }
            }
        }
        capabilities.setPAssertedId(arrayList2);
        capabilities.setPidf(cursor.getString(cursor.getColumnIndex("pidf")));
        return capabilities;
    }

    public void load() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "load");
        setIsKor();
        String[] strArr = {String.valueOf(this.mPhoneId)};
        Cursor cursor = null;
        try {
            try {
                this.mDbHelper.incrementRefCount();
                cursor = this.mDbHelper.getCursor("capabilities", this.projection, "phone_id = ?", strArr);
                if (cursor != null && cursor.getCount() > 0) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "loading : " + cursor.getCount() + " capabilities record.");
                    cursor.moveToFirst();
                    int i = 0;
                    do {
                        this.mCapabilitiesCache.add(convertCursorToCapex(cursor));
                        i++;
                        if (!cursor.moveToNext()) {
                            break;
                        }
                    } while (i < CapabilitiesCache.getMaxCacheSize());
                }
            } catch (SQLException e) {
                Log.e(LOG_TAG, "persist: " + e.toString());
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "load done.");
        } finally {
            this.mDbHelper.safeClose(cursor);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.sec.internal.ims.servicemodules.options.CapabilityStorage$DatabaseHelper] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.sec.internal.ims.servicemodules.options.CapabilityStorage] */
    /* JADX WARN: Type inference failed for: r7v2, types: [com.sec.internal.ims.servicemodules.options.CapabilityStorage$DatabaseHelper] */
    /* JADX WARN: Type inference failed for: r8v10, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.io.Closeable] */
    public Capabilities get(ImsUri imsUri) {
        ?? r8 = {String.valueOf(this.mPhoneId), imsUri.toString()};
        Capabilities capabilities = null;
        try {
            try {
                this.mDbHelper.incrementRefCount();
                r8 = this.mDbHelper.getCursor("capabilities", this.projection, "phone_id = ? AND uri = ?", r8);
            } catch (SQLException e) {
                e = e;
                r8 = 0;
            } catch (IllegalStateException e2) {
                e = e2;
                r8 = 0;
            } catch (Throwable th) {
                th = th;
                this.mDbHelper.safeClose(capabilities);
                throw th;
            }
            if (r8 != 0) {
                try {
                    int count = r8.getCount();
                    r8 = r8;
                    if (count > 0) {
                        IMSLog.d(LOG_TAG, this.mPhoneId, "get uri : " + r8.getCount() + " capabilities record.");
                        r8.moveToFirst();
                        capabilities = convertCursorToCapex(r8);
                        r8 = r8;
                    }
                } catch (SQLException e3) {
                    e = e3;
                    Log.e(LOG_TAG, "get uri: " + e.toString());
                    r8 = r8;
                    this.mDbHelper.safeClose(r8);
                    return capabilities;
                } catch (IllegalStateException e4) {
                    e = e4;
                    Log.e(LOG_TAG, "get uri: " + e.toString());
                    r8 = r8;
                    this.mDbHelper.safeClose(r8);
                    return capabilities;
                }
            }
            this.mDbHelper.safeClose(r8);
            return capabilities;
        } catch (Throwable th2) {
            th = th2;
            capabilities = r8;
            this.mDbHelper.safeClose(capabilities);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.sec.internal.ims.servicemodules.options.CapabilityStorage$DatabaseHelper] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.sec.internal.ims.servicemodules.options.CapabilityStorage] */
    /* JADX WARN: Type inference failed for: r7v1, types: [com.sec.internal.ims.servicemodules.options.CapabilityStorage$DatabaseHelper] */
    /* JADX WARN: Type inference failed for: r7v2, types: [com.sec.internal.ims.servicemodules.options.CapabilityStorage$DatabaseHelper] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v13, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public Capabilities get(long j) {
        Throwable th;
        ?? r8 = {String.valueOf(this.mPhoneId), String.valueOf(j)};
        Capabilities capabilities = null;
        try {
            try {
                this.mDbHelper.incrementRefCount();
                r8 = this.mDbHelper.getCursor("capabilities", this.projection, "phone_id = ? AND _id = ?", r8);
            } catch (SQLException e) {
                e = e;
                r8 = 0;
            } catch (IllegalStateException e2) {
                e = e2;
                r8 = 0;
            } catch (Throwable th2) {
                th = th2;
                r8 = 0;
                this.mDbHelper.safeClose(r8);
                throw th;
            }
            if (r8 != 0) {
                try {
                    int count = r8.getCount();
                    r8 = r8;
                    if (count > 0) {
                        IMSLog.d(LOG_TAG, this.mPhoneId, "get id : " + r8.getCount() + " capabilities record.");
                        r8.moveToFirst();
                        capabilities = convertCursorToCapex(r8);
                        r8 = r8;
                    }
                } catch (SQLException e3) {
                    e = e3;
                    Log.e(LOG_TAG, "get id: " + e.toString());
                    r8 = r8;
                    this.mDbHelper.safeClose(r8);
                    return capabilities;
                } catch (IllegalStateException e4) {
                    e = e4;
                    Log.e(LOG_TAG, "get id: " + e.toString());
                    r8 = r8;
                    this.mDbHelper.safeClose(r8);
                    return capabilities;
                }
            }
            this.mDbHelper.safeClose(r8);
            return capabilities;
        } catch (Throwable th3) {
            th = th3;
            this.mDbHelper.safeClose(r8);
            throw th;
        }
    }

    public Collection<Capabilities> getAllCapabilities() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "getAllCapabilities");
        LinkedList linkedList = new LinkedList();
        String[] strArr = {String.valueOf(this.mPhoneId)};
        Cursor cursor = null;
        try {
            try {
                this.mDbHelper.incrementRefCount();
                cursor = this.mDbHelper.getCursor("capabilities", this.projection, "phone_id = ? ", strArr);
                if (cursor != null && cursor.getCount() > 0) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "getAllCapabilities: " + cursor.getCount() + " capabilities record.");
                    cursor.moveToFirst();
                    do {
                        linkedList.add(convertCursorToCapex(cursor));
                    } while (cursor.moveToNext());
                }
            } catch (SQLException e) {
                Log.e(LOG_TAG, "getAllCapabilities: " + e.toString());
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "getAllCapabilities done.");
            return linkedList;
        } finally {
            this.mDbHelper.safeClose(cursor);
        }
    }

    public List<String> getCapabilitiesNumberWithContactId() {
        IMSLog.d(LOG_TAG, this.mPhoneId, "getCapabilitiesNumberWithContactId");
        LinkedList linkedList = new LinkedList();
        String[] strArr = {String.valueOf(this.mPhoneId)};
        Cursor cursor = null;
        try {
            try {
                this.mDbHelper.incrementRefCount();
                cursor = this.mDbHelper.getCursor("capabilities", new String[]{"number"}, "phone_id = ? AND contact_id != ''", strArr);
                if (cursor != null && cursor.getCount() > 0) {
                    IMSLog.d(LOG_TAG, this.mPhoneId, "getCapabilitiesNumberWithContactId : " + cursor.getCount() + " capabilities record.");
                    cursor.moveToFirst();
                    do {
                        linkedList.add(cursor.getString(cursor.getColumnIndex("number")));
                    } while (cursor.moveToNext());
                }
            } catch (SQLException e) {
                Log.e(LOG_TAG, "getCapabilitiesNumberWithContactId: " + e.toString());
            }
            IMSLog.d(LOG_TAG, this.mPhoneId, "getCapabilitiesNumberWithContactId done.");
            return linkedList;
        } finally {
            this.mDbHelper.safeClose(cursor);
        }
    }

    public TreeMap<Integer, ImsUri> getCapabilitiesForPolling(int i, long j, long j2, long j3, boolean z) {
        IMSLog.d(LOG_TAG, this.mPhoneId, "getCapabilitiesForPolling");
        TreeMap<Integer, ImsUri> treeMap = new TreeMap<>();
        long time = new Date().getTime();
        LinkedList linkedList = new LinkedList();
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT ");
        sb.append("_id");
        sb.append(", ");
        sb.append("uri");
        sb.append(" FROM capabilities WHERE _id > ? AND contact_id <> ? AND ");
        sb.append("phone_id");
        sb.append(" = ? ");
        linkedList.add(String.valueOf(j));
        linkedList.add("");
        linkedList.add(String.valueOf(this.mPhoneId));
        if (!z) {
            sb.append(" AND ((features = ? AND timestamp < ? ) OR (features <> ? AND timestamp < ? )) ");
            linkedList.add(String.valueOf(Capabilities.FEATURE_NON_RCS_USER));
            linkedList.add(String.valueOf(time - (j2 * 1000)));
            linkedList.add(String.valueOf(Capabilities.FEATURE_NON_RCS_USER));
            linkedList.add(String.valueOf(time - (1000 * j3)));
        }
        sb.append(" ORDER BY _id ");
        if (i > 0) {
            sb.append(" ASC Limit ? ");
            linkedList.add(String.valueOf(i));
        }
        String[] strArr = (String[]) linkedList.toArray(new String[0]);
        IMSLog.s(LOG_TAG, this.mPhoneId, "getCapabilitiesForPolling query " + sb.toString() + " args " + linkedList.toString());
        Cursor cursor = null;
        try {
            try {
                this.mDbHelper.incrementRefCount();
                cursor = this.mDbHelper.getReadableDatabase().rawQuery(sb.toString(), strArr);
                if (cursor != null && cursor.getCount() > 0) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "getCapabilitiesForPolling : " + cursor.getCount() + " capabilities record.");
                    cursor.moveToFirst();
                    do {
                        treeMap.put(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("_id"))), ImsUri.parse(cursor.getString(cursor.getColumnIndex("uri"))));
                    } while (cursor.moveToNext());
                }
            } catch (SQLException e) {
                Log.e(LOG_TAG, "getCapabilitiesForPolling: " + e.toString());
            }
            IMSLog.d(LOG_TAG, this.mPhoneId, "getCapabilitiesForPolling done.");
            return treeMap;
        } finally {
            this.mDbHelper.safeClose(cursor);
        }
    }

    static class CapabilitiesTable {
        static final String AVAILABLE = "available";
        static final String AVAIL_FEATURES = "avail_features";
        static final String BOTSERVICEID = "botserviceid";
        static final String CONTACT_ID = "contact_id";
        static final String DISPLAY_NAME = "display_name";
        static final String EXT_FEATURES = "ext_features";
        static final String FEATURES = "features";
        static final String ISEXPIRED = "isexpired";
        static final String LASTSEEN = "lastseen";
        static final String LEGACY_LATCHING = "legacy_latching";
        static final String NUMBER = "number";
        static final String PASSERTEDIDSET = "passertedidset";
        static final String PHONE_ID = "phone_id";
        static final String PIDF = "pidf";
        static final String PRESENCE_SUPPORT = "presence_support";
        static final String TABLE_NAME = "capabilities";
        static final String TIMESTAMP = "timestamp";
        static final String URI = "uri";
        static final String _ID = "_id";

        CapabilitiesTable() {
        }
    }

    static class DatabaseHelper extends SQLiteOpenHelper {
        private static final String DATABASE_NAME = "capdiscovery.db";
        private static final int DATABASE_VERSION = 9;
        private static final String SQL_CREATE_CAPABILITIES_TABLE = "CREATE TABLE capabilities( _id INTEGER PRIMARY KEY, contact_id TEXT, uri TEXT, available INT, timestamp BIGINT DEFAULT 0, display_name TEXT, number TEXT, features INTEGER DEFAULT 0, avail_features INTEGER DEFAULT 0, ext_features TEXT, presence_support INT DEFAULT 0, legacy_latching INT DEFAULT 0, phone_id INT, isexpired INTEGER DEFAULT 0, lastseen BIGINT DEFAULT 0, botserviceid TEXT, passertedidset TEXT, pidf TEXT );";
        private static final String SQL_CREATE_INDEX_URI = "CREATE INDEX idx_uri ON capabilities (uri);";
        private Context mContext;
        private AtomicInteger mRefCount;

        public void incrementRefCount() {
            this.mRefCount.incrementAndGet();
        }

        DatabaseHelper(Context context) {
            super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 9);
            this.mContext = context;
            this.mRefCount = new AtomicInteger(0);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            Log.i(CapabilityStorage.LOG_TAG, "onCreate: Creating DB.");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS capabilities");
            sQLiteDatabase.execSQL(SQL_CREATE_CAPABILITIES_TABLE);
            sQLiteDatabase.execSQL(SQL_CREATE_INDEX_URI);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            Log.v(CapabilityStorage.LOG_TAG, "onUpgrade() oldVersion [" + i + "] , newVersion [" + i2 + "]");
            if (sQLiteDatabase.getVersion() == 7 && i2 >= 8) {
                sQLiteDatabase.execSQL("ALTER TABLE capabilities ADD COLUMN isexpired INTEGER DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE capabilities ADD COLUMN lastseen BIGINT DEFAULT 0");
                sQLiteDatabase.execSQL("ALTER TABLE capabilities ADD COLUMN botserviceid TEXT");
                sQLiteDatabase.execSQL("ALTER TABLE capabilities ADD COLUMN passertedidset TEXT");
                sQLiteDatabase.setVersion(8);
            }
            if (sQLiteDatabase.getVersion() == 8 && i2 == 9) {
                sQLiteDatabase.execSQL("ALTER TABLE capabilities ADD COLUMN pidf TEXT");
                sQLiteDatabase.setVersion(i2);
            } else if (sQLiteDatabase.getVersion() != i2) {
                onCreate(sQLiteDatabase);
                sQLiteDatabase.setVersion(9);
                clearCapabilitySharedPreference();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            Log.v(CapabilityStorage.LOG_TAG, "onDowngrade() oldVersion [" + i + "] , newVersion [" + i2 + "]");
            if (sQLiteDatabase.getVersion() != i2) {
                onCreate(sQLiteDatabase);
                sQLiteDatabase.setVersion(9);
                clearCapabilitySharedPreference();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            super.onOpen(sQLiteDatabase);
        }

        void safeClose(Closeable closeable) {
            if (this.mRefCount.decrementAndGet() > 0) {
                Log.d(CapabilityStorage.LOG_TAG, "safeClose: Someone uses db (" + this.mRefCount.get() + "). Let it close db later!");
                return;
            }
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        Cursor getCursor(String str, String[] strArr, String str2, String[] strArr2) {
            try {
                try {
                    return getReadableDatabase().query(str, strArr, str2, strArr2, null, null, null);
                } catch (SQLiteException e) {
                    Log.e(CapabilityStorage.LOG_TAG, "getCursor: " + e.getMessage());
                    return new MatrixCursor(new String[0]);
                }
            } catch (Throwable unused) {
                return null;
            }
        }

        private void clearCapabilitySharedPreference() {
            Log.i(CapabilityStorage.LOG_TAG, "clearCapabilitySharedPreference");
            SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("capdiscovery", 0);
            if (sharedPreferences != null) {
                sharedPreferences.edit().clear().apply();
            }
        }
    }

    public void persistToContactDB(Capabilities capabilities, boolean z) {
        if (this.mIsKor && this.mNeedResetRcsData) {
            this.mNeedResetRcsData = false;
            deleteAllRcsDataFromContactDB();
        }
        if (capabilities == null) {
            Log.i(LOG_TAG, "persistToContactDB: capex is null");
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "persistToContactDB: isNotifyUpdated " + z);
        this.mUserId = Extensions.ActivityManager.getCurrentUser();
        String number = capabilities.getNumber();
        Uri remoteUriwithUserId = getRemoteUriwithUserId(Uri.parse(ContactsContract.AUTHORITY_URI + "/phone_lookup").buildUpon().appendPath(number).build());
        if (remoteUriwithUserId == null) {
            Log.i(LOG_TAG, "persistToContactDB: remoteUri is null");
            return;
        }
        IMSLog.s(LOG_TAG, this.mPhoneId, "persistToContactDB: remoteUri = " + remoteUriwithUserId);
        try {
            Cursor query = this.mContext.getContentResolver().query(remoteUriwithUserId, new String[]{"number"}, null, null, null);
            try {
                if (query == null) {
                    Log.i(LOG_TAG, "persistToContactDB: fail to read contact db");
                    if (query != null) {
                        query.close();
                        return;
                    }
                    return;
                }
                if (query.getCount() == 0) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "persistToContactDB: no contact found");
                    query.close();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (!arrayList.contains(string)) {
                        arrayList.add(string);
                        putCapabilityToContactDB(string, number, capabilities, z);
                    }
                }
                query.close();
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLiteDiskIOException | IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    private void putCapabilityToContactDB(String str, String str2, Capabilities capabilities, boolean z) {
        IMSLog.s(LOG_TAG, this.mPhoneId, "putCapabilityToContactDB: phoneNumber = " + str);
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Uri remoteUri = setRemoteUri();
        String[] projection = setProjection();
        String selection = setSelection();
        if (remoteUri == null) {
            Log.i(LOG_TAG, "putCapabilityToContactDB: remoteUri is null");
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "putCapabilityToContactDB: remoteUri = " + remoteUri);
        String[] strArr = {str, "vnd.android.cursor.item/phone_v2", MIMETYPE_RCSE};
        HashSet hashSet = new HashSet();
        HashSet<String> hashSet2 = new HashSet();
        Cursor query = this.mContext.getContentResolver().query(remoteUri, projection, selection, strArr, null, null);
        try {
            if (query == null) {
                Log.i(LOG_TAG, "putCapabilityToContactDB: cursor is null");
                if (query != null) {
                    query.close();
                    return;
                }
                return;
            }
            if (query.getCount() > 0) {
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    String string2 = query.getString(1);
                    String string3 = query.getString(2);
                    String string4 = query.getString(3);
                    String string5 = query.getString(4);
                    if (string2 != null) {
                        if (string2.equals(MIMETYPE_RCSE)) {
                            if (TextUtils.equals(string5, str2)) {
                                hashSet2.add(string);
                                hashMap.put(string, string3);
                                hashMap2.put(string, string4);
                            }
                        } else {
                            hashSet.add(string);
                        }
                    }
                }
            }
            query.close();
            IMSLog.s(LOG_TAG, this.mPhoneId, "putCapabilityToContactDB: rawIds = " + hashSet + ", rcsRawIds = " + hashSet2);
            if (hashSet2.size() > 0 && checkCapability(capabilities) == -1) {
                if (isOppositeCapexNull(capabilities)) {
                    Log.i(LOG_TAG, "putCapabilityToContactDB: delete from contact db");
                    deleteFromContactDB(str);
                    return;
                }
                return;
            }
            for (String str3 : hashSet2) {
                HashSet hashSet3 = hashSet;
                needUpdateToContactDB(z, str3, str, capabilities, hashMap, hashMap2);
                hashSet3.remove(str3);
                hashSet = hashSet3;
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                insertToContactDB((String) it.next(), str, str2, capabilities);
            }
        } finally {
        }
    }

    void needUpdateToContactDB(boolean z, String str, String str2, Capabilities capabilities, Map<String, String> map, Map<String, String> map2) {
        Mno mno = SimUtil.getMno();
        boolean isJibeAs = ConfigUtil.isJibeAs(this.mPhoneId);
        if (z) {
            updateToContactDB(str, str2, capabilities);
            return;
        }
        if ((((mno == Mno.ATT || mno == Mno.VZW) && !isJibeAs) || mno.isKor()) && map.get(str) != null && !map.get(str).equals(Long.toString(capabilities.getFeature()))) {
            Log.i(LOG_TAG, "needUpdateToContactDB: capex(longFeatures) is different with contact db = " + map.get(str));
            IMSLog.c(LogClass.CS_DIFF_FEATURE, "N," + str + "," + map.get(str) + "," + capabilities.getFeature());
            updateToContactDB(str, str2, capabilities);
            return;
        }
        if (mno != Mno.VZW || isJibeAs || map2.get(str) == null || map2.get(str).equals(Long.toString(capabilities.getAvailableFeatures()))) {
            return;
        }
        Log.i(LOG_TAG, "needUpdateToContactDB: capex(availableFeatures) is different with contact db = " + map2.get(str));
        IMSLog.c(LogClass.CS_DIFF_AVAILABLEFEATURE, "N," + str + "," + map2.get(str) + "," + capabilities.getAvailableFeatures());
        updateToContactDB(str, str2, capabilities);
    }

    private Uri setRemoteUri() {
        if (this.mUserId == 0) {
            return getRemoteUriwithUserId(ContactsContract.Data.CONTENT_URI);
        }
        return getRemoteUriwithUserId(ContactsContract.RawContactsEntity.CONTENT_URI);
    }

    String[] setProjection() {
        int i;
        int i2;
        if (this.mUserId == 0) {
            if (!RcsUtils.DualRcs.isDualRcsReg() || (i2 = this.mPhoneId) == 0) {
                return new String[]{"raw_contact_id", "mimetype", "data5", "data6", "data2"};
            }
            if (i2 == 1) {
                return new String[]{"raw_contact_id", "mimetype", "data9", "data10", "data2"};
            }
        } else {
            if (!RcsUtils.DualRcs.isDualRcsReg() || (i = this.mPhoneId) == 0) {
                return new String[]{"_id", "mimetype", "data5", "data6", "data2"};
            }
            if (i == 1) {
                return new String[]{"_id", "mimetype", "data9", "data10", "data2"};
            }
        }
        return null;
    }

    boolean isOppositeCapexNull(Capabilities capabilities) {
        if (!RcsUtils.DualRcs.isDualRcsReg()) {
            IMSLog.s(LOG_TAG, this.mPhoneId, "dual rcs is not enabled.");
            return true;
        }
        Capabilities capabilities2 = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule().getCapabilitiesCache(capabilities.getPhoneId() == 1 ? 0 : 1).get(capabilities.getUri());
        if (capabilities2 == null) {
            IMSLog.s(LOG_TAG, this.mPhoneId, "oppositeCapex is null.");
            return true;
        }
        if (checkCapability(capabilities2) == -1) {
            IMSLog.s(LOG_TAG, this.mPhoneId, "oppositeCapex is CAPABLE_NULL.");
            return true;
        }
        IMSLog.s(LOG_TAG, this.mPhoneId, "oppositeCapex is not CAPABLE_NULL.");
        return false;
    }

    void updateToContactDB(String str, String str2, Capabilities capabilities) {
        IMSLog.s(LOG_TAG, this.mPhoneId, "updateToContactDB: phoneNumber : " + str2);
        this.mUpdater.tryPut(ContentProviderOperation.newUpdate(getRemoteUriwithUserId(ContactsContract.Data.CONTENT_URI)).withValues(setContentValues(capabilities)).withSelection("raw_contact_id = ? AND data1 = ? AND mimetype = ?", new String[]{str, str2, MIMETYPE_RCSE}).build());
    }

    private ContentValues setContentValues(Capabilities capabilities) {
        return setContentValues(capabilities, checkCapability(capabilities));
    }

    ContentValues setContentValues(Capabilities capabilities, int i) {
        int i2;
        String num = Integer.toString(i);
        String l = Long.toString(capabilities.getTimestamp().getTime());
        String l2 = Long.toString(capabilities.getFeature());
        String l3 = Long.toString(capabilities.getAvailableFeatures());
        ContentValues contentValues = new ContentValues();
        if (!RcsUtils.DualRcs.isDualRcsReg() || (i2 = this.mPhoneId) == 0) {
            contentValues.put("data3", num);
            contentValues.put("data4", l);
            contentValues.put("data5", l2);
            contentValues.put("data6", l3);
        } else if (i2 == 1) {
            contentValues.put("data7", num);
            contentValues.put("data8", l);
            contentValues.put("data9", l2);
            contentValues.put("data10", l3);
        }
        IMSLog.s(LOG_TAG, this.mPhoneId, "setContentValues: longFeatures = " + l2 + ", longAvailableFeatures = " + l3);
        return contentValues;
    }

    void deleteFromContactDB(String str) {
        IMSLog.s(LOG_TAG, this.mPhoneId, "deleteFromContactDB: phoneNumber : " + str);
        try {
            this.mContext.getContentResolver().delete(getRemoteUriwithUserId(ContactsContract.Data.CONTENT_URI), "Data.DATA1 = ? AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)", new String[]{str, MIMETYPE_RCSE});
        } catch (SQLiteException | IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    void deleteFromContactDB(String str, String str2) {
        IMSLog.s(LOG_TAG, this.mPhoneId, "deleteFromContactDB: phoneNumber = " + str2 + ", rawContactId = " + str);
        try {
            this.mContext.getContentResolver().delete(getRemoteUriwithUserId(ContactsContract.Data.CONTENT_URI), "raw_contact_id = ? AND data1 = ? AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)", new String[]{str, str2, MIMETYPE_RCSE});
        } catch (SQLiteException | IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    void deleteAllRcsDataFromContactDB() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "deleteAllRcsDataFromContactDB:");
        try {
            this.mContext.getContentResolver().delete(getRemoteUriwithUserId(ContactsContract.Data.CONTENT_URI), "mimetype = ?", new String[]{MIMETYPE_RCSE});
        } catch (SQLiteException | IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    public void deleteNonRcsDataFromContactDB() {
        int i;
        IMSLog.i(LOG_TAG, this.mPhoneId, "deleteNonRcsDataFromContactDB:");
        try {
            i = this.mContext.getContentResolver().delete(getRemoteUriwithUserId(ContactsContract.Data.CONTENT_URI), "(((data5 = ? OR data5 = ?) AND data9 is null ) OR ((data9 = ? OR data9 = ?) AND data5 is null ) OR ((data5 = ? OR data5 = ?) AND (data9 = ? OR data9 = ?))) AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)", new String[]{Integer.toString(Capabilities.FEATURE_NON_RCS_USER), Integer.toString(Capabilities.FEATURE_NOT_UPDATED), Integer.toString(Capabilities.FEATURE_NON_RCS_USER), Integer.toString(Capabilities.FEATURE_NOT_UPDATED), Integer.toString(Capabilities.FEATURE_NON_RCS_USER), Integer.toString(Capabilities.FEATURE_NOT_UPDATED), Integer.toString(Capabilities.FEATURE_NON_RCS_USER), Integer.toString(Capabilities.FEATURE_NOT_UPDATED), MIMETYPE_RCSE});
        } catch (SQLiteException | IllegalArgumentException e) {
            e.printStackTrace();
            i = 0;
        }
        IMSLog.i(LOG_TAG, "deleteNonRcsDataFromContactDB: deleted rows = " + i);
        IMSLog.c(LogClass.CS_DEL_NON_RCS_DATA, "N," + i);
    }

    void insertToContactDB(String str, String str2, String str3, Capabilities capabilities) {
        IMSLog.s(LOG_TAG, this.mPhoneId, "insertToContactDB: phoneNumber = " + str2 + ", rawContactId = " + str);
        int checkCapability = checkCapability(capabilities);
        Mno mno = SimUtil.getMno();
        if (checkCapability == -1 || (!mno.isRjil() && checkCapability == 0)) {
            IMSLog.s(LOG_TAG, this.mPhoneId, "insertToContactDB: Ignore inserting CAPABLE_NULL or CAPABLE_NONE");
            return;
        }
        checkAndDeleteGarbageRcsData(str, str2);
        ContentValues contentValues = setContentValues(capabilities, checkCapability);
        contentValues.put("mimetype", MIMETYPE_RCSE);
        contentValues.put("raw_contact_id", str);
        contentValues.put("data1", str2);
        contentValues.put("data2", str3);
        this.mUpdater.tryPut(ContentProviderOperation.newInsert(getRemoteUriwithUserId(ContactsContract.Data.CONTENT_URI)).withValues(contentValues).build());
    }

    void checkAndDeleteGarbageRcsData(String str, String str2) {
        Uri remoteUriwithUserId = getRemoteUriwithUserId(ContactsContract.Data.CONTENT_URI);
        if (remoteUriwithUserId == null) {
            Log.i(LOG_TAG, "checkAndDeleteGarbageRcsData: remoteUri is null");
            return;
        }
        Cursor query = this.mContext.getContentResolver().query(remoteUriwithUserId, new String[]{"data1"}, "raw_contact_id = ? AND data1 <> ? AND mimetype = ?", new String[]{str, str2, MIMETYPE_RCSE}, null, null);
        if (query == null) {
            if (query != null) {
                query.close();
                return;
            }
            return;
        }
        try {
            if (query.getCount() != 0) {
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    Cursor query2 = this.mContext.getContentResolver().query(remoteUriwithUserId, new String[]{"raw_contact_id"}, "raw_contact_id = ? AND data1 = ? AND mimetype <> ?", new String[]{str, string, MIMETYPE_RCSE}, null, null);
                    if (query2 != null) {
                        try {
                            if (query2.getCount() > 0) {
                                query2.moveToFirst();
                                IMSLog.s(LOG_TAG, "checkAndDeleteGarbageRcsData: " + string + " has rawContactId(" + query2.getString(0) + "), so this is not garbage data");
                                query2.close();
                            }
                        } catch (Throwable th) {
                            try {
                                query2.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    if (query2 != null) {
                        query2.close();
                    }
                    IMSLog.s(LOG_TAG, "checkAndDeleteGarbageRcsData: remove garbageNumber(" + string + "), rawContactId(" + str + ") from Contact DB");
                    deleteFromContactDB(str, string);
                }
                query.close();
                return;
            }
            query.close();
        } catch (Throwable th3) {
            try {
                query.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    Uri getRemoteUriwithUserId(Uri uri) {
        return Extensions.ContentProvider.maybeAddUserId(uri, Extensions.ActivityManager.getCurrentUser());
    }

    class SequenceUpdater {
        boolean timeout = false;
        ArrayList<ContentProviderOperation> operationList = new ArrayList<>();

        SequenceUpdater() {
        }

        void tryPut(ContentProviderOperation contentProviderOperation) {
            synchronized (this.operationList) {
                this.operationList.add(contentProviderOperation);
            }
            tryApplybatch();
        }

        void tryApplybatch() {
            if (this.operationList.size() >= 100 || this.timeout) {
                IMSLog.i(CapabilityStorage.LOG_TAG, CapabilityStorage.this.mPhoneId, "tryApplybatch: try size = " + this.operationList.size());
                IMSLog.c(LogClass.CS_APPLY_BATCH_SIZE, "N," + this.operationList.size());
                try {
                    String str = CapabilityStorage.this.mUserId + "@com.android.contacts";
                    IMSLog.s(CapabilityStorage.LOG_TAG, "tryApplybatch: authority = " + str);
                    CapabilityStorage.this.mContext.getContentResolver().applyBatch(str, new ArrayList<>(this.operationList));
                } catch (OperationApplicationException | RemoteException | IllegalStateException e) {
                    e.printStackTrace();
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                    CapabilityStorage.this.mEventLog.logAndAdd("IllegalArgumentException in tryApplybatch userId = " + CapabilityStorage.this.mUserId + ", size = " + this.operationList.size());
                    StringBuilder sb = new StringBuilder();
                    sb.append("N,");
                    sb.append(CapabilityStorage.this.mUserId);
                    IMSLog.c(LogClass.CS_ILLEGALARGU_E, sb.toString());
                } catch (SecurityException e3) {
                    e3.printStackTrace();
                    CapabilityStorage.this.mEventLog.logAndAdd("SecurityException in tryApplybatch userId = " + CapabilityStorage.this.mUserId + ", size = " + this.operationList.size());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("N,");
                    sb2.append(CapabilityStorage.this.mUserId);
                    IMSLog.c(LogClass.CS_SECURITY_E, sb2.toString());
                }
                this.operationList.clear();
                this.timeout = false;
            }
            if (this.operationList.size() == 1) {
                new Handler().postDelayed(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityStorage$SequenceUpdater$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CapabilityStorage.SequenceUpdater.this.lambda$tryApplybatch$0();
                    }
                }, 1000L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$tryApplybatch$0() {
            if (this.operationList.size() > 0) {
                IMSLog.s(CapabilityStorage.LOG_TAG, CapabilityStorage.this.mPhoneId, "tryApplybatch: timeout, try remainder " + this.operationList.size());
                this.timeout = true;
                CapabilityStorage.this.mUpdater.tryApplybatch();
            }
        }
    }

    int checkCapability(Capabilities capabilities) {
        if (capabilities.hasFeature(Capabilities.FEATURE_MMTEL_VIDEO)) {
            return capabilities.isAvailable() ? 6 : 7;
        }
        if (capabilities.hasFeature(Capabilities.FEATURE_CHAT_CPM) || capabilities.hasFeature(Capabilities.FEATURE_CHAT_SIMPLE_IM)) {
            return 1;
        }
        if (capabilities.hasFeature(Capabilities.FEATURE_NON_RCS_USER) || capabilities.hasFeature(Capabilities.FEATURE_NOT_UPDATED)) {
            return -1;
        }
        return (this.mIsKor && capabilities.getFeature() == ((long) Capabilities.FEATURE_OFFLINE_RCS_USER)) ? -1 : 0;
    }
}
