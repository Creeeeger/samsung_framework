package com.sec.internal.ims.settings;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ImsProfileLoaderInternal {
    public static final String SETTING_DB_CREATED = "setting_db_created";

    public static List<ImsProfile> getProfileList(Context context, int i) {
        ArrayList arrayList = new ArrayList();
        String str = SemSystemProperties.get(Mno.MOCK_MNONAME_PROPERTY, "");
        if (TextUtils.isEmpty(str)) {
            str = SimUtil.getSimMno(i).getName();
        }
        return TextUtils.isEmpty(str) ? arrayList : getProfileListWithMnoName(context, str, i);
    }

    public static List<ImsProfile> getProfileListWithMnoName(Context context, String str, int i) {
        ArrayList arrayList = new ArrayList();
        Uri build = Uri.parse("content://com.sec.ims.settings/profile").buildUpon().fragment("simslot" + i).build();
        Cursor query = context.getContentResolver().query(build, null, "mnoname=" + str, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        ImsProfile imsProfileFromRow = getImsProfileFromRow(context, query, i);
                        if (imsProfileFromRow != null) {
                            arrayList.add(imsProfileFromRow);
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
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.sec.ims.settings.ImsProfile getProfile(android.content.Context r6, int r7, int r8) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "content://com.sec.ims.settings/profile/"
            r0.append(r1)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            android.net.Uri r1 = android.net.Uri.parse(r7)
            android.content.ContentResolver r0 = r6.getContentResolver()
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r7 = r0.query(r1, r2, r3, r4, r5)
            if (r7 == 0) goto L38
            boolean r0 = r7.moveToFirst()     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L38
            com.sec.ims.settings.ImsProfile r6 = getImsProfileFromRow(r6, r7, r8)     // Catch: java.lang.Throwable -> L2e
            goto L39
        L2e:
            r6 = move-exception
            r7.close()     // Catch: java.lang.Throwable -> L33
            goto L37
        L33:
            r7 = move-exception
            r6.addSuppressed(r7)
        L37:
            throw r6
        L38:
            r6 = 0
        L39:
            if (r7 == 0) goto L3e
            r7.close()
        L3e:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.settings.ImsProfileLoaderInternal.getProfile(android.content.Context, int, int):com.sec.ims.settings.ImsProfile");
    }

    public static ImsProfile getImsProfileFromRow(Context context, Cursor cursor, int i) {
        return ImsSimMobilityUpdate.getInstance(context).overrideImsProfileForSimMobilityUpdateOnDemand(new ImsProfile(cursor.getString(cursor.getColumnIndex("profile"))), i);
    }

    public static String getRcsProfile(Context context, String str, int i) {
        List<ImsProfile> profileListWithMnoName = getProfileListWithMnoName(context, str, i);
        if (profileListWithMnoName.isEmpty()) {
            return "";
        }
        for (ImsProfile imsProfile : profileListWithMnoName) {
            String rcsProfile = imsProfile.getRcsProfile();
            if (imsProfile.getEnableStatus() == 2 && !TextUtils.isEmpty(rcsProfile)) {
                return rcsProfile;
            }
        }
        return "";
    }
}
