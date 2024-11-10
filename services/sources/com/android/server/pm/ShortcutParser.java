package com.android.server.pm;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import com.android.internal.R;
import com.android.server.pm.ShareTargetInfo;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ShortcutParser {
    static final String METADATA_KEY = "android.app.shortcuts";

    public static List parseShortcuts(ShortcutService shortcutService, String str, int i, List list) {
        ActivityInfo activityInfoWithMetadata;
        List injectGetMainActivities = shortcutService.injectGetMainActivities(str, i);
        if (injectGetMainActivities != null && injectGetMainActivities.size() != 0) {
            list.clear();
            try {
                int size = injectGetMainActivities.size();
                List list2 = null;
                for (int i2 = 0; i2 < size; i2++) {
                    ActivityInfo activityInfo = ((ResolveInfo) injectGetMainActivities.get(i2)).activityInfo;
                    if (activityInfo != null && (activityInfoWithMetadata = shortcutService.getActivityInfoWithMetadata(activityInfo.getComponentName(), i)) != null) {
                        list2 = parseShortcutsOneFile(shortcutService, activityInfoWithMetadata, str, i, list2, list);
                    }
                }
                return list2;
            } catch (RuntimeException e) {
                shortcutService.wtf("Exception caught while parsing shortcut XML for package=" + str, e);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0378, code lost:
    
        r11 = r5;
        r9.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x037c, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List parseShortcutsOneFile(com.android.server.pm.ShortcutService r25, android.content.pm.ActivityInfo r26, java.lang.String r27, int r28, java.util.List r29, java.util.List r30) {
        /*
            Method dump skipped, instructions count: 904
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.ShortcutParser.parseShortcutsOneFile(com.android.server.pm.ShortcutService, android.content.pm.ActivityInfo, java.lang.String, int, java.util.List, java.util.List):java.util.List");
    }

    public static String parseCategories(ShortcutService shortcutService, AttributeSet attributeSet) {
        TypedArray obtainAttributes = shortcutService.mContext.getResources().obtainAttributes(attributeSet, R.styleable.ShortcutCategories);
        try {
            if (obtainAttributes.getType(0) == 3) {
                return obtainAttributes.getNonResourceString(0);
            }
            Log.w("ShortcutService", "android:name for shortcut category must be string literal.");
            obtainAttributes.recycle();
            return null;
        } finally {
            obtainAttributes.recycle();
        }
    }

    public static ShortcutInfo parseShortcutAttributes(ShortcutService shortcutService, AttributeSet attributeSet, String str, ComponentName componentName, int i, int i2) {
        TypedArray obtainAttributes = shortcutService.mContext.getResources().obtainAttributes(attributeSet, R.styleable.Shortcut);
        try {
            if (obtainAttributes.getType(2) != 3) {
                Log.w("ShortcutService", "android:shortcutId must be string literal. activity=" + componentName);
                return null;
            }
            String nonResourceString = obtainAttributes.getNonResourceString(2);
            boolean z = obtainAttributes.getBoolean(1, true);
            int resourceId = obtainAttributes.getResourceId(0, 0);
            int resourceId2 = obtainAttributes.getResourceId(3, 0);
            int resourceId3 = obtainAttributes.getResourceId(4, 0);
            int resourceId4 = obtainAttributes.getResourceId(5, 0);
            int resourceId5 = obtainAttributes.getResourceId(6, 0);
            String resourceName = resourceId5 != 0 ? shortcutService.mContext.getResources().getResourceName(resourceId5) : null;
            if (TextUtils.isEmpty(nonResourceString)) {
                Log.w("ShortcutService", "android:shortcutId must be provided. activity=" + componentName);
                return null;
            }
            if (resourceId2 != 0) {
                return createShortcutFromManifest(shortcutService, i, nonResourceString, str, componentName, resourceId2, resourceId3, resourceId4, i2, resourceId, z, resourceName);
            }
            Log.w("ShortcutService", "android:shortcutShortLabel must be provided. activity=" + componentName);
            return null;
        } finally {
            obtainAttributes.recycle();
        }
    }

    public static ShortcutInfo createShortcutFromManifest(ShortcutService shortcutService, int i, String str, String str2, ComponentName componentName, int i2, int i3, int i4, int i5, int i6, boolean z, String str3) {
        int i7 = (z ? 32 : 64) | 256;
        int i8 = i6 != 0 ? 4 : 0;
        return new ShortcutInfo(i, str, str2, componentName, null, null, i2, null, null, i3, null, null, i4, null, null, null, i5, null, shortcutService.injectCurrentTimeMillis(), i7 | i8, i6, null, null, null, !z ? 1 : 0, null, null, str3, null);
    }

    public static String parseCategory(ShortcutService shortcutService, AttributeSet attributeSet) {
        TypedArray obtainAttributes = shortcutService.mContext.getResources().obtainAttributes(attributeSet, R.styleable.IntentCategory);
        try {
            if (obtainAttributes.getType(0) != 3) {
                Log.w("ShortcutService", "android:name must be string literal.");
                obtainAttributes.recycle();
                return null;
            }
            return obtainAttributes.getString(0);
        } finally {
            obtainAttributes.recycle();
        }
    }

    public static ShareTargetInfo parseShareTargetAttributes(ShortcutService shortcutService, AttributeSet attributeSet) {
        TypedArray obtainAttributes = shortcutService.mContext.getResources().obtainAttributes(attributeSet, R.styleable.Intent);
        try {
            String string = obtainAttributes.getString(4);
            if (TextUtils.isEmpty(string)) {
                Log.w("ShortcutService", "android:targetClass must be provided.");
                return null;
            }
            return new ShareTargetInfo(null, string, null);
        } finally {
            obtainAttributes.recycle();
        }
    }

    public static ShareTargetInfo.TargetData parseShareTargetData(ShortcutService shortcutService, AttributeSet attributeSet) {
        TypedArray obtainAttributes = shortcutService.mContext.getResources().obtainAttributes(attributeSet, R.styleable.AndroidManifestData);
        try {
            if (obtainAttributes.getType(0) != 3) {
                Log.w("ShortcutService", "android:mimeType must be string literal.");
                obtainAttributes.recycle();
                return null;
            }
            return new ShareTargetInfo.TargetData(obtainAttributes.getString(1), obtainAttributes.getString(2), obtainAttributes.getString(3), obtainAttributes.getString(4), obtainAttributes.getString(6), obtainAttributes.getString(5), obtainAttributes.getString(0));
        } finally {
            obtainAttributes.recycle();
        }
    }
}
