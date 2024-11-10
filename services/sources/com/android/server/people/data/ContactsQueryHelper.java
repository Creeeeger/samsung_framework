package com.android.server.people.data;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Slog;
import com.samsung.android.knox.custom.KnoxCustomManagerService;

/* loaded from: classes2.dex */
public class ContactsQueryHelper {
    public Uri mContactUri;
    public final Context mContext;
    public boolean mIsStarred;
    public long mLastUpdatedTimestamp;
    public String mPhoneNumber;

    public ContactsQueryHelper(Context context) {
        this.mContext = context;
    }

    public boolean query(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Uri parse = Uri.parse(str);
        if ("tel".equals(parse.getScheme())) {
            return queryWithPhoneNumber(parse.getSchemeSpecificPart());
        }
        if ("mailto".equals(parse.getScheme())) {
            return queryWithEmail(parse.getSchemeSpecificPart());
        }
        if (str.startsWith(ContactsContract.Contacts.CONTENT_LOOKUP_URI.toString())) {
            return queryWithUri(parse);
        }
        return false;
    }

    public boolean querySince(long j) {
        return queryContact(ContactsContract.Contacts.CONTENT_URI, new String[]{KnoxCustomManagerService.ID, "lookup", "starred", "has_phone_number", "contact_last_updated_timestamp"}, "contact_last_updated_timestamp > ?", new String[]{Long.toString(j)});
    }

    public Uri getContactUri() {
        return this.mContactUri;
    }

    public boolean isStarred() {
        return this.mIsStarred;
    }

    public String getPhoneNumber() {
        return this.mPhoneNumber;
    }

    public long getLastUpdatedTimestamp() {
        return this.mLastUpdatedTimestamp;
    }

    public final boolean queryWithPhoneNumber(String str) {
        return queryWithUri(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)));
    }

    public final boolean queryWithEmail(String str) {
        return queryWithUri(Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(str)));
    }

    public final boolean queryWithUri(Uri uri) {
        return queryContact(uri, new String[]{KnoxCustomManagerService.ID, "lookup", "starred", "has_phone_number"}, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b4 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean queryContact(android.net.Uri r10, java.lang.String[] r11, java.lang.String r12, java.lang.String[] r13) {
        /*
            Method dump skipped, instructions count: 190
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.people.data.ContactsQueryHelper.queryContact(android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[]):boolean");
    }

    public final boolean queryPhoneNumber(String str) {
        try {
            Cursor query = this.mContext.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"data4"}, "lookup = ?", new String[]{str}, null);
            try {
                if (query == null) {
                    Slog.w("ContactsQueryHelper", "Cursor is null when querying contact phone number.");
                    if (query != null) {
                        query.close();
                    }
                    return false;
                }
                while (query.moveToNext()) {
                    int columnIndex = query.getColumnIndex("data4");
                    if (columnIndex >= 0) {
                        this.mPhoneNumber = query.getString(columnIndex);
                    }
                }
                query.close();
                return true;
            } finally {
            }
        } catch (Exception e) {
            Slog.w("Exception when querying phone number.", e);
            return false;
        }
    }
}
