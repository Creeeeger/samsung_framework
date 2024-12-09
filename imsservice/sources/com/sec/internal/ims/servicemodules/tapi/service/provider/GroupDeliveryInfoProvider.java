package com.sec.internal.ims.servicemodules.tapi.service.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.util.Log;
import com.gsma.services.rcs.groupdelivery.GroupDeliveryInfo;
import com.gsma.services.rcs.groupdelivery.GroupDeliveryInfoLog;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.ims.servicemodules.csh.event.ICshConstants;
import com.sec.internal.ims.servicemodules.im.ImCache;

/* loaded from: classes.dex */
public class GroupDeliveryInfoProvider extends ContentProvider {
    public static final String AUTHORITY;
    private static final String LOG_TAG = GroupDeliveryInfoProvider.class.getSimpleName();
    private static final int RCSAPI = 1;
    private static final int RCSAPI_ID = 2;
    private static final UriMatcher sUriMatcher;
    private final String[] MESSAGES_COLUMS = {"_id", "id", ICshConstants.ShareDatabase.KEY_TARGET_CONTACT, "chat_id", "timestamp_delivered", "timestamp_displayed", "status", "reason_code"};
    private ImCache mCache;

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        String authority = GroupDeliveryInfoLog.CONTENT_URI.getAuthority();
        AUTHORITY = authority;
        uriMatcher.addURI(authority, "GroupDeliveryInfoLog", 1);
        uriMatcher.addURI(authority, "GroupDeliveryInfoLog/#", 2);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mCache = ImCache.getInstance();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Log.d(LOG_TAG, "query " + uri);
        int match = sUriMatcher.match(uri);
        if (match == 1) {
            return buildMessagesCursor();
        }
        if (match == 2) {
            return buildMessagesCursor(uri);
        }
        return new MatrixCursor(this.MESSAGES_COLUMS);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    private Cursor buildMessagesCursor(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            Log.e(LOG_TAG, "buildMessageCursor: No last segment.");
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(this.MESSAGES_COLUMS);
        fillMessageCursor(matrixCursor, lastPathSegment);
        return matrixCursor;
    }

    private Cursor buildMessagesCursor() {
        MatrixCursor matrixCursor = new MatrixCursor(this.MESSAGES_COLUMS);
        fillMessageCursor(matrixCursor, null);
        return matrixCursor;
    }

    private void fillMessageCursor(MatrixCursor matrixCursor, String str) {
        Cursor queryMessages;
        String[] strArr = {"_id", "remote_uri", "chat_id", ImContract.ChatItem.DELIVERED_TIMESTAMP, ImContract.Message.DISPLAYED_TIMESTAMP, "notification_status"};
        String[] strArr2 = {str};
        Cursor cursor = null;
        try {
            if (str == null) {
                queryMessages = this.mCache.queryMessages(strArr, null, null, null);
            } else {
                queryMessages = this.mCache.queryMessages(strArr, "_id= ?", strArr2, null);
            }
            Cursor cursor2 = queryMessages;
            if (cursor2 != null && cursor2.getCount() != 0) {
                while (cursor2.moveToNext()) {
                    NotificationStatus fromId = NotificationStatus.fromId(cursor2.getInt(cursor2.getColumnIndexOrThrow("notification_status")));
                    int ordinal = GroupDeliveryInfo.Status.NOT_DELIVERED.ordinal();
                    if (NotificationStatus.NONE == fromId) {
                        ordinal = GroupDeliveryInfo.Status.NOT_DELIVERED.ordinal();
                    } else if (NotificationStatus.DELIVERED == fromId) {
                        ordinal = GroupDeliveryInfo.Status.DELIVERED.ordinal();
                    } else if (NotificationStatus.DISPLAYED == fromId) {
                        ordinal = GroupDeliveryInfo.Status.DISPLAYED.ordinal();
                    }
                    matrixCursor.newRow().add(Long.valueOf(cursor2.getInt(cursor2.getColumnIndexOrThrow("_id")))).add(cursor2.getString(cursor2.getColumnIndexOrThrow("remote_uri"))).add(String.valueOf(cursor2.getInt(cursor2.getColumnIndexOrThrow("chat_id")))).add(Long.valueOf(cursor2.getLong(cursor2.getColumnIndexOrThrow(ImContract.ChatItem.DELIVERED_TIMESTAMP)))).add(Long.valueOf(cursor2.getLong(cursor2.getColumnIndexOrThrow(ImContract.Message.DISPLAYED_TIMESTAMP)))).add(Integer.valueOf(ordinal)).add(Integer.valueOf(GroupDeliveryInfo.ReasonCode.UNSPECIFIED.ordinal()));
                }
                cursor2.close();
                return;
            }
            Log.e(LOG_TAG, "buildMessageCursor: Message not found.");
            if (cursor2 != null) {
                cursor2.close();
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }
}
