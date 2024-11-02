package com.android.systemui.theme;

import android.app.UiModeManager;
import android.app.WallpaperColors;
import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.om.FabricatedOverlay;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Color;
import android.os.Handler;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.fragment.app.FragmentTransaction$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.internal.graphics.ColorUtils;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.systemui.CoreStartable;
import com.android.systemui.Dumpable;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener$$ExternalSyntheticOutline0;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.monet.ColorScheme;
import com.android.systemui.monet.Style;
import com.android.systemui.monet.TonalPalette;
import com.android.systemui.monet.dynamiccolor.DynamicColor;
import com.android.systemui.monet.hct.Hct;
import com.android.systemui.monet.scheme.DynamicScheme;
import com.android.systemui.monet.scheme.SchemeExpressive;
import com.android.systemui.monet.scheme.SchemeFruitSalad;
import com.android.systemui.monet.scheme.SchemeMonochrome;
import com.android.systemui.monet.scheme.SchemeNeutral;
import com.android.systemui.monet.scheme.SchemeRainbow;
import com.android.systemui.monet.scheme.SchemeTonalSpot;
import com.android.systemui.monet.scheme.SchemeVibrant;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.android.systemui.util.settings.SecureSettings;
import com.android.systemui.util.settings.SecureSettingsImpl;
import com.sec.ims.configuration.DATA;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ThemeOverlayController implements CoreStartable, Dumpable {
    public final Executor mBgExecutor;
    public final Handler mBgHandler;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final AnonymousClass4 mBroadcastReceiver;
    protected ColorScheme mColorScheme;
    public final Context mContext;
    public boolean mDeferredThemeEvaluation;
    public final DeviceProvisionedController mDeviceProvisionedController;
    public FabricatedOverlay mDynamicOverlay;
    public DynamicScheme mDynamicSchemeDark;
    public DynamicScheme mDynamicSchemeLight;
    public final boolean mIsMonetEnabled;
    public final Executor mMainExecutor;
    public boolean mNeedsOverlayCreation;
    public FabricatedOverlay mNeutralOverlay;
    public final AnonymousClass2 mOnColorsChangedListener;
    public final Resources mResources;
    public FabricatedOverlay mSecondaryOverlay;
    public final SecureSettings mSecureSettings;
    public boolean mSkipSettingChange;
    public final ThemeOverlayApplier mThemeManager;
    public final UiModeManager mUiModeManager;
    public final UserManager mUserManager;
    public final UserTracker mUserTracker;
    public final UserTracker.Callback mUserTrackerCallback;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public final WallpaperManager mWallpaperManager;
    public final SparseArray mCurrentColors = new SparseArray();
    public int mMainWallpaperColor = 0;
    public float mContrast = -1.0f;
    protected Style mThemeStyle = Style.TONAL_SPOT;
    public boolean mAcceptColorEvents = true;
    public final SparseArray mDeferredWallpaperColors = new SparseArray();
    public final SparseIntArray mDeferredWallpaperColorsFlags = new SparseIntArray();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.theme.ThemeOverlayController$7, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass7 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$monet$Style;

        static {
            int[] iArr = new int[Style.values().length];
            $SwitchMap$com$android$systemui$monet$Style = iArr;
            try {
                iArr[Style.EXPRESSIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$monet$Style[Style.SPRITZ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$monet$Style[Style.TONAL_SPOT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$monet$Style[Style.FRUIT_SALAD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$systemui$monet$Style[Style.RAINBOW.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$systemui$monet$Style[Style.VIBRANT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$systemui$monet$Style[Style.MONOCHROMATIC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [com.android.systemui.theme.ThemeOverlayController$4] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.android.systemui.theme.ThemeOverlayController$2] */
    public ThemeOverlayController(Context context, BroadcastDispatcher broadcastDispatcher, Handler handler, Executor executor, Executor executor2, ThemeOverlayApplier themeOverlayApplier, SecureSettings secureSettings, WallpaperManager wallpaperManager, UserManager userManager, DeviceProvisionedController deviceProvisionedController, UserTracker userTracker, DumpManager dumpManager, FeatureFlags featureFlags, Resources resources, WakefulnessLifecycle wakefulnessLifecycle, UiModeManager uiModeManager) {
        new DeviceProvisionedController.DeviceProvisionedListener() { // from class: com.android.systemui.theme.ThemeOverlayController.1
            @Override // com.android.systemui.statusbar.policy.DeviceProvisionedController.DeviceProvisionedListener
            public final void onUserSetupChanged() {
                ThemeOverlayController themeOverlayController = ThemeOverlayController.this;
                if (!((DeviceProvisionedControllerImpl) themeOverlayController.mDeviceProvisionedController).isCurrentUserSetup() || !themeOverlayController.mDeferredThemeEvaluation) {
                    return;
                }
                Log.i("ThemeOverlayController", "Applying deferred theme");
                themeOverlayController.mDeferredThemeEvaluation = false;
                themeOverlayController.reevaluateSystemTheme(true);
            }
        };
        this.mOnColorsChangedListener = new WallpaperManager.OnColorsChangedListener() { // from class: com.android.systemui.theme.ThemeOverlayController.2
            @Override // android.app.WallpaperManager.OnColorsChangedListener
            public final void onColorsChanged(WallpaperColors wallpaperColors, int i) {
                throw new IllegalStateException("This should never be invoked, all messages should arrive on the overload that has a user id");
            }

            public final void onColorsChanged(WallpaperColors wallpaperColors, int i, int i2) {
                JSONObject jSONObject;
                ThemeOverlayController themeOverlayController = ThemeOverlayController.this;
                if (themeOverlayController.mContrast == -1.0f || themeOverlayController.isColorThemeEnabled$1()) {
                    return;
                }
                WallpaperColors wallpaperColors2 = (WallpaperColors) ThemeOverlayController.this.mCurrentColors.get(i2);
                if (wallpaperColors == null || !wallpaperColors.equals(wallpaperColors2)) {
                    boolean z = i2 == ((UserTrackerImpl) ThemeOverlayController.this.mUserTracker).getUserId();
                    if (z) {
                        ThemeOverlayController themeOverlayController2 = ThemeOverlayController.this;
                        if (!themeOverlayController2.mAcceptColorEvents && themeOverlayController2.mWakefulnessLifecycle.mWakefulness != 0) {
                            themeOverlayController2.mDeferredWallpaperColors.put(i2, wallpaperColors);
                            ThemeOverlayController.this.mDeferredWallpaperColorsFlags.put(i2, i);
                            Log.i("ThemeOverlayController", "colors received; processing deferred until screen off: " + wallpaperColors + " user: " + i2);
                            return;
                        }
                    }
                    if (z && wallpaperColors != null) {
                        ThemeOverlayController themeOverlayController3 = ThemeOverlayController.this;
                        themeOverlayController3.mAcceptColorEvents = false;
                        themeOverlayController3.mDeferredWallpaperColors.put(i2, null);
                        ThemeOverlayController.this.mDeferredWallpaperColorsFlags.put(i2, 0);
                    }
                    ThemeOverlayController themeOverlayController4 = ThemeOverlayController.this;
                    String str = "lock_wallpaper";
                    int userId = ((UserTrackerImpl) themeOverlayController4.mUserTracker).getUserId();
                    SparseArray sparseArray = themeOverlayController4.mCurrentColors;
                    boolean z2 = sparseArray.get(i2) != null;
                    WallpaperManager wallpaperManager2 = themeOverlayController4.mWallpaperManager;
                    boolean z3 = ((wallpaperManager2.getWallpaperIdForUser(2, i2) <= wallpaperManager2.getWallpaperIdForUser(1, i2) ? 1 : 2) & i) != 0;
                    if (z3) {
                        sparseArray.put(i2, wallpaperColors);
                        Log.d("ThemeOverlayController", "got new colors: " + wallpaperColors + " where: " + i);
                    }
                    if (i2 != userId) {
                        StringBuilder sb = new StringBuilder("Colors ");
                        sb.append(wallpaperColors);
                        sb.append(" for user ");
                        sb.append(i2);
                        sb.append(". Not for current user: ");
                        RecyclerView$$ExternalSyntheticOutline0.m(sb, userId, "ThemeOverlayController");
                        return;
                    }
                    DeviceProvisionedController deviceProvisionedController2 = themeOverlayController4.mDeviceProvisionedController;
                    if (deviceProvisionedController2 != null && !((DeviceProvisionedControllerImpl) deviceProvisionedController2).isCurrentUserSetup()) {
                        if (z2) {
                            Log.i("ThemeOverlayController", "Wallpaper color event deferred until setup is finished: " + wallpaperColors);
                            themeOverlayController4.mDeferredThemeEvaluation = true;
                            return;
                        }
                        if (themeOverlayController4.mDeferredThemeEvaluation) {
                            Log.i("ThemeOverlayController", "Wallpaper color event received, but we already were deferring eval: " + wallpaperColors);
                            return;
                        }
                        NotificationListener$$ExternalSyntheticOutline0.m(RowView$$ExternalSyntheticOutline0.m("During user setup, but allowing first color event: had? ", z2, " has? "), sparseArray.get(i2) != null, "ThemeOverlayController");
                    }
                    SecureSettings secureSettings2 = themeOverlayController4.mSecureSettings;
                    String stringForUser = ((SecureSettingsImpl) secureSettings2).getStringForUser(userId, "theme_customization_overlay_packages");
                    boolean z4 = i == 3;
                    boolean z5 = i == 1;
                    try {
                        if (stringForUser == null) {
                            jSONObject = new JSONObject();
                        } else {
                            jSONObject = new JSONObject(stringForUser);
                        }
                        String optString = jSONObject.optString("android.theme.customization.color_source");
                        boolean equals = "preset".equals(optString);
                        boolean z6 = z5 && "lock_wallpaper".equals(optString);
                        if (!equals && !z6 && z3 && !ThemeOverlayController.isSeedColorSet(jSONObject, wallpaperColors)) {
                            themeOverlayController4.mSkipSettingChange = true;
                            if (jSONObject.has("android.theme.customization.accent_color") || jSONObject.has("android.theme.customization.system_palette")) {
                                jSONObject.remove("android.theme.customization.dynamic_color");
                                jSONObject.remove("android.theme.customization.accent_color");
                                jSONObject.remove("android.theme.customization.system_palette");
                                jSONObject.remove("android.theme.customization.color_index");
                            }
                            jSONObject.put("android.theme.customization.color_both", z4 ? "1" : DATA.DM_FIELD_INDEX.PCSCF_DOMAIN);
                            if (i != 2) {
                                str = "home_wallpaper";
                            }
                            jSONObject.put("android.theme.customization.color_source", str);
                            jSONObject.put("_applied_timestamp", System.currentTimeMillis());
                            Log.d("ThemeOverlayController", "Updating theme setting from " + stringForUser + " to " + jSONObject.toString());
                            ((SecureSettingsImpl) secureSettings2).putStringForUser(-2, "theme_customization_overlay_packages", jSONObject.toString());
                        }
                    } catch (JSONException e) {
                        Log.i("ThemeOverlayController", "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES.", e);
                    }
                    themeOverlayController4.reevaluateSystemTheme(false);
                }
            }
        };
        this.mUserTrackerCallback = new UserTracker.Callback() { // from class: com.android.systemui.theme.ThemeOverlayController.3
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i, Context context2) {
                ThemeOverlayController themeOverlayController = ThemeOverlayController.this;
                boolean isManagedProfile = themeOverlayController.mUserManager.isManagedProfile(i);
                if (!((DeviceProvisionedControllerImpl) themeOverlayController.mDeviceProvisionedController).isCurrentUserSetup() && isManagedProfile) {
                    ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("User setup not finished when new user event was received. Deferring... Managed profile? ", isManagedProfile, "ThemeOverlayController");
                } else {
                    Log.d("ThemeOverlayController", "Updating overlays for user switch / profile added.");
                    themeOverlayController.reevaluateSystemTheme(true);
                }
            }
        };
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.theme.ThemeOverlayController.4
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                ThemeOverlayController themeOverlayController = ThemeOverlayController.this;
                if (themeOverlayController.mContrast != -1.0f && !themeOverlayController.isColorThemeEnabled$1()) {
                    boolean equals = "android.intent.action.MANAGED_PROFILE_ADDED".equals(intent.getAction());
                    boolean isManagedProfile = ThemeOverlayController.this.mUserManager.isManagedProfile(intent.getIntExtra("android.intent.extra.user_handle", 0));
                    if (equals) {
                        if (!((DeviceProvisionedControllerImpl) ThemeOverlayController.this.mDeviceProvisionedController).isCurrentUserSetup() && isManagedProfile) {
                            Log.i("ThemeOverlayController", "User setup not finished when " + intent.getAction() + " was received. Deferring... Managed profile? " + isManagedProfile);
                            return;
                        }
                        Log.d("ThemeOverlayController", "Updating overlays for user switch / profile added.");
                        ThemeOverlayController.this.reevaluateSystemTheme(true);
                        return;
                    }
                    if ("android.intent.action.WALLPAPER_CHANGED".equals(intent.getAction())) {
                        if (intent.getBooleanExtra("android.service.wallpaper.extra.FROM_FOREGROUND_APP", false)) {
                            ThemeOverlayController.this.mAcceptColorEvents = true;
                            Log.i("ThemeOverlayController", "Wallpaper changed, allowing color events again");
                        } else {
                            NotificationListener$$ExternalSyntheticOutline0.m(new StringBuilder("Wallpaper changed from background app, keep deferring color events. Accepting: "), ThemeOverlayController.this.mAcceptColorEvents, "ThemeOverlayController");
                        }
                    }
                }
            }
        };
        this.mContext = context;
        FeatureFlagsRelease featureFlagsRelease = (FeatureFlagsRelease) featureFlags;
        featureFlagsRelease.isEnabled(Flags.MONOCHROMATIC_THEME);
        this.mIsMonetEnabled = featureFlagsRelease.isEnabled(Flags.MONET);
        this.mDeviceProvisionedController = deviceProvisionedController;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mUserManager = userManager;
        this.mBgExecutor = executor2;
        this.mMainExecutor = executor;
        this.mBgHandler = handler;
        this.mThemeManager = themeOverlayApplier;
        this.mSecureSettings = secureSettings;
        this.mWallpaperManager = wallpaperManager;
        this.mUserTracker = userTracker;
        this.mResources = resources;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mUiModeManager = uiModeManager;
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, "ThemeOverlayController", this);
    }

    public static void assignTonalPaletteToOverlay(String str, final FabricatedOverlay fabricatedOverlay, TonalPalette tonalPalette) {
        final String concat = "android:color/system_".concat(str);
        tonalPalette.allShadesMapped.forEach(new BiConsumer() { // from class: com.android.systemui.theme.ThemeOverlayController$$ExternalSyntheticLambda3
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                String str2 = concat;
                fabricatedOverlay.setResourceValue(str2 + "_" + ((Integer) obj), 28, ColorUtils.setAlphaComponent(((Integer) obj2).intValue(), 255), (String) null);
            }
        });
    }

    public static DynamicScheme dynamicSchemeFromStyle(Style style, int i, boolean z, double d) {
        Hct fromInt = Hct.fromInt(i);
        switch (AnonymousClass7.$SwitchMap$com$android$systemui$monet$Style[style.ordinal()]) {
            case 1:
                return new SchemeExpressive(fromInt, z, d);
            case 2:
                return new SchemeNeutral(fromInt, z, d);
            case 3:
                return new SchemeTonalSpot(fromInt, z, d);
            case 4:
                return new SchemeFruitSalad(fromInt, z, d);
            case 5:
                return new SchemeRainbow(fromInt, z, d);
            case 6:
                return new SchemeVibrant(fromInt, z, d);
            case 7:
                return new SchemeMonochrome(fromInt, z, d);
            default:
                return null;
        }
    }

    public static boolean isSeedColorSet(JSONObject jSONObject, WallpaperColors wallpaperColors) {
        String str;
        if (wallpaperColors == null || (str = (String) jSONObject.opt("android.theme.customization.system_palette")) == null) {
            return false;
        }
        if (!str.startsWith("#")) {
            str = "#".concat(str);
        }
        int parseColor = Color.parseColor(str);
        ColorScheme.Companion.getClass();
        Iterator it = ColorScheme.Companion.getSeedColors(wallpaperColors, true).iterator();
        while (it.hasNext()) {
            if (((Integer) it.next()).intValue() == parseColor) {
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Same as previous set system palette: ", str, "ThemeOverlayController");
                return true;
            }
        }
        return false;
    }

    public final void createOverlays(int i) {
        this.mColorScheme = new ColorScheme(i, isNightMode(), this.mThemeStyle);
        FabricatedOverlay newFabricatedOverlay = newFabricatedOverlay("neutral");
        assignTonalPaletteToOverlay("neutral1", newFabricatedOverlay, this.mColorScheme.neutral1);
        assignTonalPaletteToOverlay("neutral2", newFabricatedOverlay, this.mColorScheme.neutral2);
        this.mNeutralOverlay = newFabricatedOverlay;
        FabricatedOverlay newFabricatedOverlay2 = newFabricatedOverlay("accent");
        assignTonalPaletteToOverlay("accent1", newFabricatedOverlay2, this.mColorScheme.accent1);
        assignTonalPaletteToOverlay("accent2", newFabricatedOverlay2, this.mColorScheme.accent2);
        assignTonalPaletteToOverlay("accent3", newFabricatedOverlay2, this.mColorScheme.accent3);
        this.mSecondaryOverlay = newFabricatedOverlay2;
        Style style = this.mThemeStyle;
        float f = this.mContrast;
        float f2 = 0.0f;
        if (f == -1.0f) {
            f = 0.0f;
        }
        this.mDynamicSchemeDark = dynamicSchemeFromStyle(style, i, true, f);
        Style style2 = this.mThemeStyle;
        float f3 = this.mContrast;
        if (f3 != -1.0f) {
            f2 = f3;
        }
        this.mDynamicSchemeLight = dynamicSchemeFromStyle(style2, i, false, f2);
        final FabricatedOverlay newFabricatedOverlay3 = newFabricatedOverlay("dynamic");
        final DynamicScheme dynamicScheme = this.mDynamicSchemeDark;
        List list = DynamicColors.ALL_DYNAMIC_COLORS_MAPPED;
        final String str = "dark";
        list.forEach(new Consumer() { // from class: com.android.systemui.theme.ThemeOverlayController$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Pair pair = (Pair) obj;
                newFabricatedOverlay3.setResourceValue(FragmentTransaction$$ExternalSyntheticOutline0.m(new StringBuilder("android:color/system_"), (String) pair.first, "_", str), 28, ((DynamicColor) pair.second).getArgb(dynamicScheme), (String) null);
            }
        });
        final DynamicScheme dynamicScheme2 = this.mDynamicSchemeLight;
        final String str2 = "light";
        list.forEach(new Consumer() { // from class: com.android.systemui.theme.ThemeOverlayController$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Pair pair = (Pair) obj;
                newFabricatedOverlay3.setResourceValue(FragmentTransaction$$ExternalSyntheticOutline0.m(new StringBuilder("android:color/system_"), (String) pair.first, "_", str2), 28, ((DynamicColor) pair.second).getArgb(dynamicScheme2), (String) null);
            }
        });
        DynamicColors.FIXED_COLORS_MAPPED.forEach(new Consumer() { // from class: com.android.systemui.theme.ThemeOverlayController$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ThemeOverlayController themeOverlayController = ThemeOverlayController.this;
                FabricatedOverlay fabricatedOverlay = newFabricatedOverlay3;
                Pair pair = (Pair) obj;
                themeOverlayController.getClass();
                fabricatedOverlay.setResourceValue("android:color/system_" + ((String) pair.first), 28, ((DynamicColor) pair.second).getArgb(themeOverlayController.mDynamicSchemeLight), (String) null);
            }
        });
        this.mDynamicOverlay = newFabricatedOverlay3;
    }

    @Override // com.android.systemui.CoreStartable, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("mSystemColors=" + this.mCurrentColors);
        printWriter.println("mMainWallpaperColor=" + Integer.toHexString(this.mMainWallpaperColor));
        printWriter.println("mSecondaryOverlay=" + this.mSecondaryOverlay);
        printWriter.println("mNeutralOverlay=" + this.mNeutralOverlay);
        printWriter.println("mDynamicOverlay=" + this.mDynamicOverlay);
        StringBuilder m = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("mIsMonetEnabled="), this.mIsMonetEnabled, printWriter, "mColorScheme=");
        m.append(this.mColorScheme);
        printWriter.println(m.toString());
        StringBuilder m2 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("mNeedsOverlayCreation="), this.mNeedsOverlayCreation, printWriter, "mAcceptColorEvents="), this.mAcceptColorEvents, printWriter, "mDeferredThemeEvaluation="), this.mDeferredThemeEvaluation, printWriter, "mThemeStyle=");
        m2.append(this.mThemeStyle);
        printWriter.println(m2.toString());
    }

    public final boolean isColorThemeEnabled$1() {
        if (Settings.System.getInt(this.mContext.getContentResolver(), "wallpapertheme_state", -1) == 1) {
            return true;
        }
        return false;
    }

    public boolean isNightMode() {
        if ((this.mResources.getConfiguration().uiMode & 48) == 32) {
            return true;
        }
        return false;
    }

    public FabricatedOverlay newFabricatedOverlay(String str) {
        return new FabricatedOverlay.Builder("com.android.systemui", str, "android").build();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0082, code lost:
    
        if (r0.contains(r10) == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void reevaluateSystemTheme(boolean r19) {
        /*
            Method dump skipped, instructions count: 834
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.theme.ThemeOverlayController.reevaluateSystemTheme(boolean):void");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.theme.ThemeOverlayController$$ExternalSyntheticLambda4, java.lang.Runnable] */
    @Override // com.android.systemui.CoreStartable
    public final void start() {
        Log.d("ThemeOverlayController", "Start");
        final ?? r0 = new Runnable() { // from class: com.android.systemui.theme.ThemeOverlayController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                final ThemeOverlayController themeOverlayController = ThemeOverlayController.this;
                int userId = ((UserTrackerImpl) themeOverlayController.mUserTracker).getUserId();
                WallpaperManager wallpaperManager = themeOverlayController.mWallpaperManager;
                int i = 2;
                if (wallpaperManager.getWallpaperIdForUser(2, userId) <= wallpaperManager.getWallpaperIdForUser(1, userId)) {
                    i = 1;
                }
                final WallpaperColors wallpaperColors = wallpaperManager.getWallpaperColors(i);
                themeOverlayController.mMainExecutor.execute(new Runnable() { // from class: com.android.systemui.theme.ThemeOverlayController$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThemeOverlayController themeOverlayController2 = ThemeOverlayController.this;
                        themeOverlayController2.mCurrentColors.put(((UserTrackerImpl) themeOverlayController2.mUserTracker).getUserId(), wallpaperColors);
                        themeOverlayController2.reevaluateSystemTheme(true);
                    }
                });
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MANAGED_PROFILE_ADDED");
        intentFilter.addAction("android.intent.action.WALLPAPER_CHANGED");
        UserHandle userHandle = UserHandle.ALL;
        BroadcastDispatcher broadcastDispatcher = this.mBroadcastDispatcher;
        AnonymousClass4 anonymousClass4 = this.mBroadcastReceiver;
        Executor executor = this.mMainExecutor;
        broadcastDispatcher.registerReceiver(anonymousClass4, intentFilter, executor, userHandle);
        this.mSecureSettings.registerContentObserverForUser("theme_customization_overlay_packages", false, new ContentObserver(this.mBgHandler) { // from class: com.android.systemui.theme.ThemeOverlayController.5
            public final void onChange(boolean z, Collection collection, int i, int i2) {
                if (TextUtils.isEmpty(((SecureSettingsImpl) ThemeOverlayController.this.mSecureSettings).getStringForUser(i2, "theme_customization_overlay_packages"))) {
                    return;
                }
                ListPopupWindow$$ExternalSyntheticOutline0.m("Overlay changed for user: ", i2, "ThemeOverlayController");
                if (((UserTrackerImpl) ThemeOverlayController.this.mUserTracker).getUserId() != i2) {
                    return;
                }
                if (!((DeviceProvisionedControllerImpl) ThemeOverlayController.this.mDeviceProvisionedController).isUserSetup(i2)) {
                    Log.i("ThemeOverlayController", "Theme application deferred when setting changed.");
                    ThemeOverlayController.this.mDeferredThemeEvaluation = true;
                    return;
                }
                ThemeOverlayController themeOverlayController = ThemeOverlayController.this;
                if (themeOverlayController.mSkipSettingChange) {
                    Log.d("ThemeOverlayController", "Skipping setting change");
                    ThemeOverlayController.this.mSkipSettingChange = false;
                } else {
                    themeOverlayController.mBgExecutor.execute(r0);
                }
            }
        }, -1);
        float floatForUser = Settings.Secure.getFloatForUser(this.mContext.getContentResolver(), "contrast_level", -1.0f, -2);
        UiModeManager uiModeManager = this.mUiModeManager;
        if (floatForUser != -1.0f) {
            this.mContrast = uiModeManager.getContrast();
        }
        uiModeManager.addContrastChangeListener(executor, new UiModeManager.ContrastChangeListener() { // from class: com.android.systemui.theme.ThemeOverlayController$$ExternalSyntheticLambda5
            @Override // android.app.UiModeManager.ContrastChangeListener
            public final void onContrastChanged(float f) {
                ThemeOverlayController themeOverlayController = ThemeOverlayController.this;
                Runnable runnable = r0;
                themeOverlayController.mContrast = f;
                if (f != -1.0f) {
                    themeOverlayController.mBgExecutor.execute(runnable);
                }
            }
        });
        this.mWallpaperManager.addOnColorsChangedListener(this.mOnColorsChangedListener, null, -1);
        ((UserTrackerImpl) this.mUserTracker).addCallback(this.mUserTrackerCallback, executor);
    }
}
