package com.sec.internal.ims.servicemodules.ss;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SqliteWrapper;
import android.net.Uri;
import android.provider.Telephony;
import android.text.TextUtils;
import com.android.net.module.util.Inet4AddressUtils;
import com.sec.internal.constants.ims.entitilement.NSDSContractExt;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class ApnSettings {
    private static final String[] APN_PROJECTION = {"type", "name", NSDSContractExt.ProvisioningParametersColumns.APN, "proxy", "port"};
    private static final int COLUMN_PORT = 4;
    private static final int COLUMN_PROXY = 3;
    private static final int COLUMN_TYPE = 0;
    private static final String LOG_TAG = "ApnSettings";
    private final String mDebugText;
    private final String mProxyAddress;
    private final int mProxyPort;

    public static ApnSettings load(Context context, String str, String str2, int i) {
        String str3;
        String[] strArr;
        int i2;
        IMSLog.i(LOG_TAG, "Loading APN using name " + str);
        String trimWithNullCheck = trimWithNullCheck(str);
        if (TextUtils.isEmpty(trimWithNullCheck)) {
            str3 = null;
            strArr = null;
        } else {
            strArr = new String[]{trimWithNullCheck};
            str3 = "apn=?";
        }
        Cursor query = SqliteWrapper.query(context, context.getContentResolver(), Uri.withAppendedPath(Telephony.Carriers.CONTENT_URI, "/subId/" + i), APN_PROJECTION, str3, strArr, (String) null);
        if (query != null) {
            do {
                try {
                    if (query.moveToNext()) {
                    }
                } catch (Throwable th) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } while (!isValidApnType(query.getString(0), str2));
            String trimAddressZeros = Inet4AddressUtils.trimAddressZeros(trimWithNullCheck(query.getString(3)));
            String trimWithNullCheck2 = trimWithNullCheck(query.getString(4));
            try {
                i2 = Integer.parseInt(trimWithNullCheck2);
            } catch (NumberFormatException unused) {
                IMSLog.e(LOG_TAG, "Invalid port " + trimWithNullCheck2 + ", use 80");
                i2 = 80;
            }
            ApnSettings apnSettings = new ApnSettings(trimAddressZeros, i2, getDebugText(query));
            query.close();
            return apnSettings;
        }
        if (query != null) {
            query.close();
        }
        return null;
    }

    private static String getDebugText(Cursor cursor) {
        StringBuilder sb = new StringBuilder();
        sb.append("APN [");
        for (int i = 0; i < cursor.getColumnCount(); i++) {
            String columnName = cursor.getColumnName(i);
            String string = cursor.getString(i);
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(columnName);
            sb.append('=');
            if (!TextUtils.isEmpty(string)) {
                sb.append(string);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    private static String trimWithNullCheck(String str) {
        if (str != null) {
            return str.trim();
        }
        return null;
    }

    public ApnSettings(String str, int i, String str2) {
        this.mProxyAddress = str;
        this.mProxyPort = i;
        this.mDebugText = str2;
    }

    public String getProxyAddress() {
        return this.mProxyAddress;
    }

    public int getProxyPort() {
        return this.mProxyPort;
    }

    private static boolean isValidApnType(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        for (String str3 : str.split(",")) {
            String trim = str3.trim();
            if (trim.equals(str2) || trim.equals("*")) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return this.mDebugText;
    }
}
