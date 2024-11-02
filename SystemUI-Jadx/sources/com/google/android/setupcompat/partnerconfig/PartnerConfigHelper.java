package com.google.android.setupcompat.partnerconfig;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.setupcompat.partnerconfig.PartnerConfig;
import com.google.android.setupcompat.util.BuildCompatUtils;
import java.util.EnumMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PartnerConfigHelper {
    public static final String EMBEDDED_ACTIVITY_RESOURCE_SUFFIX = "_embedded_activity";
    public static final String GET_SUW_DEFAULT_THEME_STRING_METHOD = "suwDefaultThemeString";
    public static final String IS_DYNAMIC_COLOR_ENABLED_METHOD = "isDynamicColorEnabled";
    public static final String IS_EMBEDDED_ACTIVITY_ONE_PANE_ENABLED_METHOD = "isEmbeddedActivityOnePaneEnabled";
    public static final String IS_EXTENDED_PARTNER_CONFIG_ENABLED_METHOD = "isExtendedPartnerConfigEnabled";
    public static final String IS_MATERIAL_YOU_STYLE_ENABLED_METHOD = "IsMaterialYouStyleEnabled";
    public static final String IS_NEUTRAL_BUTTON_STYLE_ENABLED_METHOD = "isNeutralButtonStyleEnabled";
    public static final String IS_SUW_DAY_NIGHT_ENABLED_METHOD = "isSuwDayNightEnabled";
    public static final String KEY_FALLBACK_CONFIG = "fallbackConfig";
    public static final String MATERIAL_YOU_RESOURCE_SUFFIX = "_material_you";
    public static final String SUW_GET_PARTNER_CONFIG_METHOD = "getOverlayConfig";
    public static final String SUW_PACKAGE_NAME = "com.google.android.setupwizard";
    public static Bundle applyDynamicColorBundle = null;
    public static Bundle applyEmbeddedActivityOnePaneBundle = null;
    public static Bundle applyExtendedPartnerConfigBundle = null;
    public static Bundle applyMaterialYouConfigBundle = null;
    public static Bundle applyNeutralButtonStyleBundle = null;
    static Bundle applyTransitionBundle = null;
    public static AnonymousClass1 contentObserver = null;
    public static PartnerConfigHelper instance = null;
    public static String mAuthority = null;
    public static boolean savedConfigEmbeddedActivityMode = false;
    public static int savedConfigUiMode = 0;
    public static int savedOrientation = 1;
    public static int savedScreenHeight;
    public static int savedScreenWidth;
    static Bundle suwDayNightEnabledBundle;
    public static Bundle suwDefaultThemeBundle;
    final EnumMap<PartnerConfig, Object> partnerResourceCache;
    Bundle resultBundle;

    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.setupcompat.partnerconfig.PartnerConfigHelper$1] */
    private PartnerConfigHelper(Context context) {
        Object obj;
        Handler handler = null;
        this.resultBundle = null;
        EnumMap<PartnerConfig, Object> enumMap = new EnumMap<>((Class<PartnerConfig>) PartnerConfig.class);
        this.partnerResourceCache = enumMap;
        Bundle bundle = this.resultBundle;
        if (bundle == null || bundle.isEmpty()) {
            try {
                this.resultBundle = context.getContentResolver().call(getContentUri(context), SUW_GET_PARTNER_CONFIG_METHOD, (String) null, (Bundle) null);
                enumMap.clear();
                StringBuilder sb = new StringBuilder("PartnerConfigsBundle=");
                Bundle bundle2 = this.resultBundle;
                if (bundle2 != null) {
                    obj = Integer.valueOf(bundle2.size());
                } else {
                    obj = "(null)";
                }
                sb.append(obj);
                Log.i("PartnerConfigHelper", sb.toString());
            } catch (IllegalArgumentException | SecurityException unused) {
                Log.w("PartnerConfigHelper", "Fail to get config from suw provider");
            }
        }
        if (isSetupWizardDayNightEnabled(context)) {
            Log.w("PartnerConfigHelper", "isSetupWizardDayNightEnabled() is true");
            if (contentObserver != null) {
                try {
                    context.getContentResolver().unregisterContentObserver(contentObserver);
                    contentObserver = null;
                } catch (IllegalArgumentException | NullPointerException | SecurityException e) {
                    Log.w("PartnerConfigHelper", "Failed to unregister content observer: " + e);
                }
            }
            Uri contentUri = getContentUri(context);
            try {
                contentObserver = new ContentObserver(handler) { // from class: com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.1
                    @Override // android.database.ContentObserver
                    public final void onChange(boolean z) {
                        super.onChange(z);
                        PartnerConfigHelper.resetInstance();
                    }
                };
                context.getContentResolver().registerContentObserver(contentUri, true, contentObserver);
            } catch (IllegalArgumentException | NullPointerException | SecurityException e2) {
                Log.w("PartnerConfigHelper", "Failed to register content observer for " + contentUri + ": " + e2);
            }
        }
    }

    public static synchronized PartnerConfigHelper get(Context context) {
        PartnerConfigHelper partnerConfigHelper;
        synchronized (PartnerConfigHelper.class) {
            if (!isValidInstance(context)) {
                instance = new PartnerConfigHelper(context);
            }
            partnerConfigHelper = instance;
        }
        return partnerConfigHelper;
    }

    public static Uri getContentUri(Context context) {
        boolean z;
        String str;
        if (mAuthority == null) {
            try {
                context.getPackageManager().getApplicationInfo(SUW_PACKAGE_NAME, 128);
                z = true;
            } catch (PackageManager.NameNotFoundException unused) {
                z = false;
            }
            if (z) {
                str = "com.google.android.setupwizard.partner";
            } else {
                str = "com.sec.android.app.SecSetupWizard.partner";
            }
            mAuthority = str;
            Log.w("PartnerConfigHelper", "getContentUri() mAuthority=" + mAuthority);
        }
        return new Uri.Builder().scheme("content").authority(mAuthority).build();
    }

    public static TypedValue getTypedValueFromResource(Resources resources, int i) {
        TypedValue typedValue = new TypedValue();
        resources.getValue(i, typedValue, true);
        if (typedValue.type == 5) {
            return typedValue;
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
    }

    public static boolean isEmbeddedActivityOnePaneEnabled(Context context) {
        if (applyEmbeddedActivityOnePaneBundle == null) {
            try {
                applyEmbeddedActivityOnePaneBundle = context.getContentResolver().call(getContentUri(context), IS_EMBEDDED_ACTIVITY_ONE_PANE_ENABLED_METHOD, (String) null, (Bundle) null);
            } catch (IllegalArgumentException | SecurityException unused) {
                Log.w("PartnerConfigHelper", "SetupWizard one-pane support in embedded activity status unknown; return as false.");
                applyEmbeddedActivityOnePaneBundle = null;
                return false;
            }
        }
        Bundle bundle = applyEmbeddedActivityOnePaneBundle;
        if (bundle == null || !bundle.getBoolean(IS_EMBEDDED_ACTIVITY_ONE_PANE_ENABLED_METHOD, false)) {
            return false;
        }
        return true;
    }

    public static boolean isSetupWizardDayNightEnabled(Context context) {
        if (suwDayNightEnabledBundle == null) {
            try {
                suwDayNightEnabledBundle = context.getContentResolver().call(getContentUri(context), IS_SUW_DAY_NIGHT_ENABLED_METHOD, (String) null, (Bundle) null);
            } catch (IllegalArgumentException | SecurityException unused) {
                Log.w("PartnerConfigHelper", "SetupWizard DayNight supporting status unknown; return as false.");
                suwDayNightEnabledBundle = null;
                return false;
            }
        }
        if ("com.sec.android.app.SecSetupWizard.partner".equalsIgnoreCase(mAuthority)) {
            Bundle bundle = suwDayNightEnabledBundle;
            if (bundle == null || !bundle.containsKey(IS_SUW_DAY_NIGHT_ENABLED_METHOD)) {
                return false;
            }
            return true;
        }
        Bundle bundle2 = suwDayNightEnabledBundle;
        if (bundle2 == null || !bundle2.getBoolean(IS_SUW_DAY_NIGHT_ENABLED_METHOD, false)) {
            return false;
        }
        return true;
    }

    public static boolean isValidInstance(Context context) {
        boolean z;
        boolean z2;
        Configuration configuration = context.getResources().getConfiguration();
        boolean z3 = true;
        if (instance == null) {
            if (!isEmbeddedActivityOnePaneEnabled(context) || !BuildCompatUtils.isAtLeastU()) {
                z3 = false;
            }
            savedConfigEmbeddedActivityMode = z3;
            savedConfigUiMode = configuration.uiMode & 48;
            savedOrientation = configuration.orientation;
            savedScreenWidth = configuration.screenWidthDp;
            savedScreenHeight = configuration.screenHeightDp;
            return false;
        }
        if (isSetupWizardDayNightEnabled(context) && (configuration.uiMode & 48) != savedConfigUiMode) {
            z = true;
        } else {
            z = false;
        }
        if (isEmbeddedActivityOnePaneEnabled(context) && BuildCompatUtils.isAtLeastU()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z && z2 == savedConfigEmbeddedActivityMode && configuration.orientation == savedOrientation && configuration.screenWidthDp == savedScreenWidth && configuration.screenHeightDp == savedScreenHeight) {
            return true;
        }
        savedConfigUiMode = configuration.uiMode & 48;
        savedOrientation = configuration.orientation;
        savedScreenHeight = configuration.screenHeightDp;
        savedScreenWidth = configuration.screenWidthDp;
        resetInstance();
        return false;
    }

    public static synchronized void resetInstance() {
        synchronized (PartnerConfigHelper.class) {
            instance = null;
            suwDayNightEnabledBundle = null;
            applyExtendedPartnerConfigBundle = null;
            applyMaterialYouConfigBundle = null;
            applyDynamicColorBundle = null;
            applyNeutralButtonStyleBundle = null;
            applyEmbeddedActivityOnePaneBundle = null;
            suwDefaultThemeBundle = null;
            applyTransitionBundle = null;
        }
    }

    public static boolean shouldApplyExtendedPartnerConfig(Context context) {
        if (applyExtendedPartnerConfigBundle == null) {
            try {
                applyExtendedPartnerConfigBundle = context.getContentResolver().call(getContentUri(context), IS_EXTENDED_PARTNER_CONFIG_ENABLED_METHOD, (String) null, (Bundle) null);
            } catch (IllegalArgumentException | SecurityException unused) {
                Log.w("PartnerConfigHelper", "SetupWizard extended partner configs supporting status unknown; return as false.");
                applyExtendedPartnerConfigBundle = null;
                return false;
            }
        }
        Bundle bundle = applyExtendedPartnerConfigBundle;
        if (bundle == null || !bundle.getBoolean(IS_EXTENDED_PARTNER_CONFIG_ENABLED_METHOD, false)) {
            return false;
        }
        return true;
    }

    public final boolean getBoolean(Context context, PartnerConfig partnerConfig, boolean z) {
        if (partnerConfig.getResourceType() == PartnerConfig.ResourceType.BOOL) {
            if (this.partnerResourceCache.containsKey(partnerConfig)) {
                return ((Boolean) this.partnerResourceCache.get(partnerConfig)).booleanValue();
            }
            try {
                ResourceEntry resourceEntryFromKey = getResourceEntryFromKey(context, partnerConfig.getResourceName());
                z = resourceEntryFromKey.resources.getBoolean(resourceEntryFromKey.resourceId);
                this.partnerResourceCache.put((EnumMap<PartnerConfig, Object>) partnerConfig, (PartnerConfig) Boolean.valueOf(z));
                return z;
            } catch (Resources.NotFoundException | NullPointerException unused) {
                return z;
            }
        }
        throw new IllegalArgumentException("Not a bool resource");
    }

    public final int getColor(Context context, PartnerConfig partnerConfig) {
        if (partnerConfig.getResourceType() == PartnerConfig.ResourceType.COLOR) {
            if (this.partnerResourceCache.containsKey(partnerConfig)) {
                return ((Integer) this.partnerResourceCache.get(partnerConfig)).intValue();
            }
            int i = 0;
            try {
                ResourceEntry resourceEntryFromKey = getResourceEntryFromKey(context, partnerConfig.getResourceName());
                Resources resources = resourceEntryFromKey.resources;
                int i2 = resourceEntryFromKey.resourceId;
                TypedValue typedValue = new TypedValue();
                resources.getValue(i2, typedValue, true);
                if (typedValue.type == 1 && typedValue.data == 0) {
                    return 0;
                }
                i = resources.getColor(i2, null);
                this.partnerResourceCache.put((EnumMap<PartnerConfig, Object>) partnerConfig, (PartnerConfig) Integer.valueOf(i));
                return i;
            } catch (NullPointerException unused) {
                return i;
            }
        }
        throw new IllegalArgumentException("Not a color resource");
    }

    public final float getDimension(Context context, PartnerConfig partnerConfig, float f) {
        if (partnerConfig.getResourceType() == PartnerConfig.ResourceType.DIMENSION) {
            if (this.partnerResourceCache.containsKey(partnerConfig)) {
                return ((TypedValue) this.partnerResourceCache.get(partnerConfig)).getDimension(context.getResources().getDisplayMetrics());
            }
            try {
                ResourceEntry resourceEntryFromKey = getResourceEntryFromKey(context, partnerConfig.getResourceName());
                Resources resources = resourceEntryFromKey.resources;
                int i = resourceEntryFromKey.resourceId;
                f = resources.getDimension(i);
                this.partnerResourceCache.put((EnumMap<PartnerConfig, Object>) partnerConfig, (PartnerConfig) getTypedValueFromResource(resources, i));
                return ((TypedValue) this.partnerResourceCache.get(partnerConfig)).getDimension(context.getResources().getDisplayMetrics());
            } catch (Resources.NotFoundException | NullPointerException unused) {
                return f;
            }
        }
        throw new IllegalArgumentException("Not a dimension resource");
    }

    public final Drawable getDrawable(Context context, PartnerConfig partnerConfig) {
        if (partnerConfig.getResourceType() == PartnerConfig.ResourceType.DRAWABLE) {
            if (this.partnerResourceCache.containsKey(partnerConfig)) {
                return (Drawable) this.partnerResourceCache.get(partnerConfig);
            }
            Drawable drawable = null;
            try {
                ResourceEntry resourceEntryFromKey = getResourceEntryFromKey(context, partnerConfig.getResourceName());
                Resources resources = resourceEntryFromKey.resources;
                int i = resourceEntryFromKey.resourceId;
                TypedValue typedValue = new TypedValue();
                resources.getValue(i, typedValue, true);
                if (typedValue.type == 1 && typedValue.data == 0) {
                    return null;
                }
                drawable = resources.getDrawable(i, null);
                this.partnerResourceCache.put((EnumMap<PartnerConfig, Object>) partnerConfig, (PartnerConfig) drawable);
                return drawable;
            } catch (Resources.NotFoundException | NullPointerException unused) {
                return drawable;
            }
        }
        throw new IllegalArgumentException("Not a drawable resource");
    }

    public final float getFraction(Context context, PartnerConfig partnerConfig) {
        if (partnerConfig.getResourceType() == PartnerConfig.ResourceType.FRACTION) {
            if (this.partnerResourceCache.containsKey(partnerConfig)) {
                return ((Float) this.partnerResourceCache.get(partnerConfig)).floatValue();
            }
            try {
                ResourceEntry resourceEntryFromKey = getResourceEntryFromKey(context, partnerConfig.getResourceName());
                float fraction = resourceEntryFromKey.resources.getFraction(resourceEntryFromKey.resourceId, 1, 1);
                try {
                    this.partnerResourceCache.put((EnumMap<PartnerConfig, Object>) partnerConfig, (PartnerConfig) Float.valueOf(fraction));
                    return fraction;
                } catch (Resources.NotFoundException | NullPointerException unused) {
                    return fraction;
                }
            } catch (Resources.NotFoundException | NullPointerException unused2) {
                return 0.0f;
            }
        }
        throw new IllegalArgumentException("Not a fraction resource");
    }

    public final int getInteger(Context context, PartnerConfig partnerConfig) {
        if (partnerConfig.getResourceType() == PartnerConfig.ResourceType.INTEGER) {
            if (this.partnerResourceCache.containsKey(partnerConfig)) {
                return ((Integer) this.partnerResourceCache.get(partnerConfig)).intValue();
            }
            try {
                ResourceEntry resourceEntryFromKey = getResourceEntryFromKey(context, partnerConfig.getResourceName());
                int integer = resourceEntryFromKey.resources.getInteger(resourceEntryFromKey.resourceId);
                try {
                    this.partnerResourceCache.put((EnumMap<PartnerConfig, Object>) partnerConfig, (PartnerConfig) Integer.valueOf(integer));
                    return integer;
                } catch (Resources.NotFoundException | NullPointerException unused) {
                    return integer;
                }
            } catch (Resources.NotFoundException | NullPointerException unused2) {
                return 0;
            }
        }
        throw new IllegalArgumentException("Not a integer resource");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a6 A[Catch: NotFoundException -> 0x00cf, TryCatch #1 {NotFoundException -> 0x00cf, blocks: (B:21:0x009c, B:23:0x00a0, B:25:0x00a6, B:27:0x00ba), top: B:20:0x009c }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.setupcompat.partnerconfig.ResourceEntry getResourceEntryFromKey(android.content.Context r10, java.lang.String r11) {
        /*
            r9 = this;
            android.os.Bundle r0 = r9.resultBundle
            android.os.Bundle r0 = r0.getBundle(r11)
            android.os.Bundle r9 = r9.resultBundle
            java.lang.String r1 = "fallbackConfig"
            android.os.Bundle r9 = r9.getBundle(r1)
            if (r9 == 0) goto L17
            android.os.Bundle r9 = r9.getBundle(r11)
            r0.putBundle(r1, r9)
        L17:
            com.google.android.setupcompat.partnerconfig.ResourceEntry r9 = com.google.android.setupcompat.partnerconfig.ResourceEntry.fromBundle(r10, r0)
            java.lang.String r11 = "use material you resource:"
            android.os.Bundle r0 = com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.applyMaterialYouConfigBundle
            r1 = 1
            r2 = 0
            java.lang.String r3 = "PartnerConfigHelper"
            java.lang.String r4 = "IsMaterialYouStyleEnabled"
            if (r0 == 0) goto L2e
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L42
        L2e:
            r0 = 0
            android.content.ContentResolver r5 = r10.getContentResolver()     // Catch: java.lang.Throwable -> L4e
            android.net.Uri r6 = getContentUri(r10)     // Catch: java.lang.Throwable -> L4e
            android.os.Bundle r5 = r5.call(r6, r4, r0, r0)     // Catch: java.lang.Throwable -> L4e
            com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.applyMaterialYouConfigBundle = r5     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L42
            r5.isEmpty()     // Catch: java.lang.Throwable -> L4e
        L42:
            android.os.Bundle r0 = com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.applyMaterialYouConfigBundle
            if (r0 == 0) goto L55
            boolean r0 = r0.getBoolean(r4, r2)
            if (r0 == 0) goto L55
            r0 = r1
            goto L56
        L4e:
            java.lang.String r4 = "SetupWizard Material You configs supporting status unknown; return as false."
            android.util.Log.w(r3, r4)
            com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.applyMaterialYouConfigBundle = r0
        L55:
            r0 = r2
        L56:
            java.lang.String r4 = "com.google.android.setupwizard"
            if (r0 == 0) goto L8d
            java.lang.String r0 = r9.packageName     // Catch: android.content.res.Resources.NotFoundException -> L8d
            android.content.res.Resources r5 = r9.resources
            boolean r6 = r4.equals(r0)     // Catch: android.content.res.Resources.NotFoundException -> L8d
            if (r6 == 0) goto L8d
            int r6 = r9.resourceId     // Catch: android.content.res.Resources.NotFoundException -> L8d
            java.lang.String r6 = r5.getResourceTypeName(r6)     // Catch: android.content.res.Resources.NotFoundException -> L8d
            java.lang.String r7 = r9.resourceName     // Catch: android.content.res.Resources.NotFoundException -> L8d
            java.lang.String r8 = "_material_you"
            java.lang.String r7 = r7.concat(r8)     // Catch: android.content.res.Resources.NotFoundException -> L8d
            int r6 = r5.getIdentifier(r7, r6, r0)     // Catch: android.content.res.Resources.NotFoundException -> L8d
            if (r6 == 0) goto L8d
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: android.content.res.Resources.NotFoundException -> L8d
            r8.<init>(r11)     // Catch: android.content.res.Resources.NotFoundException -> L8d
            r8.append(r7)     // Catch: android.content.res.Resources.NotFoundException -> L8d
            java.lang.String r11 = r8.toString()     // Catch: android.content.res.Resources.NotFoundException -> L8d
            android.util.Log.i(r3, r11)     // Catch: android.content.res.Resources.NotFoundException -> L8d
            com.google.android.setupcompat.partnerconfig.ResourceEntry r11 = new com.google.android.setupcompat.partnerconfig.ResourceEntry     // Catch: android.content.res.Resources.NotFoundException -> L8d
            r11.<init>(r0, r7, r6, r5)     // Catch: android.content.res.Resources.NotFoundException -> L8d
            r9 = r11
        L8d:
            boolean r11 = com.google.android.setupcompat.util.BuildCompatUtils.isAtLeastU()
            if (r11 == 0) goto Lcf
            boolean r11 = isEmbeddedActivityOnePaneEnabled(r10)
            if (r11 == 0) goto Lcf
            java.lang.String r11 = "use embedded activity resource:"
            java.lang.String r0 = r9.packageName     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            android.content.res.Resources r5 = r9.resources
            boolean r4 = r4.equals(r0)     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            if (r4 == 0) goto Lcf
            int r4 = r9.resourceId     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            java.lang.String r4 = r5.getResourceTypeName(r4)     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            java.lang.String r6 = r9.resourceName     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            java.lang.String r7 = "_embedded_activity"
            java.lang.String r6 = r6.concat(r7)     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            int r4 = r5.getIdentifier(r6, r4, r0)     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            if (r4 == 0) goto Lcf
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            r7.<init>(r11)     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            r7.append(r6)     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            java.lang.String r11 = r7.toString()     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            android.util.Log.i(r3, r11)     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            com.google.android.setupcompat.partnerconfig.ResourceEntry r11 = new com.google.android.setupcompat.partnerconfig.ResourceEntry     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            r11.<init>(r0, r6, r4, r5)     // Catch: android.content.res.Resources.NotFoundException -> Lcf
            r9 = r11
        Lcf:
            android.content.res.Resources r11 = r9.resources
            android.content.res.Configuration r0 = r11.getConfiguration()
            boolean r10 = isSetupWizardDayNightEnabled(r10)
            if (r10 != 0) goto Lf4
            int r10 = r0.uiMode
            r3 = r10 & 48
            r4 = 32
            if (r3 != r4) goto Le4
            goto Le5
        Le4:
            r1 = r2
        Le5:
            if (r1 == 0) goto Lf4
            r10 = r10 & (-49)
            r10 = r10 | 16
            r0.uiMode = r10
            android.util.DisplayMetrics r10 = r11.getDisplayMetrics()
            r11.updateConfiguration(r0, r10)
        Lf4:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.setupcompat.partnerconfig.PartnerConfigHelper.getResourceEntryFromKey(android.content.Context, java.lang.String):com.google.android.setupcompat.partnerconfig.ResourceEntry");
    }

    public final String getString(Context context, PartnerConfig partnerConfig) {
        if (partnerConfig.getResourceType() == PartnerConfig.ResourceType.STRING) {
            if (this.partnerResourceCache.containsKey(partnerConfig)) {
                return (String) this.partnerResourceCache.get(partnerConfig);
            }
            try {
                ResourceEntry resourceEntryFromKey = getResourceEntryFromKey(context, partnerConfig.getResourceName());
                String string = resourceEntryFromKey.resources.getString(resourceEntryFromKey.resourceId);
                try {
                    this.partnerResourceCache.put((EnumMap<PartnerConfig, Object>) partnerConfig, (PartnerConfig) string);
                    return string;
                } catch (NullPointerException unused) {
                    return string;
                }
            } catch (NullPointerException unused2) {
                return null;
            }
        }
        throw new IllegalArgumentException("Not a string resource");
    }

    public final boolean isAvailable() {
        Bundle bundle = this.resultBundle;
        if (bundle != null && !bundle.isEmpty()) {
            return true;
        }
        return false;
    }

    public final boolean isPartnerConfigAvailable(PartnerConfig partnerConfig) {
        if (isAvailable() && this.resultBundle.containsKey(partnerConfig.getResourceName())) {
            return true;
        }
        return false;
    }
}
