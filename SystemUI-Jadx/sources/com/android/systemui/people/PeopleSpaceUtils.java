package com.android.systemui.people;

import android.app.backup.BackupManager;
import android.app.people.IPeopleManager;
import android.app.people.PeopleSpaceTile;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.database.Cursor;
import android.database.SQLException;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.preference.PreferenceManager;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.R;
import com.android.systemui.people.widget.PeopleSpaceWidgetManager;
import com.android.systemui.people.widget.PeopleTileKey;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PeopleSpaceUtils {
    public static final PeopleTileKey EMPTY_KEY = new PeopleTileKey("", -1, "");

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum NotificationAction {
        POSTED,
        REMOVED
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum PeopleSpaceWidgetEvent implements UiEventLogger.UiEventEnum {
        PEOPLE_SPACE_WIDGET_DELETED(666),
        PEOPLE_SPACE_WIDGET_ADDED(667),
        PEOPLE_SPACE_WIDGET_CLICKED(668);

        private final int mId;

        PeopleSpaceWidgetEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    public static Bitmap convertDrawableToBitmap(Drawable drawable) {
        Bitmap createBitmap;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                return bitmapDrawable.getBitmap();
            }
        }
        if (drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0) {
            createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        } else {
            createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0059, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
    
        if (r1 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0047, code lost:
    
        if (r1 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<java.lang.String> getContactLookupKeysWithBirthdaysToday(android.content.Context r10) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 1
            r0.<init>(r1)
            java.text.SimpleDateFormat r1 = new java.text.SimpleDateFormat
            java.lang.String r2 = "MM-dd"
            r1.<init>(r2)
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            java.lang.String r1 = r1.format(r2)
            java.lang.String r2 = "data1"
            java.lang.String r3 = "lookup"
            java.lang.String[] r6 = new java.lang.String[]{r3, r2}
            java.lang.String r7 = "mimetype= ? AND data2=3 AND (substr(data1,6) = ? OR substr(data1,3) = ? )"
            java.lang.String r2 = "vnd.android.cursor.item/contact_event"
            java.lang.String[] r8 = new java.lang.String[]{r2, r1, r1}
            r1 = 0
            android.content.ContentResolver r4 = r10.getContentResolver()     // Catch: java.lang.Throwable -> L4a android.database.SQLException -> L4c
            android.net.Uri r5 = android.provider.ContactsContract.Data.CONTENT_URI     // Catch: java.lang.Throwable -> L4a android.database.SQLException -> L4c
            r9 = 0
            android.database.Cursor r1 = r4.query(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L4a android.database.SQLException -> L4c
        L33:
            if (r1 == 0) goto L47
            boolean r10 = r1.moveToNext()     // Catch: java.lang.Throwable -> L4a android.database.SQLException -> L4c
            if (r10 == 0) goto L47
            int r10 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L4a android.database.SQLException -> L4c
            java.lang.String r10 = r1.getString(r10)     // Catch: java.lang.Throwable -> L4a android.database.SQLException -> L4c
            r0.add(r10)     // Catch: java.lang.Throwable -> L4a android.database.SQLException -> L4c
            goto L33
        L47:
            if (r1 == 0) goto L59
            goto L56
        L4a:
            r10 = move-exception
            goto L5a
        L4c:
            r10 = move-exception
            java.lang.String r2 = "PeopleSpaceUtils"
            java.lang.String r3 = "Failed to query birthdays"
            android.util.Log.e(r2, r3, r10)     // Catch: java.lang.Throwable -> L4a
            if (r1 == 0) goto L59
        L56:
            r1.close()
        L59:
            return r0
        L5a:
            if (r1 == 0) goto L5f
            r1.close()
        L5f:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.people.PeopleSpaceUtils.getContactLookupKeysWithBirthdaysToday(android.content.Context):java.util.List");
    }

    public static void getDataFromContacts(Context context, PeopleSpaceWidgetManager peopleSpaceWidgetManager, Map<Integer, PeopleSpaceTile> map, int[] iArr) {
        Cursor cursor;
        float f;
        boolean z;
        if (iArr.length == 0) {
            return;
        }
        List<String> contactLookupKeysWithBirthdaysToday = getContactLookupKeysWithBirthdaysToday(context);
        for (int i : iArr) {
            PeopleSpaceTile peopleSpaceTile = map.get(Integer.valueOf(i));
            if (peopleSpaceTile != null && peopleSpaceTile.getContactUri() != null) {
                Cursor cursor2 = null;
                try {
                    try {
                        cursor = context.getContentResolver().query(peopleSpaceTile.getContactUri(), null, null, null, null);
                        while (cursor != null) {
                            try {
                                try {
                                    if (!cursor.moveToNext()) {
                                        break;
                                    }
                                    String string = cursor.getString(cursor.getColumnIndex("lookup"));
                                    int columnIndex = cursor.getColumnIndex("starred");
                                    if (columnIndex >= 0) {
                                        if (cursor.getInt(columnIndex) != 0) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        if (z) {
                                            f = Math.max(0.5f, 1.0f);
                                            if (string.isEmpty() && contactLookupKeysWithBirthdaysToday.contains(string)) {
                                                try {
                                                    updateTileContactFields(peopleSpaceWidgetManager, context, peopleSpaceTile, i, f, context.getString(R.string.birthday_status));
                                                } catch (SQLException e) {
                                                    e = e;
                                                    cursor2 = cursor;
                                                    Log.e("PeopleSpaceUtils", "Failed to query contact", e);
                                                    if (cursor2 != null) {
                                                        cursor = cursor2;
                                                        cursor.close();
                                                    }
                                                }
                                            } else {
                                                updateTileContactFields(peopleSpaceWidgetManager, context, peopleSpaceTile, i, f, null);
                                            }
                                        }
                                    }
                                    f = 0.5f;
                                    if (string.isEmpty()) {
                                    }
                                    updateTileContactFields(peopleSpaceWidgetManager, context, peopleSpaceTile, i, f, null);
                                } catch (Throwable th) {
                                    th = th;
                                    cursor2 = cursor;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    throw th;
                                }
                            } catch (SQLException e2) {
                                e = e2;
                            }
                        }
                        if (cursor == null) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (SQLException e3) {
                    e = e3;
                }
                cursor.close();
            } else {
                updateTileContactFields(peopleSpaceWidgetManager, context, peopleSpaceTile, i, 0.0f, null);
            }
        }
    }

    public static List getSortedTiles(final IPeopleManager iPeopleManager, final LauncherApps launcherApps, final UserManager userManager, Stream stream) {
        final int i = 0;
        Stream map = stream.filter(new Predicate() { // from class: com.android.systemui.people.PeopleSpaceUtils$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (i) {
                    case 0:
                        return Objects.nonNull((ShortcutInfo) obj);
                    default:
                        PeopleSpaceTile peopleSpaceTile = (PeopleSpaceTile) obj;
                        if (peopleSpaceTile != null && !TextUtils.isEmpty(peopleSpaceTile.getUserName())) {
                            return true;
                        }
                        return false;
                }
            }
        }).filter(new Predicate() { // from class: com.android.systemui.people.PeopleSpaceUtils$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return !userManager.isQuietModeEnabled(((ShortcutInfo) obj).getUserHandle());
            }
        }).map(new Function() { // from class: com.android.systemui.people.PeopleSpaceUtils$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Long l;
                switch (i) {
                    case 0:
                        return new PeopleSpaceTile.Builder((ShortcutInfo) obj, (LauncherApps) launcherApps).build();
                    default:
                        IPeopleManager iPeopleManager2 = (IPeopleManager) launcherApps;
                        PeopleSpaceTile peopleSpaceTile = (PeopleSpaceTile) obj;
                        PeopleSpaceTile.Builder builder = peopleSpaceTile.toBuilder();
                        try {
                            l = Long.valueOf(iPeopleManager2.getLastInteraction(peopleSpaceTile.getPackageName(), peopleSpaceTile.getUserHandle().getIdentifier(), peopleSpaceTile.getId()));
                        } catch (Exception e) {
                            Log.e("PeopleSpaceUtils", "Couldn't retrieve last interaction time", e);
                            l = 0L;
                        }
                        return builder.setLastInteractionTimestamp(l.longValue()).build();
                }
            }
        });
        final int i2 = 1;
        return (List) map.filter(new Predicate() { // from class: com.android.systemui.people.PeopleSpaceUtils$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (i2) {
                    case 0:
                        return Objects.nonNull((ShortcutInfo) obj);
                    default:
                        PeopleSpaceTile peopleSpaceTile = (PeopleSpaceTile) obj;
                        if (peopleSpaceTile != null && !TextUtils.isEmpty(peopleSpaceTile.getUserName())) {
                            return true;
                        }
                        return false;
                }
            }
        }).map(new Function() { // from class: com.android.systemui.people.PeopleSpaceUtils$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Long l;
                switch (i2) {
                    case 0:
                        return new PeopleSpaceTile.Builder((ShortcutInfo) obj, (LauncherApps) iPeopleManager).build();
                    default:
                        IPeopleManager iPeopleManager2 = (IPeopleManager) iPeopleManager;
                        PeopleSpaceTile peopleSpaceTile = (PeopleSpaceTile) obj;
                        PeopleSpaceTile.Builder builder = peopleSpaceTile.toBuilder();
                        try {
                            l = Long.valueOf(iPeopleManager2.getLastInteraction(peopleSpaceTile.getPackageName(), peopleSpaceTile.getUserHandle().getIdentifier(), peopleSpaceTile.getId()));
                        } catch (Exception e) {
                            Log.e("PeopleSpaceUtils", "Couldn't retrieve last interaction time", e);
                            l = 0L;
                        }
                        return builder.setLastInteractionTimestamp(l.longValue()).build();
                }
            }
        }).sorted(new PeopleSpaceUtils$$ExternalSyntheticLambda6()).collect(Collectors.toList());
    }

    public static PeopleSpaceTile removeNotificationFields(PeopleSpaceTile peopleSpaceTile) {
        PeopleSpaceTile.Builder notificationCategory = peopleSpaceTile.toBuilder().setNotificationKey((String) null).setNotificationContent((CharSequence) null).setNotificationSender((CharSequence) null).setNotificationDataUri((Uri) null).setMessagesCount(0).setNotificationCategory((String) null);
        if (!TextUtils.isEmpty(peopleSpaceTile.getNotificationKey())) {
            notificationCategory.setLastInteractionTimestamp(System.currentTimeMillis());
        }
        return notificationCategory.build();
    }

    public static void removeSharedPreferencesStorageForTile(Context context, PeopleTileKey peopleTileKey, int i, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove(String.valueOf(i));
        String peopleTileKey2 = peopleTileKey.toString();
        HashSet hashSet = new HashSet(sharedPreferences.getStringSet(peopleTileKey2, new HashSet()));
        hashSet.remove(String.valueOf(i));
        edit.putStringSet(peopleTileKey2, hashSet);
        HashSet hashSet2 = new HashSet(sharedPreferences.getStringSet(str, new HashSet()));
        hashSet2.remove(String.valueOf(i));
        edit.putStringSet(str, hashSet2);
        edit.apply();
        SharedPreferences.Editor edit2 = context.getSharedPreferences(String.valueOf(i), 0).edit();
        edit2.remove("package_name");
        edit2.remove(UcmAgentProviderImpl.UcmAgentSpiProperty.KEY_USER_ID);
        edit2.remove("shortcut_id");
        edit2.apply();
    }

    public static void setSharedPreferencesStorageForTile(Context context, PeopleTileKey peopleTileKey, int i, Uri uri, BackupManager backupManager) {
        String uri2;
        if (!PeopleTileKey.isValid(peopleTileKey)) {
            Log.e("PeopleSpaceUtils", "Not storing for invalid key");
            return;
        }
        SharedPreferencesHelper.setPeopleTileKey(context.getSharedPreferences(String.valueOf(i), 0), peopleTileKey);
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (uri == null) {
            uri2 = "";
        } else {
            uri2 = uri.toString();
        }
        edit.putString(String.valueOf(i), uri2);
        String peopleTileKey2 = peopleTileKey.toString();
        HashSet hashSet = new HashSet(sharedPreferences.getStringSet(peopleTileKey2, new HashSet()));
        hashSet.add(String.valueOf(i));
        edit.putStringSet(peopleTileKey2, hashSet);
        if (!TextUtils.isEmpty(uri2)) {
            HashSet hashSet2 = new HashSet(sharedPreferences.getStringSet(uri2, new HashSet()));
            hashSet2.add(String.valueOf(i));
            edit.putStringSet(uri2, hashSet2);
        }
        edit.apply();
        backupManager.dataChanged();
    }

    public static void updateTileContactFields(PeopleSpaceWidgetManager peopleSpaceWidgetManager, Context context, PeopleSpaceTile peopleSpaceTile, int i, float f, String str) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = true;
        if (peopleSpaceTile.getBirthdayText() != null && peopleSpaceTile.getBirthdayText().equals(context.getString(R.string.birthday_status))) {
            z = true;
        } else {
            z = false;
        }
        if (z && str == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (peopleSpaceTile.getBirthdayText() != null && peopleSpaceTile.getBirthdayText().equals(context.getString(R.string.birthday_status))) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z3 && str != null) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (peopleSpaceTile.getContactAffinity() == f && !z2 && !z4) {
            z5 = false;
        }
        if (z5) {
            peopleSpaceWidgetManager.updateAppWidgetOptionsAndView(i, peopleSpaceTile.toBuilder().setBirthdayText(str).setContactAffinity(f).build());
        }
    }
}
