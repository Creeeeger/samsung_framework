package com.android.systemui.people.widget;

import android.app.backup.BackupDataOutput;
import android.app.backup.SharedPreferencesBackupHelper;
import android.app.people.IPeopleManager;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import com.android.systemui.people.widget.PeopleBackupHelper;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PeopleBackupHelper extends SharedPreferencesBackupHelper {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AppWidgetManager mAppWidgetManager;
    public final Context mContext;
    public final IPeopleManager mIPeopleManager;
    public final PackageManager mPackageManager;
    public final UserHandle mUserHandle;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.people.widget.PeopleBackupHelper$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType;

        static {
            int[] iArr = new int[SharedFileEntryType.values().length];
            $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType = iArr;
            try {
                iArr[SharedFileEntryType.WIDGET_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType[SharedFileEntryType.PEOPLE_TILE_KEY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType[SharedFileEntryType.CONTACT_URI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType[SharedFileEntryType.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum SharedFileEntryType {
        UNKNOWN,
        WIDGET_ID,
        PEOPLE_TILE_KEY,
        CONTACT_URI
    }

    public PeopleBackupHelper(Context context, UserHandle userHandle, String[] strArr) {
        super(context, strArr);
        this.mContext = context;
        this.mUserHandle = userHandle;
        this.mPackageManager = context.getPackageManager();
        this.mIPeopleManager = IPeopleManager.Stub.asInterface(ServiceManager.getService("people"));
        this.mAppWidgetManager = AppWidgetManager.getInstance(context);
    }

    public static SharedFileEntryType getEntryType(Map.Entry entry) {
        String str = (String) entry.getKey();
        if (str == null) {
            return SharedFileEntryType.UNKNOWN;
        }
        try {
            try {
                Integer.parseInt(str);
                try {
                    return SharedFileEntryType.WIDGET_ID;
                } catch (Exception unused) {
                    Log.w("PeopleBackupHelper", "Malformed value, skipping:" + entry.getValue());
                    return SharedFileEntryType.UNKNOWN;
                }
            } catch (Exception unused2) {
                Log.w("PeopleBackupHelper", "Malformed value, skipping:" + entry.getValue());
                return SharedFileEntryType.UNKNOWN;
            }
        } catch (NumberFormatException unused3) {
            if (PeopleTileKey.fromString(str) != null) {
                return SharedFileEntryType.PEOPLE_TILE_KEY;
            }
            try {
                Uri.parse(str);
                return SharedFileEntryType.CONTACT_URI;
            } catch (Exception unused4) {
                return SharedFileEntryType.UNKNOWN;
            }
        }
    }

    public static void updateWidgets(Context context) {
        int[] appWidgetIds = AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, (Class<?>) PeopleSpaceWidgetProvider.class));
        if (appWidgetIds != null && appWidgetIds.length != 0) {
            Intent intent = new Intent(context, (Class<?>) PeopleSpaceWidgetProvider.class);
            intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
            intent.putExtra("appWidgetIds", appWidgetIds);
            context.sendBroadcast(intent);
        }
    }

    @Override // android.app.backup.SharedPreferencesBackupHelper, android.app.backup.BackupHelper
    public final void performBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        if (defaultSharedPreferences.getAll().isEmpty()) {
            return;
        }
        final SharedPreferences.Editor edit = this.mContext.getSharedPreferences("shared_backup", 0).edit();
        edit.clear();
        int identifier = this.mUserHandle.getIdentifier();
        final ArrayList arrayList = new ArrayList();
        for (int i : this.mAppWidgetManager.getAppWidgetIds(new ComponentName(this.mContext, (Class<?>) PeopleSpaceWidgetProvider.class))) {
            String valueOf = String.valueOf(i);
            if (this.mContext.getSharedPreferences(valueOf, 0).getInt(UcmAgentProviderImpl.UcmAgentSpiProperty.KEY_USER_ID, -1) == identifier) {
                arrayList.add(valueOf);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        defaultSharedPreferences.getAll().entrySet().forEach(new Consumer() { // from class: com.android.systemui.people.widget.PeopleBackupHelper$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PeopleBackupHelper peopleBackupHelper = PeopleBackupHelper.this;
                SharedPreferences.Editor editor = edit;
                final List list = arrayList;
                Map.Entry entry = (Map.Entry) obj;
                peopleBackupHelper.getClass();
                String str = (String) entry.getKey();
                if (!TextUtils.isEmpty(str)) {
                    int i2 = PeopleBackupHelper.AnonymousClass1.$SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType[PeopleBackupHelper.getEntryType(entry).ordinal()];
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 3) {
                                MotionLayout$$ExternalSyntheticOutline0.m("Key not identified, skipping: ", str, "PeopleBackupHelper");
                                return;
                            }
                            Set<String> set = (Set) entry.getValue();
                            Uri parse = Uri.parse(String.valueOf(str));
                            if (ContentProvider.uriHasUserId(parse)) {
                                int userIdFromUri = ContentProvider.getUserIdFromUri(parse);
                                if (userIdFromUri == peopleBackupHelper.mUserHandle.getIdentifier()) {
                                    Uri uriWithoutUserId = ContentProvider.getUriWithoutUserId(parse);
                                    editor.putInt("add_user_id_to_uri_" + uriWithoutUserId.toString(), userIdFromUri);
                                    editor.putStringSet(uriWithoutUserId.toString(), set);
                                    return;
                                }
                                return;
                            }
                            if (peopleBackupHelper.mUserHandle.isSystem()) {
                                editor.putStringSet(parse.toString(), set);
                                return;
                            }
                            return;
                        }
                        Set set2 = (Set) entry.getValue();
                        PeopleTileKey fromString = PeopleTileKey.fromString(str);
                        if (fromString.mUserId == peopleBackupHelper.mUserHandle.getIdentifier()) {
                            Set<String> set3 = (Set) set2.stream().filter(new Predicate() { // from class: com.android.systemui.people.widget.PeopleBackupHelper$$ExternalSyntheticLambda1
                                @Override // java.util.function.Predicate
                                public final boolean test(Object obj2) {
                                    return list.contains((String) obj2);
                                }
                            }).collect(Collectors.toSet());
                            if (!set3.isEmpty()) {
                                fromString.mUserId = -1;
                                editor.putStringSet(fromString.toString(), set3);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    String valueOf2 = String.valueOf(entry.getValue());
                    if (list.contains(str)) {
                        Uri parse2 = Uri.parse(valueOf2);
                        if (ContentProvider.uriHasUserId(parse2)) {
                            editor.putInt("add_user_id_to_uri_" + str, ContentProvider.getUserIdFromUri(parse2));
                            parse2 = ContentProvider.getUriWithoutUserId(parse2);
                        }
                        editor.putString(str, parse2.toString());
                    }
                }
            }
        });
        edit.apply();
        super.performBackup(parcelFileDescriptor, backupDataOutput, parcelFileDescriptor2);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0121 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0031 A[SYNTHETIC] */
    @Override // android.app.backup.SharedPreferencesBackupHelper, android.app.backup.BackupHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void restoreEntity(android.app.backup.BackupDataInputStream r13) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.people.widget.PeopleBackupHelper.restoreEntity(android.app.backup.BackupDataInputStream):void");
    }

    public PeopleBackupHelper(Context context, UserHandle userHandle, String[] strArr, PackageManager packageManager, IPeopleManager iPeopleManager) {
        super(context, strArr);
        this.mContext = context;
        this.mUserHandle = userHandle;
        this.mPackageManager = packageManager;
        this.mIPeopleManager = iPeopleManager;
        this.mAppWidgetManager = AppWidgetManager.getInstance(context);
    }
}
