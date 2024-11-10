package com.android.server.notification;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.provider.CalendarContract;
import android.service.notification.ZenModeConfig;
import android.util.Log;
import android.util.Slog;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import java.io.PrintWriter;
import java.util.Objects;

/* loaded from: classes2.dex */
public class CalendarTracker {
    public Callback mCallback;
    public final ContentObserver mObserver = new ContentObserver(null) { // from class: com.android.server.notification.CalendarTracker.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (CalendarTracker.DEBUG) {
                Log.d("ConditionProviders.CT", "onChange selfChange=" + z + " uri=" + uri + " u=" + CalendarTracker.this.mUserContext.getUserId());
            }
            CalendarTracker.this.mCallback.onChanged();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            if (CalendarTracker.DEBUG) {
                Log.d("ConditionProviders.CT", "onChange selfChange=" + z);
            }
        }
    };
    public boolean mRegistered;
    public final Context mSystemContext;
    public final Context mUserContext;
    public static final boolean DEBUG = Log.isLoggable("ConditionProviders", 3);
    public static final String[] INSTANCE_PROJECTION = {"begin", "end", KnoxCustomManagerService.SHORTCUT_TITLE, "visible", "event_id", "calendar_displayName", "ownerAccount", "calendar_id", "availability"};
    public static final String[] ATTENDEE_PROJECTION = {"event_id", "attendeeEmail", "attendeeStatus"};

    /* loaded from: classes2.dex */
    public interface Callback {
        void onChanged();
    }

    /* loaded from: classes2.dex */
    public class CheckEventResult {
        public boolean inEvent;
        public long recheckAt;
    }

    public static boolean meetsReply(int i, int i2) {
        return i != 0 ? i != 1 ? i == 2 && i2 == 1 : i2 == 1 || i2 == 4 : i2 != 2;
    }

    public CalendarTracker(Context context, Context context2) {
        this.mSystemContext = context;
        this.mUserContext = context2;
    }

    public void setCallback(Callback callback) {
        if (this.mCallback == callback) {
            return;
        }
        this.mCallback = callback;
        setRegistered(callback != null);
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("mCallback=");
        printWriter.println(this.mCallback);
        printWriter.print(str);
        printWriter.print("mRegistered=");
        printWriter.println(this.mRegistered);
        printWriter.print(str);
        printWriter.print("u=");
        printWriter.println(this.mUserContext.getUserId());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
    
        if (com.android.server.notification.CalendarTracker.DEBUG == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
    
        android.util.Log.d("ConditionProviders.CT", "getCalendarsWithAccess took " + (java.lang.System.currentTimeMillis() - r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0064, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0042, code lost:
    
        if (r4 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
    
        if (r4 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.ArraySet getCalendarsWithAccess() {
        /*
            r11 = this;
            java.lang.String r0 = "ConditionProviders.CT"
            long r1 = java.lang.System.currentTimeMillis()
            android.util.ArraySet r3 = new android.util.ArraySet
            r3.<init>()
            java.lang.String r4 = "_id"
            java.lang.String[] r7 = new java.lang.String[]{r4}
            r4 = 0
            android.content.Context r11 = r11.mUserContext     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            android.content.ContentResolver r5 = r11.getContentResolver()     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            android.net.Uri r6 = android.provider.CalendarContract.Calendars.CONTENT_URI     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            java.lang.String r8 = "calendar_access_level >= 500 AND sync_events = 1"
            r9 = 0
            r10 = 0
            android.database.Cursor r4 = r5.query(r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
        L22:
            if (r4 == 0) goto L37
            boolean r11 = r4.moveToNext()     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            if (r11 == 0) goto L37
            r11 = 0
            long r5 = r4.getLong(r11)     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            java.lang.Long r11 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            r3.add(r11)     // Catch: java.lang.Throwable -> L3a android.database.sqlite.SQLiteException -> L3c
            goto L22
        L37:
            if (r4 == 0) goto L47
            goto L44
        L3a:
            r11 = move-exception
            goto L65
        L3c:
            r11 = move-exception
            java.lang.String r5 = "error querying calendar content provider"
            android.util.Slog.w(r0, r5, r11)     // Catch: java.lang.Throwable -> L3a
            if (r4 == 0) goto L47
        L44:
            r4.close()
        L47:
            boolean r11 = com.android.server.notification.CalendarTracker.DEBUG
            if (r11 == 0) goto L64
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r4 = "getCalendarsWithAccess took "
            r11.append(r4)
            long r4 = java.lang.System.currentTimeMillis()
            long r4 = r4 - r1
            r11.append(r4)
            java.lang.String r11 = r11.toString()
            android.util.Log.d(r0, r11)
        L64:
            return r3
        L65:
            if (r4 == 0) goto L6a
            r4.close()
        L6a:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.notification.CalendarTracker.getCalendarsWithAccess():android.util.ArraySet");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.server.notification.CalendarTracker.CheckEventResult checkEvent(android.service.notification.ZenModeConfig.EventInfo r26, long r27) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.notification.CalendarTracker.checkEvent(android.service.notification.ZenModeConfig$EventInfo, long):com.android.server.notification.CalendarTracker$CheckEventResult");
    }

    public final boolean meetsAttendee(ZenModeConfig.EventInfo eventInfo, int i, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = 0;
        Cursor cursor = null;
        try {
            try {
                Cursor query = this.mUserContext.getContentResolver().query(CalendarContract.Attendees.CONTENT_URI, ATTENDEE_PROJECTION, "event_id = ? AND attendeeEmail = ?", new String[]{Integer.toString(i), str}, null);
                int i3 = 1;
                if (query != null && query.getCount() != 0) {
                    boolean z = false;
                    while (query.moveToNext()) {
                        long j = query.getLong(i2);
                        String string = query.getString(i3);
                        int i4 = query.getInt(2);
                        boolean meetsReply = meetsReply(eventInfo.reply, i4);
                        if (DEBUG) {
                            Log.d("ConditionProviders.CT", "" + String.format("status=%s, meetsReply=%s", attendeeStatusToString(i4), Boolean.valueOf(meetsReply)));
                        }
                        z |= j == ((long) i) && Objects.equals(string, str) && meetsReply;
                        i3 = 1;
                        i2 = 0;
                    }
                    query.close();
                    if (DEBUG) {
                        Log.d("ConditionProviders.CT", "meetsAttendee took " + (System.currentTimeMillis() - currentTimeMillis));
                    }
                    return z;
                }
                boolean z2 = DEBUG;
                if (z2) {
                    Log.d("ConditionProviders.CT", "No attendees found");
                }
                if (query != null) {
                    query.close();
                }
                if (!z2) {
                    return true;
                }
                Log.d("ConditionProviders.CT", "meetsAttendee took " + (System.currentTimeMillis() - currentTimeMillis));
                return true;
            } catch (SQLiteException e) {
                Slog.w("ConditionProviders.CT", "error querying attendees content provider", e);
                if (0 != 0) {
                    cursor.close();
                }
                if (!DEBUG) {
                    return false;
                }
                Log.d("ConditionProviders.CT", "meetsAttendee took " + (System.currentTimeMillis() - currentTimeMillis));
                return false;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            if (DEBUG) {
                Log.d("ConditionProviders.CT", "meetsAttendee took " + (System.currentTimeMillis() - currentTimeMillis));
            }
            throw th;
        }
    }

    public final void setRegistered(boolean z) {
        if (this.mRegistered == z) {
            return;
        }
        ContentResolver contentResolver = this.mSystemContext.getContentResolver();
        int userId = this.mUserContext.getUserId();
        if (this.mRegistered) {
            if (DEBUG) {
                Log.d("ConditionProviders.CT", "unregister content observer u=" + userId);
            }
            contentResolver.unregisterContentObserver(this.mObserver);
        }
        this.mRegistered = z;
        boolean z2 = DEBUG;
        if (z2) {
            Log.d("ConditionProviders.CT", "mRegistered = " + z + " u=" + userId);
        }
        if (this.mRegistered) {
            if (z2) {
                Log.d("ConditionProviders.CT", "register content observer u=" + userId);
            }
            contentResolver.registerContentObserver(CalendarContract.Instances.CONTENT_URI, true, this.mObserver, userId);
            contentResolver.registerContentObserver(CalendarContract.Events.CONTENT_URI, true, this.mObserver, userId);
            contentResolver.registerContentObserver(CalendarContract.Calendars.CONTENT_URI, true, this.mObserver, userId);
        }
    }

    public static String attendeeStatusToString(int i) {
        if (i == 0) {
            return "ATTENDEE_STATUS_NONE";
        }
        if (i == 1) {
            return "ATTENDEE_STATUS_ACCEPTED";
        }
        if (i == 2) {
            return "ATTENDEE_STATUS_DECLINED";
        }
        if (i == 3) {
            return "ATTENDEE_STATUS_INVITED";
        }
        if (i == 4) {
            return "ATTENDEE_STATUS_TENTATIVE";
        }
        return "ATTENDEE_STATUS_UNKNOWN_" + i;
    }

    public static String availabilityToString(int i) {
        if (i == 0) {
            return "AVAILABILITY_BUSY";
        }
        if (i == 1) {
            return "AVAILABILITY_FREE";
        }
        if (i == 2) {
            return "AVAILABILITY_TENTATIVE";
        }
        return "AVAILABILITY_UNKNOWN_" + i;
    }
}
