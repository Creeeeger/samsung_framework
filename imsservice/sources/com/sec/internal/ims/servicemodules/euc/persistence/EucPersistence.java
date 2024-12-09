package com.sec.internal.ims.servicemodules.euc.persistence;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.tapi.UserConsentProviderContract;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.servicemodules.euc.data.AutoconfUserConsentData;
import com.sec.internal.ims.servicemodules.euc.data.EucMessageKey;
import com.sec.internal.ims.servicemodules.euc.data.EucState;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.data.IDialogData;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;
import com.sec.internal.ims.servicemodules.euc.locale.DeviceLocale;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class EucPersistence implements IEucPersistence {
    private static final String LOG_TAG = "EucPersistence";
    private SQLiteDatabase mDb = null;
    private final IEucFactory mEucFactory;
    private final EucSQLiteHelper mEucSQLiteHelper;
    private boolean mIsDbOpened;

    public EucPersistence(Context context, IEucFactory iEucFactory) {
        this.mEucSQLiteHelper = EucSQLiteHelper.getInstance((Context) Preconditions.checkNotNull(context));
        this.mEucFactory = (IEucFactory) Preconditions.checkNotNull(iEucFactory);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void updateEuc(EucMessageKey eucMessageKey, EucState eucState, String str) throws EucPersistenceException {
        String str2 = LOG_TAG;
        Log.d(str2, "updateEuc with " + eucMessageKey + " to state=" + eucState + " or PIN=" + str);
        if (this.mDb == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        String str3 = UserConsentProviderContract.UserConsentList.ID + "='" + eucMessageKey.getEucId() + "' AND TYPE" + AuthenticationHeaders.HEADER_PRARAM_SPERATOR + eucMessageKey.getEucType().getId() + " AND " + UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY + "='" + eucMessageKey.getOwnIdentity() + "' AND " + UserConsentProviderContract.UserConsentList.REMOTE_URI + "='" + eucMessageKey.getRemoteUri().encode() + "'";
        IMSLog.s(str2, "update EUCData where " + str3);
        ContentValues contentValues = new ContentValues();
        contentValues.put(UserConsentProviderContract.UserConsentList.STATE, Integer.valueOf(eucState.getId()));
        if (str != null) {
            contentValues.put("USER_PIN", str);
        }
        if (this.mDb.update("EUCRDATA", contentValues, str3, null) == 0) {
            throw new EucPersistenceException("No records were updated");
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void insertEuc(IEucData iEucData) throws EucPersistenceException {
        if (iEucData == null) {
            throw new EucPersistenceException("eucData is null");
        }
        if (this.mDb == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        IMSLog.s(LOG_TAG, "insert EUCData to database for User Identity" + iEucData.getOwnIdentity());
        ContentValues contentValues = new ContentValues();
        contentValues.put(UserConsentProviderContract.UserConsentList.ID, iEucData.getId());
        contentValues.put(CloudMessageProviderContract.DataTypes.VVMPIN, Integer.valueOf(iEucData.getPin() ? 1 : 0));
        contentValues.put("EXTERNAL", Integer.valueOf(iEucData.getExternal() ? 1 : 0));
        contentValues.put(UserConsentProviderContract.UserConsentList.STATE, Integer.valueOf(iEucData.getState().getId()));
        contentValues.put("TYPE", Integer.valueOf(iEucData.getType().getId()));
        contentValues.put(UserConsentProviderContract.UserConsentList.REMOTE_URI, iEucData.getRemoteUri().encode());
        contentValues.put(UserConsentProviderContract.UserConsentList.TIMESTAMP, Long.valueOf(iEucData.getTimestamp()));
        contentValues.put("TIMEOUT", iEucData.getTimeOut());
        contentValues.put(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY, iEucData.getOwnIdentity());
        if (this.mDb.insert("EUCRDATA", null, contentValues) == -1) {
            throw new EucPersistenceException("No records were inserted");
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void insertDialogs(IEucQuery iEucQuery) throws EucPersistenceException {
        Log.d(LOG_TAG, "insert DialogData to database");
        if (iEucQuery == null) {
            throw new EucPersistenceException("DialogData is null");
        }
        SQLiteDatabase sQLiteDatabase = this.mDb;
        if (sQLiteDatabase == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        sQLiteDatabase.beginTransaction();
        try {
            for (IDialogData iDialogData : iEucQuery) {
                if (iDialogData != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(UserConsentProviderContract.UserConsentList.ID, iDialogData.getKey().getEucId());
                    contentValues.put("TYPE", Integer.valueOf(iEucQuery.getEucData().getType().getId()));
                    contentValues.put("LANGUAGE", iDialogData.getLanguage());
                    contentValues.put("TEXT", iDialogData.getText());
                    contentValues.put("SUBJECT", iDialogData.getSubject());
                    contentValues.put("ACCEPT_BUTTON", iDialogData.getAcceptButton());
                    contentValues.put("REJECT_BUTTON", iDialogData.getRejectButton());
                    contentValues.put(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY, iEucQuery.getEucData().getOwnIdentity());
                    contentValues.put(UserConsentProviderContract.UserConsentList.REMOTE_URI, iDialogData.getKey().getRemoteUri().encode());
                    if (this.mDb.insert("DIALOG", null, contentValues) == -1) {
                        throw new EucPersistenceException("No records were inserted");
                    }
                }
            }
            this.mDb.setTransactionSuccessful();
        } finally {
            this.mDb.endTransaction();
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void insertAutoconfUserConsent(AutoconfUserConsentData autoconfUserConsentData) throws EucPersistenceException {
        Log.d(LOG_TAG, "insertAutoconfUserConsent");
        if (autoconfUserConsentData == null) {
            throw new EucPersistenceException("userConsentData is null");
        }
        if (this.mDb == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        String str = "config" + autoconfUserConsentData.getTimestamp();
        ContentValues contentValues = new ContentValues();
        contentValues.put(UserConsentProviderContract.UserConsentList.ID, str);
        contentValues.put(UserConsentProviderContract.UserConsentList.STATE, Integer.valueOf(autoconfUserConsentData.isUserAccept() ? EucState.ACCEPTED.getId() : EucState.REJECTED.getId()));
        EucType eucType = EucType.EULA;
        contentValues.put("TYPE", Integer.valueOf(eucType.getId()));
        contentValues.put(UserConsentProviderContract.UserConsentList.TIMESTAMP, Long.valueOf(autoconfUserConsentData.getTimestamp()));
        contentValues.put(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY, autoconfUserConsentData.getOwnIdentity());
        if (this.mDb.insert("EUCRDATA", null, contentValues) == -1) {
            throw new EucPersistenceException("No records were inserted");
        }
        contentValues.clear();
        contentValues.put(UserConsentProviderContract.UserConsentList.ID, str);
        contentValues.put("TYPE", Integer.valueOf(eucType.getId()));
        contentValues.put("LANGUAGE", DeviceLocale.DEFAULT_LANG_VALUE);
        contentValues.put("SUBJECT", autoconfUserConsentData.getConsentMsgTitle());
        contentValues.put("TEXT", autoconfUserConsentData.getConsentMsgMessage());
        contentValues.put(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY, autoconfUserConsentData.getOwnIdentity());
        if (this.mDb.insert("DIALOG", null, contentValues) == -1) {
            throw new EucPersistenceException("No records were inserted");
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IDialogData> getDialogs(List<String> list, EucType eucType, String str, List<String> list2) throws EucPersistenceException, IllegalArgumentException {
        IMSLog.s(LOG_TAG, "getDialogsForId: ids: " + Arrays.toString(list.toArray()) + ", type: " + eucType.getId() + " lang: " + str + " ownIdentity: " + Arrays.toString(list2.toArray()));
        if (this.mDb == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        if (list.isEmpty() || list2.isEmpty()) {
            throw new EucPersistenceException("eucIds list (size=" + list.size() + ") or ownIdentities list (size =" + list2.size() + ") is empty");
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        sb.append("(");
        sb.append(UserConsentProviderContract.UserConsentList.ID);
        sb.append("='");
        sb.append(it.next());
        sb.append("'");
        while (it.hasNext()) {
            sb.append(" OR ");
            sb.append(UserConsentProviderContract.UserConsentList.ID);
            sb.append("='");
            sb.append(it.next());
            sb.append("'");
        }
        sb.append(")");
        sb.append(" AND (");
        sb.append("LANGUAGE");
        sb.append("='");
        sb.append(str);
        sb.append("' OR ");
        sb.append("LANGUAGE");
        sb.append("='def')");
        sb.append(" AND ");
        sb.append("TYPE");
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append(eucType.getId());
        Iterator<String> it2 = list2.iterator();
        sb.append(" AND (");
        sb.append(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY);
        sb.append("='");
        sb.append(it2.next());
        sb.append("'");
        while (it2.hasNext()) {
            sb.append(" OR ");
            sb.append(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY);
            sb.append("='");
            sb.append(it2.next());
            sb.append("'");
        }
        sb.append(")");
        String sb2 = sb.toString();
        IMSLog.s(LOG_TAG, "select from DIALOG table where " + sb2);
        try {
            Cursor query = this.mDb.query("DIALOG", null, sb2, null, null, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        arrayList.add(createDialogData(query));
                    } finally {
                    }
                }
            }
            if (query != null) {
                query.close();
            }
            return arrayList;
        } catch (SQLException e) {
            IMSLog.e(LOG_TAG, "SQL Exception " + e);
            throw new EucPersistenceException("SQL Exception occured!");
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IDialogData> getDialogsByTypes(EucState eucState, List<EucType> list, String str, String str2) throws EucPersistenceException, IllegalArgumentException {
        IMSLog.s(LOG_TAG, "getDialogsByTypes: state: " + eucState.getId() + "type: " + Arrays.toString(list.toArray()) + " lang: " + str + " ownIdentity: " + str2);
        if (this.mDb == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        if (list.isEmpty()) {
            throw new IllegalArgumentException("types list is empty");
        }
        StringBuilder sb = new StringBuilder("SELECT * FROM ");
        sb.append("DIALOG");
        sb.append(" JOIN ");
        sb.append("EUCRDATA");
        sb.append(" ON ");
        sb.append("DIALOG");
        sb.append(".");
        sb.append(UserConsentProviderContract.UserConsentList.ID);
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append("EUCRDATA");
        sb.append(".");
        sb.append(UserConsentProviderContract.UserConsentList.ID);
        sb.append(" AND ");
        sb.append("DIALOG");
        sb.append(".");
        sb.append(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY);
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append("EUCRDATA");
        sb.append(".");
        sb.append(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY);
        sb.append(" AND ");
        sb.append("DIALOG");
        sb.append(".");
        sb.append(UserConsentProviderContract.UserConsentList.REMOTE_URI);
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append("EUCRDATA");
        sb.append(".");
        sb.append(UserConsentProviderContract.UserConsentList.REMOTE_URI);
        sb.append(" AND ");
        sb.append("DIALOG");
        sb.append(".");
        sb.append("TYPE");
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append("EUCRDATA");
        sb.append(".");
        sb.append("TYPE");
        sb.append(" WHERE ");
        sb.append("EUCRDATA");
        sb.append(".");
        sb.append(UserConsentProviderContract.UserConsentList.STATE);
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append(eucState.getId());
        sb.append(" AND ");
        sb.append("DIALOG");
        sb.append(".");
        sb.append(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY);
        sb.append("='");
        sb.append(str2);
        sb.append("'");
        sb.append(" AND (");
        sb.append("DIALOG");
        sb.append(".");
        sb.append("LANGUAGE");
        sb.append("='");
        sb.append(DeviceLocale.DEFAULT_LANG_VALUE);
        sb.append("'");
        if (!str.equals(DeviceLocale.DEFAULT_LANG_VALUE)) {
            sb.append(" OR ");
            sb.append("DIALOG");
            sb.append(".");
            sb.append("LANGUAGE");
            sb.append("='");
            sb.append(str);
            sb.append("'");
        }
        sb.append(") AND (");
        Iterator<EucType> it = list.iterator();
        if (it.hasNext()) {
            sb.append("DIALOG");
            sb.append(".");
            sb.append("TYPE");
            sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
            sb.append(it.next().getId());
            while (it.hasNext()) {
                sb.append(" OR ");
                sb.append("DIALOG");
                sb.append(".");
                sb.append("TYPE");
                sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                sb.append(it.next().getId());
            }
        }
        sb.append(");");
        String sb2 = sb.toString();
        IMSLog.s(LOG_TAG, "getDialogsByTypes query: " + sb2);
        ArrayList arrayList = new ArrayList();
        try {
            Cursor rawQuery = this.mDb.rawQuery(sb2, null);
            if (rawQuery != null) {
                while (rawQuery.moveToNext()) {
                    try {
                        arrayList.add(createDialogData(rawQuery));
                    } finally {
                    }
                }
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            Log.d(LOG_TAG, "getDialogsByTypes return list size: " + arrayList.size());
            return arrayList;
        } catch (SQLException e) {
            Log.e(LOG_TAG, "SQL Exception " + e);
            throw new EucPersistenceException("SQL Exception occured!");
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IEucData> getAllEucs(EucState eucState, EucType eucType, String str) throws EucPersistenceException {
        String str2 = LOG_TAG;
        IMSLog.s(str2, "getAllEucs: state: " + eucState.getId() + " type: " + eucType.getId() + " ownIdentity: " + str);
        if (this.mDb == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        String str3 = UserConsentProviderContract.UserConsentList.STATE + AuthenticationHeaders.HEADER_PRARAM_SPERATOR + eucState.getId() + " AND TYPE" + AuthenticationHeaders.HEADER_PRARAM_SPERATOR + eucType.getId() + " AND " + UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY + "=\"" + str + CmcConstants.E_NUM_STR_QUOTE;
        IMSLog.s(str2, "getAllEucs where " + str3);
        return queryEucDataUsingSelection(str3);
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IEucData> getAllEucs(List<EucState> list, EucType eucType, String str) throws EucPersistenceException, IllegalArgumentException {
        IMSLog.s(LOG_TAG, "getAllEucs: state: " + list.toString() + " type: " + eucType.getId() + " ownIdentity: " + str);
        if (this.mDb == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        if (list.isEmpty()) {
            throw new IllegalArgumentException("states list is empty");
        }
        StringBuilder sb = new StringBuilder("(");
        Iterator<EucState> it = list.iterator();
        sb.append(UserConsentProviderContract.UserConsentList.STATE);
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append(it.next().getId());
        while (it.hasNext()) {
            sb.append(" OR ");
            sb.append(UserConsentProviderContract.UserConsentList.STATE);
            sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
            sb.append(it.next().getId());
        }
        sb.append(") AND ");
        sb.append("TYPE");
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append(eucType.getId());
        sb.append(" AND ");
        sb.append(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY);
        sb.append("=\"");
        sb.append(str);
        sb.append(CmcConstants.E_NUM_STR_QUOTE);
        IMSLog.s(LOG_TAG, "getAllEucs where " + ((Object) sb));
        return queryEucDataUsingSelection(sb.toString());
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IEucData> getAllEucs(EucState eucState, List<EucType> list, String str) throws EucPersistenceException, IllegalArgumentException {
        IMSLog.s(LOG_TAG, "getAllEucs: states: " + eucState.getId() + " types: " + list.toString() + " ownIdentity: " + str);
        if (this.mDb == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        if (list.isEmpty()) {
            throw new IllegalArgumentException("types list is empty");
        }
        StringBuilder sb = new StringBuilder("(");
        Iterator<EucType> it = list.iterator();
        if (it.hasNext()) {
            sb.append("TYPE");
            sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
            sb.append(it.next().getId());
            while (it.hasNext()) {
                sb.append(" OR ");
                sb.append("TYPE");
                sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                sb.append(it.next().getId());
            }
        }
        sb.append(") AND ");
        sb.append(UserConsentProviderContract.UserConsentList.STATE);
        sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
        sb.append(eucState.getId());
        sb.append(" AND ");
        sb.append(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY);
        sb.append("=\"");
        sb.append(str);
        sb.append(CmcConstants.E_NUM_STR_QUOTE);
        IMSLog.s(LOG_TAG, "getAllEucs where " + ((Object) sb));
        return queryEucDataUsingSelection(sb.toString());
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public List<IEucData> getAllEucs(List<EucState> list, List<EucType> list2, String str) throws EucPersistenceException, IllegalArgumentException {
        IMSLog.s(LOG_TAG, "getAllEucs: states: " + list.toString() + " types: " + list2.toString() + " ownIdentity: " + str);
        if (this.mDb == null) {
            throw new EucPersistenceException("db instance is null, no access to EUCR database");
        }
        if (list2.isEmpty() || list.isEmpty()) {
            throw new EucPersistenceException("types list (size=" + list2.size() + ") or states list (size =" + list.size() + ") is empty");
        }
        StringBuilder sb = new StringBuilder("(");
        Iterator<EucType> it = list2.iterator();
        if (it.hasNext()) {
            sb.append("TYPE");
            sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
            sb.append(it.next().getId());
            while (it.hasNext()) {
                sb.append(" OR ");
                sb.append("TYPE");
                sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                sb.append(it.next().getId());
            }
        }
        sb.append(") AND (");
        Iterator<EucState> it2 = list.iterator();
        if (it2.hasNext()) {
            sb.append(UserConsentProviderContract.UserConsentList.STATE);
            sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
            sb.append(it2.next().getId());
            while (it2.hasNext()) {
                sb.append(" OR ");
                sb.append(UserConsentProviderContract.UserConsentList.STATE);
                sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                sb.append(it2.next().getId());
            }
        }
        sb.append(") AND ");
        sb.append(UserConsentProviderContract.UserConsentList.SUBSCRIBER_IDENTITY);
        sb.append("=\"");
        sb.append(str);
        sb.append(CmcConstants.E_NUM_STR_QUOTE);
        IMSLog.s(LOG_TAG, "getAllEucs where " + ((Object) sb));
        return queryEucDataUsingSelection(sb.toString());
    }

    private List<IEucData> queryEucDataUsingSelection(String str) throws EucPersistenceException {
        ArrayList arrayList = new ArrayList();
        try {
            Cursor query = this.mDb.query("EUCRDATA", null, str, null, null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        while (!query.isAfterLast()) {
                            arrayList.add(createEucData(query));
                            query.moveToNext();
                        }
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
            return arrayList;
        } catch (SQLException e) {
            Log.e(LOG_TAG, "SQL Exception " + e);
            throw new EucPersistenceException("SQL Exception occured!");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x00b5 A[Catch: SQLException -> 0x00b9, TRY_LEAVE, TryCatch #0 {SQLException -> 0x00b9, blocks: (B:5:0x008d, B:9:0x00b5, B:20:0x00b1, B:23:0x00ae, B:13:0x009d, B:15:0x00a3, B:19:0x00a9), top: B:4:0x008d, inners: #1, #2 }] */
    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sec.internal.ims.servicemodules.euc.data.IEucData getEucByKey(com.sec.internal.ims.servicemodules.euc.data.EucMessageKey r15) throws com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException {
        /*
            r14 = this;
            java.lang.String r0 = com.sec.internal.ims.servicemodules.euc.persistence.EucPersistence.LOG_TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "getEucByKey: eucMessageKey="
            r1.append(r2)
            r1.append(r15)
            java.lang.String r1 = r1.toString()
            com.sec.internal.log.IMSLog.s(r0, r1)
            android.database.sqlite.SQLiteDatabase r1 = r14.mDb
            if (r1 == 0) goto Ld8
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "ID"
            r1.<init>(r2)
            java.lang.String r2 = "='"
            r1.append(r2)
            java.lang.String r3 = r15.getEucId()
            r1.append(r3)
            java.lang.String r3 = "' AND "
            r1.append(r3)
            java.lang.String r3 = "TYPE"
            r1.append(r3)
            java.lang.String r3 = "="
            r1.append(r3)
            com.sec.internal.ims.servicemodules.euc.data.EucType r3 = r15.getEucType()
            int r3 = r3.getId()
            r1.append(r3)
            java.lang.String r3 = " AND "
            r1.append(r3)
            java.lang.String r4 = "SUBSCRIBER_IDENTITY"
            r1.append(r4)
            r1.append(r2)
            java.lang.String r4 = r15.getOwnIdentity()
            r1.append(r4)
            java.lang.String r4 = "'"
            r1.append(r4)
            r1.append(r3)
            java.lang.String r3 = "REMOTE_URI"
            r1.append(r3)
            r1.append(r2)
            com.sec.ims.util.ImsUri r15 = r15.getRemoteUri()
            r1.append(r15)
            r1.append(r4)
            java.lang.String r8 = r1.toString()
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            java.lang.String r1 = "getEucByKey where "
            r15.append(r1)
            r15.append(r8)
            java.lang.String r15 = r15.toString()
            com.sec.internal.log.IMSLog.s(r0, r15)
            android.database.sqlite.SQLiteDatabase r5 = r14.mDb     // Catch: android.database.SQLException -> Lb9
            java.lang.String r6 = "EUCRDATA"
            r7 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            android.database.Cursor r15 = r5.query(r6, r7, r8, r9, r10, r11, r12, r13)     // Catch: android.database.SQLException -> Lb9
            if (r15 == 0) goto Lb2
            boolean r0 = r15.moveToFirst()     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto Lb2
            com.sec.internal.ims.servicemodules.euc.data.IEucData r14 = r14.createEucData(r15)     // Catch: java.lang.Throwable -> La8
            goto Lb3
        La8:
            r14 = move-exception
            r15.close()     // Catch: java.lang.Throwable -> Lad
            goto Lb1
        Lad:
            r15 = move-exception
            r14.addSuppressed(r15)     // Catch: android.database.SQLException -> Lb9
        Lb1:
            throw r14     // Catch: android.database.SQLException -> Lb9
        Lb2:
            r14 = 0
        Lb3:
            if (r15 == 0) goto Lb8
            r15.close()     // Catch: android.database.SQLException -> Lb9
        Lb8:
            return r14
        Lb9:
            r14 = move-exception
            java.lang.String r15 = com.sec.internal.ims.servicemodules.euc.persistence.EucPersistence.LOG_TAG
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "SQL Exception "
            r0.append(r1)
            r0.append(r14)
            java.lang.String r14 = r0.toString()
            android.util.Log.e(r15, r14)
            com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException r14 = new com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException
            java.lang.String r15 = "SQL Exception occured!"
            r14.<init>(r15)
            throw r14
        Ld8:
            com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException r14 = new com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException
            java.lang.String r15 = "db instance is null, no access to EUCR database"
            r14.<init>(r15)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.euc.persistence.EucPersistence.getEucByKey(com.sec.internal.ims.servicemodules.euc.data.EucMessageKey):com.sec.internal.ims.servicemodules.euc.data.IEucData");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0118 A[Catch: SQLException -> 0x011c, TRY_LEAVE, TryCatch #1 {SQLException -> 0x011c, blocks: (B:15:0x00eb, B:19:0x0118, B:36:0x0114, B:35:0x0111, B:23:0x00fe, B:25:0x0104, B:30:0x010b), top: B:14:0x00eb, inners: #0, #2 }] */
    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sec.internal.ims.servicemodules.euc.data.IEucData getVolatileEucByMostRecentTimeout(java.util.List<java.lang.String> r20) throws com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException {
        /*
            Method dump skipped, instructions count: 331
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.euc.persistence.EucPersistence.getVolatileEucByMostRecentTimeout(java.util.List):com.sec.internal.ims.servicemodules.euc.data.IEucData");
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void open() throws IllegalStateException, EucPersistenceException {
        Log.i(LOG_TAG, "open()");
        Preconditions.checkState(!this.mIsDbOpened, "EucPersistence is already opened!");
        try {
            this.mDb = this.mEucSQLiteHelper.getWritableDatabase();
            this.mIsDbOpened = true;
        } catch (SQLiteException e) {
            throw new EucPersistenceException("Failure, unable to open persistence!", e);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence
    public void close() throws IllegalStateException {
        Log.i(LOG_TAG, "close()");
        Preconditions.checkState(this.mIsDbOpened, "EucPersistence is already closed!");
        this.mEucSQLiteHelper.close();
        this.mDb = null;
        this.mIsDbOpened = false;
    }

    private IEucData createEucData(Cursor cursor) {
        return this.mEucFactory.createEucData(new EucMessageKey(cursor.getString(0), cursor.getString(9), ((EucType[]) EucType.class.getEnumConstants())[0].getFromId(cursor.getInt(4)), ImsUri.parse(cursor.getString(5))), cursor.getInt(1) == 1, cursor.getString(8), cursor.getInt(2) == 1, ((EucState[]) EucState.class.getEnumConstants())[0].getFromId(cursor.getInt(3)), cursor.getLong(6), Long.valueOf(cursor.getLong(7)));
    }

    private IDialogData createDialogData(Cursor cursor) {
        return this.mEucFactory.createDialogData(new EucMessageKey(cursor.getString(0), cursor.getString(6), ((EucType[]) EucType.class.getEnumConstants())[0].getFromId(cursor.getInt(7)), ImsUri.parse(cursor.getString(8))), cursor.getString(1), cursor.getString(2), cursor.getString(3), cursor.getString(4), cursor.getString(5));
    }
}
