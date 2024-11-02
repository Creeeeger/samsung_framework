package com.android.systemui.people;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.UserHandle;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.SystemUIAppComponentFactoryBase;
import com.android.systemui.people.widget.PeopleSpaceWidgetManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class PeopleProvider extends ContentProvider implements SystemUIAppComponentFactoryBase.ContextInitializer {
    public SystemUIAppComponentFactoryBase.ContextAvailableCallback mCallback;
    public PeopleSpaceWidgetManager mPeopleSpaceWidgetManager;

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        this.mCallback.onContextAvailable(context);
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        boolean z;
        if (getContext().checkPermission("android.permission.GET_PEOPLE_TILE_PREVIEW", Binder.getCallingPid(), Binder.getCallingUid()) == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if ("get_people_tile_preview".equals(str)) {
                if (bundle != null) {
                    String string = bundle.getString("shortcut_id", "");
                    String string2 = bundle.getString("package_name", "");
                    UserHandle userHandle = (UserHandle) bundle.getParcelable("user_handle");
                    if (!string.isEmpty()) {
                        if (!string2.isEmpty()) {
                            if (userHandle != null) {
                                PeopleSpaceWidgetManager peopleSpaceWidgetManager = this.mPeopleSpaceWidgetManager;
                                if (peopleSpaceWidgetManager == null) {
                                    Log.e("PeopleProvider", "Could not initialize people widget manager");
                                    return null;
                                }
                                RemoteViews preview = peopleSpaceWidgetManager.getPreview(string, userHandle, string2, bundle);
                                if (preview == null) {
                                    return null;
                                }
                                Bundle bundle2 = new Bundle();
                                bundle2.putParcelable("remote_views", preview);
                                return bundle2;
                            }
                            Log.w("PeopleProvider", "Null user handle");
                            throw new IllegalArgumentException("Null user handle");
                        }
                        Log.w("PeopleProvider", "Invalid package name");
                        throw new IllegalArgumentException("Invalid package name");
                    }
                    Log.w("PeopleProvider", "Invalid shortcut id");
                    throw new IllegalArgumentException("Invalid shortcut id");
                }
                Log.w("PeopleProvider", "Extras can't be null");
                throw new IllegalArgumentException("Extras can't be null");
            }
            Log.w("PeopleProvider", "Invalid method");
            throw new IllegalArgumentException("Invalid method");
        }
        String callingPackage = getCallingPackage();
        Log.w("PeopleProvider", "API not accessible to calling package: " + callingPackage);
        throw new SecurityException(KeyAttributes$$ExternalSyntheticOutline0.m("API not accessible to calling package: ", callingPackage));
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new IllegalArgumentException("Invalid method");
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        throw new IllegalArgumentException("Invalid method");
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new IllegalArgumentException("Invalid method");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new IllegalArgumentException("Invalid method");
    }

    @Override // com.android.systemui.SystemUIAppComponentFactoryBase.ContextInitializer
    public final void setContextAvailableCallback(SystemUIAppComponentFactoryBase.ContextAvailableCallback contextAvailableCallback) {
        this.mCallback = contextAvailableCallback;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new IllegalArgumentException("Invalid method");
    }
}
