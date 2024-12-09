package com.sec.internal.ims.servicemodules.tapi.service.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.util.Log;
import com.gsma.services.rcs.sharing.geoloc.GeolocSharing;
import com.gsma.services.rcs.sharing.geoloc.GeolocSharingLog;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.ims.servicemodules.csh.event.ICshConstants;
import com.sec.internal.ims.servicemodules.im.ImCache;
import com.sec.internal.ims.util.PhoneUtils;

/* loaded from: classes.dex */
public class GeolocProvider extends ContentProvider {
    private static final String AUTHORITY;
    private static final String LOG_TAG = GeolocProvider.class.getSimpleName();
    private static final int RCSAPI = 1;
    private static final int RCSAPI_ID = 2;
    private static final UriMatcher sUriMatcher;
    private final String[] MESSAGE_COLUMNS = {"_id", "sharing_id", ICshConstants.ShareDatabase.KEY_TARGET_CONTACT, "content", "mime_type", "direction", "timestamp", "state", "reason_code"};
    private ImCache mCache;

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        String authority = GeolocSharingLog.CONTENT_URI.getAuthority();
        AUTHORITY = authority;
        uriMatcher.addURI(authority, "geolocshare", 1);
        uriMatcher.addURI(authority, "geolocshare/#", 2);
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
        if (!this.mCache.isLoaded()) {
            Log.e(LOG_TAG, "ImCache is not ready yet.");
            return null;
        }
        int match = sUriMatcher.match(uri);
        if (match == 1) {
            return buildMessagesCursor();
        }
        if (match == 2) {
            return buildMessagesCursor(uri);
        }
        Log.d(LOG_TAG, "return null");
        return null;
    }

    private Cursor buildMessagesCursor() {
        MatrixCursor matrixCursor = new MatrixCursor(this.MESSAGE_COLUMNS);
        fillMessageCursor(matrixCursor, null);
        return matrixCursor;
    }

    private Cursor buildMessagesCursor(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            Log.e(LOG_TAG, "buildMessageCursor: No last segment.");
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(this.MESSAGE_COLUMNS);
        fillMessageCursor(matrixCursor, lastPathSegment);
        if (matrixCursor.getCount() == 0) {
            Log.e(LOG_TAG, "buildMessageCursor: Message not found.");
        }
        return matrixCursor;
    }

    private void fillMessageCursor(MatrixCursor matrixCursor, String str) {
        Cursor queryMessages;
        String[] strArr = {"_id", "chat_id", "remote_uri", "content_type", "direction", ImContract.ChatItem.EXT_INFO, "reason", ImContract.ChatItem.DELIVERED_TIMESTAMP, "state"};
        String[] strArr2 = {str};
        Cursor cursor = null;
        try {
            if (str == null) {
                queryMessages = this.mCache.queryMessages(strArr, null, null, null);
            } else {
                queryMessages = this.mCache.queryMessages(strArr, "_id= ? ", strArr2, null);
            }
            if (queryMessages != null) {
                try {
                    if (queryMessages.getCount() != 0) {
                        int i = 0;
                        while (queryMessages.moveToNext()) {
                            String string = queryMessages.getString(queryMessages.getColumnIndexOrThrow("content_type"));
                            Object string2 = queryMessages.getString(queryMessages.getColumnIndexOrThrow(ImContract.ChatItem.EXT_INFO));
                            String string3 = queryMessages.getString(queryMessages.getColumnIndexOrThrow("remote_uri"));
                            int i2 = queryMessages.getInt(queryMessages.getColumnIndexOrThrow("direction"));
                            if (string != null && string.equals(MIMEContentType.LOCATION_PUSH) && string2 != null) {
                                Object[] objArr = new Object[9];
                                int i3 = i + 1;
                                objArr[0] = Integer.valueOf(i);
                                objArr[1] = String.valueOf(queryMessages.getString(queryMessages.getColumnIndexOrThrow("_id")));
                                if (string3 == null) {
                                    string3 = null;
                                }
                                objArr[2] = PhoneUtils.extractNumberFromUri(string3);
                                objArr[3] = string;
                                objArr[4] = Integer.valueOf(i2);
                                objArr[5] = string2;
                                objArr[6] = Integer.valueOf(transReason(queryMessages.getInt(queryMessages.getColumnIndexOrThrow("reason"))));
                                objArr[7] = Long.valueOf(queryMessages.getInt(queryMessages.getColumnIndexOrThrow(ImContract.ChatItem.DELIVERED_TIMESTAMP)));
                                objArr[8] = Integer.valueOf(transState(queryMessages.getInt(queryMessages.getColumnIndexOrThrow("state")), i2));
                                matrixCursor.addRow(objArr);
                                i = i3;
                            }
                        }
                        queryMessages.close();
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = queryMessages;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            Log.e(LOG_TAG, "buildMessageCursor: Message not found.");
            if (queryMessages != null) {
                queryMessages.close();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    private int transState(int i, int i2) {
        int ordinal = GeolocSharing.State.INVITED.ordinal();
        if (i != 0 && i != 1) {
            if (i == 2) {
                return GeolocSharing.State.STARTED.ordinal();
            }
            if (i == 3) {
                return GeolocSharing.State.RINGING.ordinal();
            }
            if (i != 4) {
                if (i != 6) {
                    if (i != 7) {
                        return ordinal;
                    }
                }
            }
            return GeolocSharing.State.ABORTED.ordinal();
        }
        if (ImDirection.INCOMING.getId() == i2) {
            return GeolocSharing.State.INVITED.ordinal();
        }
        return ImDirection.OUTGOING.getId() == i2 ? GeolocSharing.State.INITIATING.ordinal() : ordinal;
    }

    private int transReason(int i) {
        CancelReason valueOf = CancelReason.valueOf(i);
        if (valueOf == null) {
            return GeolocSharing.ReasonCode.UNSPECIFIED.ordinal();
        }
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[valueOf.ordinal()]) {
            case 1:
                return GeolocSharing.ReasonCode.ABORTED_BY_USER.ordinal();
            case 2:
                return GeolocSharing.ReasonCode.ABORTED_BY_REMOTE.ordinal();
            case 3:
                return GeolocSharing.ReasonCode.ABORTED_BY_SYSTEM.ordinal();
            case 4:
                return GeolocSharing.ReasonCode.REJECTED_BY_REMOTE.ordinal();
            case 5:
                return GeolocSharing.ReasonCode.FAILED_SHARING.ordinal();
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return GeolocSharing.ReasonCode.FAILED_INITIATION.ordinal();
            case 17:
            case 18:
            case 19:
            case 20:
                return GeolocSharing.ReasonCode.FAILED_SHARING.ordinal();
            default:
                return 0;
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.tapi.service.provider.GeolocProvider$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason;

        static {
            int[] iArr = new int[CancelReason.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason = iArr;
            try {
                iArr[CancelReason.CANCELED_BY_USER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CANCELED_BY_REMOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CANCELED_BY_SYSTEM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REJECTED_BY_REMOTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.TIME_OUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.NOT_AUTHORIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CONNECTION_RELEASED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CONTENT_REACHED_DOWNSIZE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.DEVICE_UNREGISTERED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.FORBIDDEN_NO_RETRY_FALLBACK.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.INVALID_REQUEST.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.LOCALLY_ABORTED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.LOW_MEMORY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.NO_RESPONSE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REMOTE_BLOCKED.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REMOTE_USER_INVALID.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.VALIDITY_EXPIRED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }
}
