package com.sec.internal.ims.servicemodules.tapi.service.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.sec.internal.ims.servicemodules.tapi.service.utils.BlockContactPersisit;
import com.sec.internal.log.IMSLog;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class BlockedContactProvider extends ContentProvider {
    private Context mContext = null;
    private static final String LOG_TAG = BlockedContactProvider.class.getSimpleName();
    private static final Pattern OPTIONS_PATTERN = Pattern.compile("\\?");
    public static final Uri CONTENT_URI = Uri.parse("content://com.gsma.services.rcs.provider.blockedcontact");

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mContext = getContext();
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Uri parse = Uri.parse(OPTIONS_PATTERN.split(uri.toString())[0]);
        List<String> pathSegments = parse.getPathSegments();
        if (pathSegments.size() == 0) {
            throw new UnsupportedOperationException("Operation not supported for uri: ".concat(parse.toString()).concat(", need parmeter!"));
        }
        String str3 = pathSegments.get(0);
        Log.d(LOG_TAG, "query" + IMSLog.checker(str3));
        return BlockContactPersisit.getInstance(this.mContext).query(str3);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
