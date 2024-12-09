package com.sec.internal.ims.cmstore;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.cmstore.adapters.CloudMessageBufferDBPersister;
import com.sec.internal.ims.cmstore.helper.DebugFlag;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class CloudMessageProvider extends ContentProvider {
    private static final int SIM_1 = 0;
    private static final int SIM_2 = 1;
    private static boolean mDualDBRequired = false;
    protected static UriMatcher sUriMatcher = null;
    private static final String simSlot2 = "/slot2";
    protected static final String LOG_TAG = CloudMessageProvider.class.getSimpleName();
    protected static CloudMessageBufferDBPersister[] mBufferDB = new CloudMessageBufferDBPersister[2];
    private static final Hashtable<Integer, Boolean> mBufferDBInitialized = new Hashtable<>();
    protected static String PROVIDER_NAME = "com.samsung.rcs.cmstore";

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        mDualDBRequired = false;
        uriMatcher.addURI(PROVIDER_NAME, "smsmessages/#", 3);
        sUriMatcher.addURI(PROVIDER_NAME, "mmspdumessage/#", 4);
        sUriMatcher.addURI(PROVIDER_NAME, "mmsaddrmessages/#", 5);
        sUriMatcher.addURI(PROVIDER_NAME, "mmspartmessages/#", 6);
        sUriMatcher.addURI(PROVIDER_NAME, "mmspartmessages_partid/#", 8);
        sUriMatcher.addURI(PROVIDER_NAME, "rcschatmessage/#", 1);
        sUriMatcher.addURI(PROVIDER_NAME, "rcsftmessage/#", 1);
        sUriMatcher.addURI(PROVIDER_NAME, "rcsmessages/#", 1);
        sUriMatcher.addURI(PROVIDER_NAME, "notification/#", 13);
        sUriMatcher.addURI(PROVIDER_NAME, "summarytable/#", 7);
        sUriMatcher.addURI(PROVIDER_NAME, "latestmessage/#", 33);
        sUriMatcher.addURI(PROVIDER_NAME, CloudMessageProviderContract.CONTENTPRDR_ALL_SMSMESSAGES, 31);
        sUriMatcher.addURI(PROVIDER_NAME, CloudMessageProviderContract.CONTENTPRDR_ALL_MMSPDUMESSAGE, 32);
        sUriMatcher.addURI(PROVIDER_NAME, CloudMessageProviderContract.CONTENTPRDR_USER_OPT_IN_STATUS, 37);
        sUriMatcher.addURI(PROVIDER_NAME, "max_small_file_size", 40);
        sUriMatcher.addURI(PROVIDER_NAME, "smsmessages/slot2/#", 43);
        sUriMatcher.addURI(PROVIDER_NAME, "mmspdumessage/slot2/#", 44);
        sUriMatcher.addURI(PROVIDER_NAME, "mmsaddrmessages/slot2/#", 45);
        sUriMatcher.addURI(PROVIDER_NAME, "mmspartmessages/slot2/#", 46);
        sUriMatcher.addURI(PROVIDER_NAME, "mmspartmessages_partid/slot2/#", 48);
        sUriMatcher.addURI(PROVIDER_NAME, "rcschatmessage/slot2/#", 41);
        sUriMatcher.addURI(PROVIDER_NAME, "rcsftmessage/slot2/#", 41);
        sUriMatcher.addURI(PROVIDER_NAME, "rcsmessages/slot2/#", 41);
        sUriMatcher.addURI(PROVIDER_NAME, "rcsparticipants/slot2/*", 42);
        sUriMatcher.addURI(PROVIDER_NAME, "rcssession/slot2/*", 50);
        sUriMatcher.addURI(PROVIDER_NAME, "notification/slot2/#", 53);
        sUriMatcher.addURI(PROVIDER_NAME, "summarytable/slot2/#", 47);
        sUriMatcher.addURI(PROVIDER_NAME, "rcsmessageimdn/slot2/*", 55);
        sUriMatcher.addURI(PROVIDER_NAME, "notificationimdn/slot2/*", 72);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingsmsmessages/slot2/*", 56);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingmmspdumessage/slot2/*", 57);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingrcschatmessage/slot2/*", 58);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingrcsftmessage/slot2/*", 59);
        sUriMatcher.addURI(PROVIDER_NAME, "latestmessage/slot2/#", 62);
        sUriMatcher.addURI(PROVIDER_NAME, "allsmsmessages/slot2", 60);
        sUriMatcher.addURI(PROVIDER_NAME, "allmmspdumessage/slot2", 61);
        sUriMatcher.addURI(PROVIDER_NAME, "useroptinflag/slot2", 64);
        sUriMatcher.addURI(PROVIDER_NAME, "max_small_file_size/slot2", 73);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmmessages/slot2/*", 65);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmprofile/slot2/*", 68);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmgreeting/slot2/*", 66);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmpin/slot2/*", 67);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmquota/slot2/*", 69);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingvvmmessages/slot2/*", 70);
        sUriMatcher.addURI(PROVIDER_NAME, "multilinestatus/slot2/*", 71);
        sUriMatcher.addURI(PROVIDER_NAME, "rcsparticipants/*", 2);
        sUriMatcher.addURI(PROVIDER_NAME, "rcssession/*", 10);
        sUriMatcher.addURI(PROVIDER_NAME, "rcsmessageimdn/*", 15);
        sUriMatcher.addURI(PROVIDER_NAME, "notificationimdn/*", 39);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmmessages/*", 17);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmprofile/*", 20);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmgreeting/*", 18);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmpin/*", 19);
        sUriMatcher.addURI(PROVIDER_NAME, "vvmquota/*", 36);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingsmsmessages/*", 24);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingmmspdumessage/*", 25);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingrcschatmessage/*", 26);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingrcsftmessage/*", 27);
        sUriMatcher.addURI(PROVIDER_NAME, "pendingvvmmessages/*", 28);
        sUriMatcher.addURI(PROVIDER_NAME, "multilinestatus/*", 23);
        sUriMatcher.addURI(PROVIDER_NAME, CloudMessageProviderContract.CONTENTPRDR_USER_DEBUG_FLAG, 99);
        sUriMatcher.addURI(PROVIDER_NAME, "userdebugstatus/*", 100);
        sUriMatcher.addURI(PROVIDER_NAME, CloudMessageProviderContract.CONTENTPRDR_MIGRATE_SUCCESS, 35);
        sUriMatcher.addURI(PROVIDER_NAME, CloudMessageProviderContract.CONTENTPRDR_AMBSFEATURE_VERSION, 98);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int delete(android.net.Uri r4, java.lang.String r5, java.lang.String[] r6) {
        /*
            r3 = this;
            java.lang.String r0 = com.sec.internal.ims.cmstore.CloudMessageProvider.LOG_TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "delete "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            com.sec.internal.log.IMSLog.s(r0, r1)
            com.sec.internal.ims.cmstore.adapters.CloudMessageBufferDBPersister r3 = r3.getSimSlotBuff(r4)
            android.content.UriMatcher r0 = com.sec.internal.ims.cmstore.CloudMessageProvider.sUriMatcher
            int r4 = r0.match(r4)
            switch(r4) {
                case 1: goto L4c;
                case 2: goto L46;
                case 3: goto L40;
                case 4: goto L3a;
                case 5: goto L34;
                case 6: goto L2e;
                case 7: goto L28;
                default: goto L23;
            }
        L23:
            switch(r4) {
                case 41: goto L4c;
                case 42: goto L46;
                case 43: goto L40;
                case 44: goto L3a;
                case 45: goto L34;
                case 46: goto L2e;
                case 47: goto L28;
                default: goto L26;
            }
        L26:
            r3 = 0
            goto L51
        L28:
            r4 = 7
            int r3 = r3.deleteTable(r4, r5, r6)
            goto L51
        L2e:
            r4 = 6
            int r3 = r3.deleteTable(r4, r5, r6)
            goto L51
        L34:
            r4 = 5
            int r3 = r3.deleteTable(r4, r5, r6)
            goto L51
        L3a:
            r4 = 4
            int r3 = r3.deleteTable(r4, r5, r6)
            goto L51
        L40:
            r4 = 3
            int r3 = r3.deleteTable(r4, r5, r6)
            goto L51
        L46:
            r4 = 2
            int r3 = r3.deleteTable(r4, r5, r6)
            goto L51
        L4c:
            r4 = 1
            int r3 = r3.deleteTable(r4, r5, r6)
        L51:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.CloudMessageProvider.delete(android.net.Uri, java.lang.String, java.lang.String[]):int");
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        IMSLog.s(LOG_TAG, "insert " + uri);
        return null;
    }

    private static void setDualDBEnable(MessageStoreClient messageStoreClient) {
        Mno simMno = SimUtil.getSimMno(messageStoreClient.getClientID());
        if (Mno.ATT.equals(simMno) || Mno.TMOUS.equals(simMno)) {
            IMSLog.i(LOG_TAG, "setDualDBEnable() mDualDBRequired set true for ATT&T/TMOUS case");
            mDualDBRequired = true;
        } else {
            IMSLog.i(LOG_TAG, "setDualDBEnable() non ATT&T/TMOUS case");
        }
    }

    public static synchronized void createBufferDBInstance(MessageStoreClient messageStoreClient) {
        synchronized (CloudMessageProvider.class) {
            String str = LOG_TAG;
            IMSLog.i(str, "createBufferDBInstance() slot: " + messageStoreClient.getClientID() + ", mDualDBRequired: " + mDualDBRequired);
            Hashtable<Integer, Boolean> hashtable = mBufferDBInitialized;
            if (!hashtable.containsKey(Integer.valueOf(messageStoreClient.getClientID()))) {
                IMSLog.i(str, "createBufferDBInstance() DB not loaded");
                setDualDBEnable(messageStoreClient);
                initBufferDB(messageStoreClient);
                hashtable.put(Integer.valueOf(messageStoreClient.getClientID()), Boolean.TRUE);
            } else {
                IMSLog.i(str, "createBufferDBInstance() already loaded");
            }
        }
    }

    private static void initBufferDB(MessageStoreClient messageStoreClient) {
        int clientID = messageStoreClient.getClientID();
        String str = LOG_TAG;
        IMSLog.i(str, "initBufferDB() mDualDBRequired: " + mDualDBRequired + ", for slot: " + clientID);
        if (mDualDBRequired) {
            mBufferDB[clientID] = CloudMessageBufferDBPersister.getInstance(messageStoreClient.getContext(), clientID, mDualDBRequired);
            mBufferDB[clientID].load();
            return;
        }
        Hashtable<Integer, Boolean> hashtable = mBufferDBInitialized;
        if (hashtable.containsKey(0) || hashtable.containsKey(1)) {
            IMSLog.i(str, "initBufferDB() DB already loaded for single DB Case");
        } else {
            mBufferDB[0] = CloudMessageBufferDBPersister.getInstance(messageStoreClient.getContext(), 0, mDualDBRequired);
            mBufferDB[0].load();
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        IMSLog.s(LOG_TAG, "onCreate()");
        return true;
    }

    private Cursor removeCoTag(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(cursor.getColumnNames()));
        if (arrayList.contains(CloudMessageProviderContract.BufferDBSMS.GROUP_COTAG)) {
            arrayList.remove(CloudMessageProviderContract.BufferDBSMS.GROUP_COTAG);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        MatrixCursor matrixCursor = new MatrixCursor(strArr);
        if (cursor.moveToFirst()) {
            do {
                MatrixCursor.RowBuilder newRow = matrixCursor.newRow();
                for (String str : strArr) {
                    int columnIndex = cursor.getColumnIndex(str);
                    int type = cursor.getType(columnIndex);
                    if (type == 1) {
                        newRow.add(Long.valueOf(cursor.getLong(columnIndex)));
                    } else if (type == 2) {
                        newRow.add(Float.valueOf(cursor.getFloat(columnIndex)));
                    } else if (type == 3) {
                        newRow.add(cursor.getString(columnIndex));
                    } else if (type == 4) {
                        newRow.add(cursor.getBlob(columnIndex));
                    } else {
                        newRow.add(null);
                        Log.i(LOG_TAG, "Type default: " + type);
                    }
                }
            } while (cursor.moveToNext());
        }
        return matrixCursor;
    }

    private CloudMessageBufferDBPersister getSimSlotBuff(Uri uri) {
        String str = LOG_TAG;
        IMSLog.d(str, "getSimSlotBuff mDualDBRequired: " + mDualDBRequired);
        if (sUriMatcher.match(uri) >= 41 && sUriMatcher.match(uri) <= 73) {
            IMSLog.d(str, "getSimSlotBuff mDualDBRequired slot: 1");
            if (mDualDBRequired) {
                return mBufferDB[1];
            }
            return mBufferDB[0];
        }
        return mBufferDB[0];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0284  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.database.Cursor query(android.net.Uri r18, java.lang.String[] r19, java.lang.String r20, java.lang.String[] r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 1458
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.CloudMessageProvider.query(android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String):android.database.Cursor");
    }

    private List<String> getMultiLineStatus(CloudMessageBufferDBPersister cloudMessageBufferDBPersister, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Cursor queryTable = cloudMessageBufferDBPersister.queryTable(23, (String[]) null, "linenum=?", new String[]{str}, (String) null);
            if (queryTable != null) {
                try {
                    if (queryTable.moveToFirst()) {
                        do {
                            arrayList.add(OMASyncEventType.valueOf(queryTable.getInt(queryTable.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCSTATUS))).toString());
                            arrayList.add(OMASyncEventType.valueOf(queryTable.getInt(queryTable.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.INITUPLOADSTATUS))).toString());
                            arrayList.add(OMASyncEventType.valueOf(queryTable.getInt(queryTable.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCMESSAGESTATUS))).toString());
                        } while (queryTable.moveToNext());
                    }
                } finally {
                }
            }
            if (queryTable != null) {
                queryTable.close();
            }
        } catch (IllegalArgumentException e) {
            Log.d(LOG_TAG, "IllegalArgumentException " + e.getMessage());
        }
        return arrayList;
    }

    private String getServerConfig(CloudMessagePreferenceManager cloudMessagePreferenceManager) {
        String oasisServerRoot = cloudMessagePreferenceManager.getOasisServerRoot();
        IMSLog.s(LOG_TAG, "serverRoot " + oasisServerRoot);
        return oasisServerRoot.contains("dev") ? "DEV" : oasisServerRoot.contains("stg") ? "STAGING" : "PROD";
    }

    private String getNCChannelUrl(CloudMessagePreferenceManager cloudMessagePreferenceManager) {
        String oMAChannelResURL = cloudMessagePreferenceManager.getOMAChannelResURL();
        if (TextUtils.isEmpty(oMAChannelResURL)) {
            IMSLog.d(LOG_TAG, "resUrl is null");
            return "INVALID";
        }
        return "channel/" + Util.getLastPathFromUrl(oMAChannelResURL);
    }

    private String getNCCreationTime(CloudMessagePreferenceManager cloudMessagePreferenceManager) {
        if (cloudMessagePreferenceManager.getOMAChannelCreateTime() == 0) {
            return "";
        }
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(cloudMessagePreferenceManager.getOMAChannelCreateTime()));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int update(android.net.Uri r6, android.content.ContentValues r7, java.lang.String r8, java.lang.String[] r9) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.CloudMessageProvider.update(android.net.Uri, android.content.ContentValues, java.lang.String, java.lang.String[]):int");
    }

    private boolean needToResetMcsData(int i, String str) {
        if (!CmsUtil.isMcsSupported(getContext(), i)) {
            return false;
        }
        String keyStringValueOfUserDebug = CloudMessageService.getClientByID(i).getPrerenceManager().getKeyStringValueOfUserDebug(DebugFlag.MCS_URL, "");
        IMSLog.i(LOG_TAG, "newUrl: " + str);
        return !keyStringValueOfUserDebug.equals(str);
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        int columnIndex;
        int i;
        int match = sUriMatcher.match(uri);
        if (match != 8 && match != 9) {
            throw new IllegalArgumentException("URI invalid. Use an id-based URI only.");
        }
        Cursor query = query(uri, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    if (match == 8) {
                        columnIndex = query.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpart._DATA);
                    } else {
                        columnIndex = match == 9 ? query.getColumnIndex(ImContract.CsSession.FILE_PATH) : -1;
                    }
                    String string = columnIndex >= 0 ? query.getString(columnIndex) : null;
                    if (query.moveToNext()) {
                        throw new FileNotFoundException("Multiple items at " + uri);
                    }
                    if (string == null) {
                        throw new FileNotFoundException("File path is null");
                    }
                    query.close();
                    File file = new File(string);
                    if (str.contains("w")) {
                        if (!file.exists()) {
                            try {
                                file.createNewFile();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                        i = 536870912;
                    } else {
                        i = 0;
                    }
                    if (str.contains("r")) {
                        i |= LogClass.SIM_EVENT;
                    }
                    if (str.contains("+")) {
                        i |= 33554432;
                    }
                    return ParcelFileDescriptor.open(file, i);
                }
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
        }
        throw new FileNotFoundException("No entry for " + uri);
    }

    private Cursor getMaxSmallFileSize(int i) {
        long maxSmallFileSize = CloudMessageService.getClientByID(i) != null ? CloudMessageService.getClientByID(i).getPrerenceManager().getMaxSmallFileSize() * 1024 * 1024 : 0L;
        IMSLog.s(LOG_TAG, "getMaxSmallFileSize slotId: " + i + ", maxSmallFileSize: " + maxSmallFileSize);
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"max_small_file_size"});
        matrixCursor.newRow().add(Long.valueOf(maxSmallFileSize));
        return matrixCursor;
    }
}
