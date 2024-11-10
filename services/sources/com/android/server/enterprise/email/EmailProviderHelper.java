package com.android.server.enterprise.email;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.UserHandle;
import android.sec.enterprise.email.EnterpriseEmailAccount;
import android.sec.enterprise.email.EnterpriseExchangeAccount;
import android.util.Log;
import com.samsung.android.knox.ContextInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class EmailProviderHelper {
    public static Map mAccountObjectMap = new HashMap();

    public static Cursor createEmailContentProviderCursor(Context context, ContextInfo contextInfo, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Context createPackageContextAsUser;
        if (context == null) {
            return null;
        }
        int userId = UserHandle.getUserId(contextInfo.mCallerUid);
        int i = contextInfo.mContainerId;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (SettingsUtils.isPersona(i, context)) {
                createPackageContextAsUser = context.createPackageContextAsUser(SettingsUtils.getEmailPackageName(i), 0, new UserHandle(i));
            } else {
                createPackageContextAsUser = context.createPackageContextAsUser(SettingsUtils.getEmailPackageName(userId), 0, new UserHandle(userId));
            }
            return createPackageContextAsUser.getContentResolver().query(uri, strArr, str, strArr2, str2);
        } catch (Exception e) {
            Log.e("EmailProviderHelperService", "createEmailContentProviderCursor() : Failed, Exception occurs. ", e);
            return null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005a, code lost:
    
        if (r10.isClosed() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0043, code lost:
    
        if (r10.isClosed() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
    
        r10.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long[] getAllAccountIDS(android.content.Context r10, com.samsung.android.knox.ContextInfo r11) {
        /*
            java.lang.String r0 = "_id"
            r1 = 0
            r2 = 0
            android.net.Uri r5 = com.android.server.enterprise.email.SettingsUtils.getAccountContentUri(r1)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            r3 = 1
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            r6[r1] = r0     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            r7 = 0
            r8 = 0
            r9 = 0
            r3 = r10
            r4 = r11
            android.database.Cursor r10 = createEmailContentProviderCursor(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            if (r10 == 0) goto L3d
            int r11 = r10.getCount()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L5e
            if (r11 <= 0) goto L3d
            int r11 = r10.getCount()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L5e
            long[] r11 = new long[r11]     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L5e
        L24:
            boolean r3 = r10.moveToNext()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L5e
            if (r3 == 0) goto L39
            int r3 = r1 + 1
            int r4 = r10.getColumnIndex(r0)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L5e
            int r4 = r10.getInt(r4)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L5e
            long r4 = (long) r4     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L5e
            r11[r1] = r4     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L5e
            r1 = r3
            goto L24
        L39:
            r2 = r11
            goto L3d
        L3b:
            r11 = move-exception
            goto L4d
        L3d:
            if (r10 == 0) goto L5d
            boolean r11 = r10.isClosed()
            if (r11 != 0) goto L5d
        L45:
            r10.close()
            goto L5d
        L49:
            r11 = move-exception
            goto L60
        L4b:
            r11 = move-exception
            r10 = r2
        L4d:
            java.lang.String r0 = "EmailProviderHelperService"
            java.lang.String r1 = "getAllAccountIDS() : Failed, Exception occurs. "
            android.util.Log.e(r0, r1, r11)     // Catch: java.lang.Throwable -> L5e
            if (r10 == 0) goto L5d
            boolean r11 = r10.isClosed()
            if (r11 != 0) goto L5d
            goto L45
        L5d:
            return r2
        L5e:
            r11 = move-exception
            r2 = r10
        L60:
            if (r2 == 0) goto L6b
            boolean r10 = r2.isClosed()
            if (r10 != 0) goto L6b
            r2.close()
        L6b:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.EmailProviderHelper.getAllAccountIDS(android.content.Context, com.samsung.android.knox.ContextInfo):long[]");
    }

    public static EnterpriseExchangeAccount getExchangeAccountObject(ContextInfo contextInfo, long j) {
        Object obj = mAccountObjectMap.get("A" + j);
        if (obj != null && (obj instanceof EnterpriseExchangeAccount)) {
            mAccountObjectMap.remove("A" + j);
            return (EnterpriseExchangeAccount) obj;
        }
        Log.i("EmailProviderHelperService", "getExchangeAccountObject() : failed. ");
        return null;
    }

    public static EnterpriseEmailAccount getEmailAccountObject(ContextInfo contextInfo, long j) {
        Object obj = mAccountObjectMap.get("A" + j);
        if (obj != null && (obj instanceof EnterpriseEmailAccount)) {
            mAccountObjectMap.remove("A" + j);
            return (EnterpriseEmailAccount) obj;
        }
        Log.i("EmailProviderHelperService", "getEmailAccountObject() : failed. ");
        return null;
    }

    public static long setEnterpriseExchangeAccountObject(ContextInfo contextInfo, EnterpriseExchangeAccount enterpriseExchangeAccount) {
        if (enterpriseExchangeAccount == null) {
            Log.i("EmailProviderHelperService", "setEnterpriseExchangeAccountObject() : failed with invalid object. ");
            return -1L;
        }
        long createID = createID();
        mAccountObjectMap.put("A" + createID, enterpriseExchangeAccount);
        return createID;
    }

    public static long setEnterpriseEmailAccountObject(ContextInfo contextInfo, EnterpriseEmailAccount enterpriseEmailAccount) {
        if (enterpriseEmailAccount == null) {
            Log.i("EmailProviderHelperService", "setEnterpriseEmailAccountObject() : failed with invalid object. ");
            return -1L;
        }
        long createID = createID();
        mAccountObjectMap.put("A" + createID, enterpriseEmailAccount);
        return createID;
    }

    public static long createID() {
        long currentTimeMillis = System.currentTimeMillis();
        return currentTimeMillis < 0 ? currentTimeMillis * (-1) : currentTimeMillis;
    }

    public static Uri getEmailContentUri() {
        return Uri.parse("content://com.samsung.android.email.mdm.provider");
    }

    public static Uri getLDAPContentUri() {
        return Uri.parse("content://com.samsung.android.email.ldap.provider");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
    
        if (r10.isClosed() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0076, code lost:
    
        if (r10.isClosed() == false) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0090  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.sec.enterprise.email.EnterpriseEmailAccount getEnterpriseEmailAccount(android.content.Context r10, com.samsung.android.knox.ContextInfo r11, long r12) {
        /*
            r0 = 0
            int r0 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            java.lang.String r1 = "EmailProviderHelperService"
            r2 = 0
            if (r0 > 0) goto L1e
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "getEnterpriseEmailAccount() : Failed, invalid account Id = "
            r10.append(r11)
            r10.append(r12)
            java.lang.String r10 = r10.toString()
            android.util.Log.d(r1, r10)
            return r2
        L1e:
            android.net.Uri r5 = getEmailContentUri()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r6 = 0
            java.lang.String r7 = "getAccountInfo"
            r0 = 1
            java.lang.String[] r8 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            java.lang.String r0 = java.lang.String.valueOf(r12)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r3 = 0
            r8[r3] = r0     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r9 = 0
            r3 = r10
            r4 = r11
            android.database.Cursor r10 = createEmailContentProviderCursor(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            if (r10 == 0) goto L56
            android.os.Bundle r11 = r10.getExtras()     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            if (r11 == 0) goto L4e
            java.lang.String r0 = "email.account"
            android.os.Parcelable r11 = r11.getParcelable(r0)     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            if (r11 == 0) goto L5b
            boolean r0 = r11 instanceof android.sec.enterprise.email.EnterpriseEmailAccount     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            if (r0 == 0) goto L5b
            android.sec.enterprise.email.EnterpriseEmailAccount r11 = (android.sec.enterprise.email.EnterpriseEmailAccount) r11     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            r2 = r11
            goto L5b
        L4e:
            java.lang.String r11 = "getEnterpriseEmailAccount() : Fail to get Data from Email. "
            android.util.Log.i(r1, r11)     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            goto L5b
        L54:
            r11 = move-exception
            goto L6b
        L56:
            java.lang.String r11 = "getEnterpriseEmailAccount() : cannot get cursor from EmailProvider."
            android.util.Log.i(r1, r11)     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
        L5b:
            if (r10 == 0) goto L79
            boolean r11 = r10.isClosed()
            if (r11 != 0) goto L79
        L63:
            r10.close()
            goto L79
        L67:
            r11 = move-exception
            goto La7
        L69:
            r11 = move-exception
            r10 = r2
        L6b:
            java.lang.String r0 = "getEnterpriseEmailAccount() : Failed, Exception occurs. "
            android.util.Log.e(r1, r0, r11)     // Catch: java.lang.Throwable -> La5
            if (r10 == 0) goto L79
            boolean r11 = r10.isClosed()
            if (r11 != 0) goto L79
            goto L63
        L79:
            if (r2 != 0) goto L90
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "getEnterpriseEmailAccount() : Failed, accId = "
            r10.append(r11)
            r10.append(r12)
            java.lang.String r10 = r10.toString()
            android.util.secutil.Slog.d(r1, r10)
            goto La4
        L90:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "getEnterpriseEmailAccount() : successfully get Data from Email, accId = "
            r10.append(r11)
            r10.append(r12)
            java.lang.String r10 = r10.toString()
            android.util.secutil.Slog.d(r1, r10)
        La4:
            return r2
        La5:
            r11 = move-exception
            r2 = r10
        La7:
            if (r2 == 0) goto Lb2
            boolean r10 = r2.isClosed()
            if (r10 != 0) goto Lb2
            r2.close()
        Lb2:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.EmailProviderHelper.getEnterpriseEmailAccount(android.content.Context, com.samsung.android.knox.ContextInfo, long):android.sec.enterprise.email.EnterpriseEmailAccount");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
    
        if (r4.isClosed() == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean updateEnterpriseEmailAccount(android.content.Context r12, com.samsung.android.knox.ContextInfo r13, android.sec.enterprise.email.EnterpriseEmailAccount r14) {
        /*
            java.lang.String r0 = "EmailProviderHelperService"
            long r1 = setEnterpriseEmailAccountObject(r13, r14)
            r3 = 0
            r4 = 0
            android.net.Uri r7 = getEmailContentUri()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r8 = 0
            java.lang.String r9 = "updateEmailAccount"
            r5 = 2
            java.lang.String[] r10 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r10[r3] = r1     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.lang.String r14 = r14.mInComingProtocol     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r1 = 1
            r10[r1] = r14     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r11 = 0
            r5 = r12
            r6 = r13
            android.database.Cursor r4 = createEmailContentProviderCursor(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            if (r4 == 0) goto L3d
            boolean r12 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            if (r12 == 0) goto L3d
            java.lang.String r12 = "updateEmailAccount"
            int r12 = r4.getColumnIndex(r12)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.lang.String r12 = r4.getString(r12)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            boolean r3 = java.lang.Boolean.parseBoolean(r12)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            goto L43
        L3d:
            java.lang.String r12 = "updateEnterpriseEmailAccount() : cannot get cursor from EmailProvider."
            android.util.Log.i(r0, r12)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
        L43:
            if (r4 == 0) goto L61
            boolean r12 = r4.isClosed()
            if (r12 != 0) goto L61
        L4b:
            r4.close()
            goto L61
        L4f:
            r12 = move-exception
            goto L77
        L51:
            r12 = move-exception
            java.lang.String r13 = "updateEnterpriseEmailAccount() : Failed, Exception occurs. "
            android.util.Log.e(r0, r13, r12)     // Catch: java.lang.Throwable -> L4f
            if (r4 == 0) goto L61
            boolean r12 = r4.isClosed()
            if (r12 != 0) goto L61
            goto L4b
        L61:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "updateEnterpriseEmailAccount() : ret = "
            r12.append(r13)
            r12.append(r3)
            java.lang.String r12 = r12.toString()
            android.util.Log.i(r0, r12)
            return r3
        L77:
            if (r4 == 0) goto L82
            boolean r13 = r4.isClosed()
            if (r13 != 0) goto L82
            r4.close()
        L82:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.EmailProviderHelper.updateEnterpriseEmailAccount(android.content.Context, com.samsung.android.knox.ContextInfo, android.sec.enterprise.email.EnterpriseEmailAccount):boolean");
    }

    public static EnterpriseEmailAccount[] getAllEnterpriseEmailAccount(Context context, ContextInfo contextInfo) {
        ArrayList arrayList = new ArrayList();
        long[] allAccountIDS = getAllAccountIDS(context, contextInfo);
        int i = 0;
        if (allAccountIDS != null) {
            for (long j : allAccountIDS) {
                EnterpriseEmailAccount enterpriseEmailAccount = getEnterpriseEmailAccount(context, contextInfo, j);
                if (enterpriseEmailAccount != null) {
                    arrayList.add(enterpriseEmailAccount);
                }
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        EnterpriseEmailAccount[] enterpriseEmailAccountArr = new EnterpriseEmailAccount[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            enterpriseEmailAccountArr[i] = (EnterpriseEmailAccount) it.next();
            i++;
        }
        return enterpriseEmailAccountArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
    
        if (r10.isClosed() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0076, code lost:
    
        if (r10.isClosed() == false) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0090  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.sec.enterprise.email.EnterpriseExchangeAccount getEnterpriseExchangeAccount(android.content.Context r10, com.samsung.android.knox.ContextInfo r11, long r12) {
        /*
            r0 = 0
            int r0 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            java.lang.String r1 = "EmailProviderHelperService"
            r2 = 0
            if (r0 > 0) goto L1e
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "getEnterpriseExchangeAccount() : Failed, invalid account Id = "
            r10.append(r11)
            r10.append(r12)
            java.lang.String r10 = r10.toString()
            android.util.Log.d(r1, r10)
            return r2
        L1e:
            android.net.Uri r5 = getEmailContentUri()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r6 = 0
            java.lang.String r7 = "getAccountInfo"
            r0 = 1
            java.lang.String[] r8 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            java.lang.String r0 = java.lang.String.valueOf(r12)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r3 = 0
            r8[r3] = r0     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r9 = 0
            r3 = r10
            r4 = r11
            android.database.Cursor r10 = createEmailContentProviderCursor(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            if (r10 == 0) goto L56
            android.os.Bundle r11 = r10.getExtras()     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            if (r11 == 0) goto L4e
            java.lang.String r0 = "eas.account"
            android.os.Parcelable r11 = r11.getParcelable(r0)     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            if (r11 == 0) goto L5b
            boolean r0 = r11 instanceof android.sec.enterprise.email.EnterpriseExchangeAccount     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            if (r0 == 0) goto L5b
            android.sec.enterprise.email.EnterpriseExchangeAccount r11 = (android.sec.enterprise.email.EnterpriseExchangeAccount) r11     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            r2 = r11
            goto L5b
        L4e:
            java.lang.String r11 = "getEnterpriseExchangeAccount() : Fail to get Data from Email. "
            android.util.Log.i(r1, r11)     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
            goto L5b
        L54:
            r11 = move-exception
            goto L6b
        L56:
            java.lang.String r11 = "getEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."
            android.util.Log.i(r1, r11)     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> La5
        L5b:
            if (r10 == 0) goto L79
            boolean r11 = r10.isClosed()
            if (r11 != 0) goto L79
        L63:
            r10.close()
            goto L79
        L67:
            r11 = move-exception
            goto La7
        L69:
            r11 = move-exception
            r10 = r2
        L6b:
            java.lang.String r0 = "getEnterpriseExchangeAccount() : Failed, Exception occurs. "
            android.util.Log.e(r1, r0, r11)     // Catch: java.lang.Throwable -> La5
            if (r10 == 0) goto L79
            boolean r11 = r10.isClosed()
            if (r11 != 0) goto L79
            goto L63
        L79:
            if (r2 != 0) goto L90
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "getEnterpriseExchangeAccount() : Failed, accId = "
            r10.append(r11)
            r10.append(r12)
            java.lang.String r10 = r10.toString()
            android.util.secutil.Slog.d(r1, r10)
            goto La4
        L90:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "getEnterpriseExchangeAccount() : successfully get Data from Email. accId = "
            r10.append(r11)
            r10.append(r12)
            java.lang.String r10 = r10.toString()
            android.util.secutil.Slog.d(r1, r10)
        La4:
            return r2
        La5:
            r11 = move-exception
            r2 = r10
        La7:
            if (r2 == 0) goto Lb2
            boolean r10 = r2.isClosed()
            if (r10 != 0) goto Lb2
            r2.close()
        Lb2:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.EmailProviderHelper.getEnterpriseExchangeAccount(android.content.Context, com.samsung.android.knox.ContextInfo, long):android.sec.enterprise.email.EnterpriseExchangeAccount");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
    
        if (r3.isClosed() == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean updateEnterpriseExchangeAccount(android.content.Context r11, com.samsung.android.knox.ContextInfo r12, android.sec.enterprise.email.EnterpriseExchangeAccount r13) {
        /*
            java.lang.String r0 = "EmailProviderHelperService"
            long r1 = setEnterpriseExchangeAccountObject(r12, r13)
            r13 = 0
            r3 = 0
            android.net.Uri r6 = getEmailContentUri()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r7 = 0
            java.lang.String r8 = "updateEmailAccount"
            r4 = 2
            java.lang.String[] r9 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r9[r13] = r1     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.lang.String r1 = "eas"
            r2 = 1
            r9[r2] = r1     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r10 = 0
            r4 = r11
            r5 = r12
            android.database.Cursor r3 = createEmailContentProviderCursor(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            if (r3 == 0) goto L3d
            boolean r11 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            if (r11 == 0) goto L3d
            java.lang.String r11 = "updateEmailAccount"
            int r11 = r3.getColumnIndex(r11)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.lang.String r11 = r3.getString(r11)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            boolean r13 = java.lang.Boolean.parseBoolean(r11)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            goto L43
        L3d:
            java.lang.String r11 = "updateEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."
            android.util.Log.i(r0, r11)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
        L43:
            if (r3 == 0) goto L61
            boolean r11 = r3.isClosed()
            if (r11 != 0) goto L61
        L4b:
            r3.close()
            goto L61
        L4f:
            r11 = move-exception
            goto L77
        L51:
            r11 = move-exception
            java.lang.String r12 = "updateEnterpriseExchangeAccount() : Failed, Exception occurs. "
            android.util.Log.e(r0, r12, r11)     // Catch: java.lang.Throwable -> L4f
            if (r3 == 0) goto L61
            boolean r11 = r3.isClosed()
            if (r11 != 0) goto L61
            goto L4b
        L61:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "updateEnterpriseExchangeAccount() : ret = "
            r11.append(r12)
            r11.append(r13)
            java.lang.String r11 = r11.toString()
            android.util.Log.i(r0, r11)
            return r13
        L77:
            if (r3 == 0) goto L82
            boolean r12 = r3.isClosed()
            if (r12 != 0) goto L82
            r3.close()
        L82:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.EmailProviderHelper.updateEnterpriseExchangeAccount(android.content.Context, com.samsung.android.knox.ContextInfo, android.sec.enterprise.email.EnterpriseExchangeAccount):boolean");
    }

    public static EnterpriseExchangeAccount[] getAllEnterpriseExchangeAccount(Context context, ContextInfo contextInfo) {
        ArrayList arrayList = new ArrayList();
        long[] allAccountIDS = getAllAccountIDS(context, contextInfo);
        int i = 0;
        if (allAccountIDS != null) {
            for (long j : allAccountIDS) {
                EnterpriseExchangeAccount enterpriseExchangeAccount = getEnterpriseExchangeAccount(context, contextInfo, j);
                if (enterpriseExchangeAccount != null) {
                    arrayList.add(enterpriseExchangeAccount);
                }
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        EnterpriseExchangeAccount[] enterpriseExchangeAccountArr = new EnterpriseExchangeAccount[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            enterpriseExchangeAccountArr[i] = (EnterpriseExchangeAccount) it.next();
            i++;
        }
        return enterpriseExchangeAccountArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
    
        if (r10 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
    
        r9.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
    
        if (r10 == false) goto L19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.sec.enterprise.email.EnterpriseLDAPAccount getEnterpriseLDAPAccount(android.content.Context r9, com.samsung.android.knox.ContextInfo r10, long r11) {
        /*
            java.lang.String r0 = "EmailProviderHelperService"
            r1 = 0
            android.net.Uri r4 = getLDAPContentUri()     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            r5 = 0
            java.lang.String r6 = "getLDAPAccount"
            r2 = 1
            java.lang.String[] r7 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            java.lang.String r11 = java.lang.String.valueOf(r11)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            r12 = 0
            r7[r12] = r11     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            r8 = 0
            r2 = r9
            r3 = r10
            android.database.Cursor r9 = createEmailContentProviderCursor(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            if (r9 == 0) goto L40
            android.os.Bundle r10 = r9.getExtras()     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            if (r10 == 0) goto L38
            java.lang.String r11 = "email.ldap.account"
            android.os.Parcelable r10 = r10.getParcelable(r11)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            if (r10 == 0) goto L45
            boolean r11 = r10 instanceof android.sec.enterprise.email.EnterpriseLDAPAccount     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            if (r11 == 0) goto L45
            android.sec.enterprise.email.EnterpriseLDAPAccount r10 = (android.sec.enterprise.email.EnterpriseLDAPAccount) r10     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            java.lang.String r11 = "getEnterpriseLDAPAccount() : successfully get Data from Email. "
            android.util.secutil.Slog.d(r0, r11)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            r1 = r10
            goto L45
        L38:
            java.lang.String r10 = "getEnterpriseLDAPAccount() : Fail to get Data from Email. "
            android.util.Log.i(r0, r10)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            goto L45
        L3e:
            r10 = move-exception
            goto L55
        L40:
            java.lang.String r10 = "getEnterpriseLDAPAccount() : cannot get cursor from EmailProvider."
            android.util.Log.i(r0, r10)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
        L45:
            if (r9 == 0) goto L63
            boolean r10 = r9.isClosed()
            if (r10 != 0) goto L63
        L4d:
            r9.close()
            goto L63
        L51:
            r10 = move-exception
            goto L66
        L53:
            r10 = move-exception
            r9 = r1
        L55:
            java.lang.String r11 = "getEnterpriseExchangeAccount() : Failed, Exception occurs. "
            android.util.Log.e(r0, r11, r10)     // Catch: java.lang.Throwable -> L64
            if (r9 == 0) goto L63
            boolean r10 = r9.isClosed()
            if (r10 != 0) goto L63
            goto L4d
        L63:
            return r1
        L64:
            r10 = move-exception
            r1 = r9
        L66:
            if (r1 == 0) goto L71
            boolean r9 = r1.isClosed()
            if (r9 != 0) goto L71
            r1.close()
        L71:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.EmailProviderHelper.getEnterpriseLDAPAccount(android.content.Context, com.samsung.android.knox.ContextInfo, long):android.sec.enterprise.email.EnterpriseLDAPAccount");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
    
        if (r9.isClosed() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
    
        r9.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
    
        if (r9.isClosed() == false) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List getAllLDAPAccount(android.content.Context r9, com.samsung.android.knox.ContextInfo r10) {
        /*
            java.lang.String r0 = "EmailProviderHelperService"
            r1 = 0
            android.net.Uri r4 = getLDAPContentUri()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            r5 = 0
            java.lang.String r6 = "getAllLDAPAccounts"
            r7 = 0
            r8 = 0
            r2 = r9
            r3 = r10
            android.database.Cursor r9 = createEmailContentProviderCursor(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r9 == 0) goto L31
            android.os.Bundle r10 = r9.getExtras()     // Catch: java.lang.Exception -> L2f java.lang.Throwable -> L55
            if (r10 == 0) goto L29
            java.lang.String r2 = "email.ldap.all.account"
            java.util.ArrayList r10 = r10.getParcelableArrayList(r2)     // Catch: java.lang.Exception -> L2f java.lang.Throwable -> L55
            if (r10 != 0) goto L27
            java.util.ArrayList r10 = new java.util.ArrayList     // Catch: java.lang.Exception -> L2f java.lang.Throwable -> L55
            r10.<init>()     // Catch: java.lang.Exception -> L2f java.lang.Throwable -> L55
        L27:
            r1 = r10
            goto L36
        L29:
            java.lang.String r10 = "getAllLDAPAccount() : Fail to get Data from Email. "
            android.util.Log.i(r0, r10)     // Catch: java.lang.Exception -> L2f java.lang.Throwable -> L55
            goto L36
        L2f:
            r10 = move-exception
            goto L46
        L31:
            java.lang.String r10 = "getAllLDAPAccount() : cannot get cursor from EmailProvider."
            android.util.Log.i(r0, r10)     // Catch: java.lang.Exception -> L2f java.lang.Throwable -> L55
        L36:
            if (r9 == 0) goto L54
            boolean r10 = r9.isClosed()
            if (r10 != 0) goto L54
        L3e:
            r9.close()
            goto L54
        L42:
            r10 = move-exception
            goto L57
        L44:
            r10 = move-exception
            r9 = r1
        L46:
            java.lang.String r2 = "getAllLDAPAccount() : Failed, Exception occurs. "
            android.util.Log.e(r0, r2, r10)     // Catch: java.lang.Throwable -> L55
            if (r9 == 0) goto L54
            boolean r10 = r9.isClosed()
            if (r10 != 0) goto L54
            goto L3e
        L54:
            return r1
        L55:
            r10 = move-exception
            r1 = r9
        L57:
            if (r1 == 0) goto L62
            boolean r9 = r1.isClosed()
            if (r9 != 0) goto L62
            r1.close()
        L62:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.EmailProviderHelper.getAllLDAPAccount(android.content.Context, com.samsung.android.knox.ContextInfo):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0066, code lost:
    
        if (r2.isClosed() == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean deleteLDAPAccount(android.content.Context r10, com.samsung.android.knox.ContextInfo r11, long r12) {
        /*
            java.lang.String r0 = "EmailProviderHelperService"
            r1 = 0
            r2 = 0
            android.net.Uri r5 = getLDAPContentUri()     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            r6 = 0
            java.lang.String r7 = "deleteLDAPAccount"
            r3 = 1
            java.lang.String[] r8 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            r8[r1] = r12     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            r9 = 0
            r3 = r10
            r4 = r11
            android.database.Cursor r2 = createEmailContentProviderCursor(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            if (r2 == 0) goto L47
            boolean r10 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            if (r10 == 0) goto L47
            java.lang.String r10 = "deleteLDAPAccount"
            int r10 = r2.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            java.lang.String r10 = r2.getString(r10)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            boolean r10 = java.lang.Boolean.parseBoolean(r10)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            r11.<init>()     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            java.lang.String r12 = "deleteLDAPAccount() : ret = "
            r11.append(r12)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            r11.append(r10)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            android.util.secutil.Slog.d(r0, r11)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            r1 = r10
            goto L4c
        L47:
            java.lang.String r10 = "deleteLDAPAccount() : cannot get cursor from EmailProvider."
            android.util.secutil.Slog.d(r0, r10)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
        L4c:
            if (r2 == 0) goto L69
            boolean r10 = r2.isClosed()
            if (r10 != 0) goto L69
        L54:
            r2.close()
            goto L69
        L58:
            r10 = move-exception
            goto L6a
        L5a:
            r10 = move-exception
            java.lang.String r11 = "deleteLDAPAccount() : Failed, Exception occurs. "
            android.util.Log.e(r0, r11, r10)     // Catch: java.lang.Throwable -> L58
            if (r2 == 0) goto L69
            boolean r10 = r2.isClosed()
            if (r10 != 0) goto L69
            goto L54
        L69:
            return r1
        L6a:
            if (r2 == 0) goto L75
            boolean r11 = r2.isClosed()
            if (r11 != 0) goto L75
            r2.close()
        L75:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.EmailProviderHelper.deleteLDAPAccount(android.content.Context, com.samsung.android.knox.ContextInfo, long):boolean");
    }
}
