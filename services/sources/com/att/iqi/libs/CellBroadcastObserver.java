package com.att.iqi.libs;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Parcelable;
import android.telephony.SmsCbMessage;
import android.text.TextUtils;
import com.att.iqi.lib.IQIManager;
import com.att.iqi.lib.metrics.ea.EA12;
import com.att.iqi.lib.metrics.ea.EA13;
import com.att.iqi.lib.metrics.ea.EA14;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class CellBroadcastObserver extends ContentObserver {
    private static final String CELLBROADCASTS_APP_AUTHORITY = "cellbroadcasts-app";
    private static final String CELLBROADCASTS_AUTHORITY = "cellbroadcasts";
    private final Context mContext;
    private final IQIManager mIQIManager;
    private final Set pendingReadList;
    private static final Uri CELLBROADCASTS_CONTENT_URI = Uri.parse("content://cellbroadcasts/");
    private static final Uri CELLBROADCASTS_DISPLAYED_CONTENT_URI = Uri.parse("content://cellbroadcasts/displayed");
    private static final Uri CELLBROADCASTS_APP_CONTENT_URI = Uri.parse("content://cellbroadcasts-app/");

    public CellBroadcastObserver(Context context, Handler handler) {
        super(handler);
        this.pendingReadList = new HashSet();
        this.mContext = context;
        this.mIQIManager = IQIManager.getInstance();
    }

    public final void register() {
        this.mContext.getContentResolver().registerContentObserver(CELLBROADCASTS_DISPLAYED_CONTENT_URI, true, this);
        this.mContext.getContentResolver().registerContentObserver(CELLBROADCASTS_APP_CONTENT_URI, true, this);
        if (LogUtil.canLog()) {
            LogUtil.logd("CB observers registered");
        }
    }

    public final void unregister() {
        this.mContext.getContentResolver().unregisterContentObserver(this);
        if (LogUtil.canLog()) {
            LogUtil.logd("CB observers unregistered");
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        if (uri == null) {
            if (LogUtil.canLog()) {
                LogUtil.logd("Received null uri!");
                return;
            }
            return;
        }
        if (LogUtil.canLog()) {
            LogUtil.logd("CellBroadcasterObserver received update: " + uri);
        }
        String host = uri.getHost();
        if (TextUtils.equals(host, CELLBROADCASTS_AUTHORITY)) {
            List<String> pathSegments = uri.getPathSegments();
            if (LogUtil.canLog()) {
                Iterator<String> it = pathSegments.iterator();
                while (it.hasNext()) {
                    LogUtil.logd("URI segment: " + it.next());
                }
            }
            if (pathSegments.size() >= 1) {
                String lastPathSegment = uri.getLastPathSegment();
                try {
                    int parseInt = Integer.parseInt(lastPathSegment);
                    if (LogUtil.canLog()) {
                        LogUtil.logd("Record ID " + parseInt);
                    }
                    reportNewMessageReceivedAndDisplayed(lastPathSegment);
                    return;
                } catch (Exception e) {
                    if (LogUtil.canLog()) {
                        LogUtil.logd("The last segment is not an integer!", e);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (TextUtils.equals(host, CELLBROADCASTS_APP_AUTHORITY)) {
            checkAndMaybeReportReadMessages();
        } else if (LogUtil.canLog()) {
            LogUtil.logd("Received callback on unknown URI: " + uri);
        }
    }

    private String buildQuerySelection(Set set) {
        StringBuilder sb = new StringBuilder();
        sb.append("read=1 AND date IN (");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            sb.append((Long) it.next());
            sb.append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append(")");
        return sb.toString();
    }

    private void checkAndMaybeReportReadMessages() {
        if (this.pendingReadList.size() >= 1) {
            try {
                Cursor query = this.mContext.getContentResolver().query(CELLBROADCASTS_APP_CONTENT_URI, null, buildQuerySelection(this.pendingReadList), null, null);
                while (query.moveToNext()) {
                    try {
                        long j = query.getLong(query.getColumnIndex("date"));
                        if (this.pendingReadList.contains(Long.valueOf(j))) {
                            int i = query.getInt(query.getColumnIndex("serial_number"));
                            this.mIQIManager.submitMetric(new EA14(query.getInt(query.getColumnIndex("service_category")), i));
                            this.pendingReadList.remove(Long.valueOf(j));
                            if (LogUtil.canLog()) {
                                LogUtil.logd("CB with serial #: " + i + " read");
                            }
                        }
                    } finally {
                    }
                }
                query.close();
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("Error while querying " + CELLBROADCASTS_APP_CONTENT_URI, e);
                }
            }
        }
    }

    private void reportNewMessageReceivedAndDisplayed(String str) {
        try {
            Cursor query = this.mContext.getContentResolver().query(CELLBROADCASTS_CONTENT_URI, null, "_id=?", new String[]{str}, null);
            while (query.moveToNext()) {
                try {
                    SmsCbMessage createFromCursor = SmsCbMessage.createFromCursor(query);
                    if (LogUtil.canLog()) {
                        LogUtil.logd("New CB Message [ID: " + str + "] was displayed: " + createFromCursor);
                    }
                    EA12 ea12 = new EA12((Parcelable) createFromCursor);
                    EA13 ea13 = new EA13(createFromCursor.getServiceCategory(), createFromCursor.getSerialNumber());
                    this.mIQIManager.submitMetric(ea12);
                    this.mIQIManager.submitMetric(ea13);
                    this.pendingReadList.add(Long.valueOf(createFromCursor.getReceivedTime()));
                } finally {
                }
            }
            query.close();
        } catch (Exception e) {
            if (LogUtil.canLog()) {
                LogUtil.logd("Error while querying " + CELLBROADCASTS_CONTENT_URI, e);
            }
        }
    }
}
