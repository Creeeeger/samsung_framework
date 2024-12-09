package com.sec.internal.helper;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.BlockedNumberContract;
import android.sec.enterprise.EnterpriseDeviceManager;
import android.sec.enterprise.PhoneRestrictionPolicy;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.log.IMSLog;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class BlockedNumberUtil {
    private static final String CATEGORY = "category";
    private static final String LOG_TAG = "BlockedNumberUtil";
    private static final String SERVICE_ID = "service_id";

    public static boolean isBlockedNumber(Context context, String str) {
        try {
            if (BlockedNumberContract.canCurrentUserBlockNumbers(context)) {
                return BlockedNumberContract.SystemContract.shouldSystemBlockNumber(context, str, (Bundle) null) != 0;
            }
            return false;
        } catch (IllegalArgumentException unused) {
            Log.e(LOG_TAG, "isBlockedNumber occur IllegalArgumentException");
            return false;
        }
    }

    public static boolean isKnoxBlockRequied() {
        return EnterpriseDeviceManager.getInstance().getPhoneRestrictionPolicy().isSmsPatternCheckRequired();
    }

    public static boolean isKnoxBlockedNumber(String str, ImDirection imDirection) {
        boolean canIncomingSms;
        PhoneRestrictionPolicy phoneRestrictionPolicy = EnterpriseDeviceManager.getInstance().getPhoneRestrictionPolicy();
        if (imDirection == ImDirection.OUTGOING) {
            canIncomingSms = phoneRestrictionPolicy.canOutgoingSms(str);
        } else {
            canIncomingSms = phoneRestrictionPolicy.canIncomingSms(str);
        }
        boolean z = !canIncomingSms;
        Log.i(LOG_TAG, "isKnoxBlockedNumber: num=" + IMSLog.numberChecker(str) + ", isBlocked=" + z);
        return z;
    }

    public static Set<String> getBlockedNumbersList(Context context) {
        HashSet hashSet = new HashSet();
        try {
            Cursor query = context.getContentResolver().query(BlockedNumberContract.BlockedNumbers.CONTENT_URI, new String[]{"original_number"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        do {
                            String string = query.getString(query.getColumnIndex("original_number"));
                            if (!TextUtils.isEmpty(string)) {
                                hashSet.add(string);
                            }
                        } while (query.moveToNext());
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
            return hashSet;
        } catch (IllegalArgumentException unused) {
            Log.e(LOG_TAG, "getBlockedNumbersList occur IllegalArgumentException");
            return Collections.emptySet();
        }
    }

    public static Set<String> getBlockedNumbersListFromNW(Context context) {
        HashSet hashSet = new HashSet();
        try {
            Cursor query = context.getContentResolver().query(ImsConstants.Uris.SPECIFIC_BOT_URI, new String[]{CATEGORY, "service_id"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        do {
                            if (query.getString(query.getColumnIndex(CATEGORY)).compareToIgnoreCase("BLACKLISTED") == 0) {
                                String string = query.getString(query.getColumnIndex("service_id"));
                                if (!TextUtils.isEmpty(string)) {
                                    Log.d(LOG_TAG, "block list is " + string);
                                    hashSet.add(string);
                                }
                            }
                        } while (query.moveToNext());
                    }
                } catch (Throwable th) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return hashSet;
        } catch (IllegalArgumentException | IllegalStateException e) {
            Log.e(LOG_TAG, "getBlockedNumbersList occur " + e);
            return Collections.emptySet();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001f, code lost:
    
        if (r2 < 0) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long getBlockExpires(android.content.Context r8) {
        /*
            r0 = 0
            android.content.ContentResolver r2 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L33
            android.net.Uri r3 = com.sec.internal.constants.ims.ImsConstants.Uris.SPECIFIC_BOT_EXPIRES     // Catch: java.lang.Throwable -> L33
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r8 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L33
            if (r8 == 0) goto L2c
            boolean r2 = r8.moveToFirst()     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L2c
            r2 = 1
            long r2 = r8.getLong(r2)     // Catch: java.lang.Throwable -> L22
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 >= 0) goto L2d
            goto L2c
        L22:
            r2 = move-exception
            r8.close()     // Catch: java.lang.Throwable -> L27
            goto L2b
        L27:
            r8 = move-exception
            r2.addSuppressed(r8)     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> L33
        L2b:
            throw r2     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> L33
        L2c:
            r2 = r0
        L2d:
            if (r8 == 0) goto L32
            r8.close()     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> L33
        L32:
            return r2
        L33:
            r8 = move-exception
            java.lang.String r2 = com.sec.internal.helper.BlockedNumberUtil.LOG_TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "getBlockExpires occur "
            r3.append(r4)
            r3.append(r8)
            java.lang.String r8 = r3.toString()
            android.util.Log.e(r2, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.helper.BlockedNumberUtil.getBlockExpires(android.content.Context):long");
    }
}
