package android.os;

import android.app.GameManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public class GraphicsEnvironment {
    private static final String ACTION_ANGLE_FOR_ANDROID = "android.app.action.ANGLE_FOR_ANDROID";
    private static final String ACTION_ANGLE_FOR_ANDROID_TOAST_MESSAGE = "android.app.action.ANGLE_FOR_ANDROID_TOAST_MESSAGE";
    private static final String ANGLE_DRIVER_NAME = "angle";
    private static final long ANGLE_DRIVER_VERSION_CODE = 0;
    private static final String ANGLE_DRIVER_VERSION_NAME = "";
    private static final int ANGLE_GL_DRIVER_ALL_ANGLE_OFF = 0;
    private static final int ANGLE_GL_DRIVER_ALL_ANGLE_ON = 1;
    private static final String ANGLE_GL_DRIVER_CHOICE_ANGLE = "angle";
    private static final String ANGLE_GL_DRIVER_CHOICE_DEFAULT = "default";
    private static final String ANGLE_GL_DRIVER_CHOICE_NATIVE = "native";
    private static final boolean DEBUG = false;
    private static final String INTENT_KEY_A4A_TOAST_MESSAGE = "A4A Toast Message";
    private static final String METADATA_DEVELOPER_DRIVER_ENABLE = "com.android.graphics.developerdriver.enable";
    private static final String METADATA_DRIVER_BUILD_TIME = "com.android.graphics.driver.build_time";
    private static final String METADATA_INJECT_LAYERS_ENABLE = "com.android.graphics.injectLayers.enable";
    private static final String PROPERTY_GFX_DRIVER_BUILD_TIME = "ro.gfx.driver_build_time";
    private static final String PROPERTY_GFX_DRIVER_PRERELEASE = "ro.gfx.driver.1";
    private static final String PROPERTY_GFX_DRIVER_PRODUCTION = "ro.gfx.driver.0";
    private static final String SYSTEM_DRIVER_NAME = "system";
    private static final long SYSTEM_DRIVER_VERSION_CODE = 0;
    private static final String SYSTEM_DRIVER_VERSION_NAME = "";
    private static final String TAG = "GraphicsEnvironment";
    private static final String UPDATABLE_DRIVER_ALLOWLIST_ALL = "*";
    private static final int UPDATABLE_DRIVER_GLOBAL_OPT_IN_DEFAULT = 0;
    private static final int UPDATABLE_DRIVER_GLOBAL_OPT_IN_OFF = 3;
    private static final int UPDATABLE_DRIVER_GLOBAL_OPT_IN_PRERELEASE_DRIVER = 2;
    private static final int UPDATABLE_DRIVER_GLOBAL_OPT_IN_PRODUCTION_DRIVER = 1;
    private static final String UPDATABLE_DRIVER_SPHAL_LIBRARIES_FILENAME = "sphal_libraries.txt";
    private static final int VULKAN_1_0 = 4194304;
    private static final int VULKAN_1_1 = 4198400;
    private static final int VULKAN_1_2 = 4202496;
    private static final int VULKAN_1_3 = 4206592;
    private static final GraphicsEnvironment sInstance = new GraphicsEnvironment();
    private ClassLoader mClassLoader;
    private GameManager mGameManager;
    private String mLibraryPermittedPaths;
    private String mLibrarySearchPaths;
    private int mAngleOptInIndex = -1;
    private boolean mEnabledByGameMode = false;

    private static native boolean getShouldUseAngle(String str);

    public static native void hintActivityLaunch();

    private static native boolean isDebuggable();

    private static native void nativeToggleAngleAsSystemDriver(boolean z);

    private static native void setAngleInfo(String str, String str2, String str3, String[] strArr);

    private static native void setDebugLayers(String str);

    private static native void setDebugLayersGLES(String str);

    private static native void setDriverPathAndSphalLibraries(String str, String str2);

    private static native void setGpuStats(String str, String str2, long j, long j2, String str3, int i);

    private static native boolean setInjectLayersPrSetDumpable();

    private static native void setLayerPaths(ClassLoader classLoader, String str);

    public static GraphicsEnvironment getInstance() {
        return sInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setup(android.content.Context r23, android.os.Bundle r24) {
        /*
            r22 = this;
            r6 = r22
            r7 = r23
            r8 = r24
            android.content.pm.PackageManager r9 = r23.getPackageManager()
            java.lang.String r14 = r23.getPackageName()
            android.content.pm.ApplicationInfo r15 = getAppInfoWithMetadata(r7, r9, r14)
            java.lang.Class<android.app.GameManager> r0 = android.app.GameManager.class
            java.lang.Object r0 = r7.getSystemService(r0)
            android.app.GameManager r0 = (android.app.GameManager) r0
            r6.mGameManager = r0
            java.lang.String r0 = "setupGpuLayers"
            r12 = 2
            android.os.Trace.traceBegin(r12, r0)
            r0 = r22
            r1 = r23
            r2 = r24
            r3 = r9
            r4 = r14
            r5 = r15
            r0.setupGpuLayers(r1, r2, r3, r4, r5)
            android.os.Trace.traceEnd(r12)
            java.lang.String r0 = "setupAngle"
            android.os.Trace.traceBegin(r12, r0)
            r0 = 0
            boolean r1 = r6.setupAngle(r7, r8, r9, r14)
            if (r1 == 0) goto L69
            boolean r1 = r6.shouldUseAngle(r7, r8, r14)
            if (r1 == 0) goto L63
            r0 = 1
            java.lang.String r10 = "angle"
            java.lang.String r11 = ""
            r1 = 0
            r3 = 0
            int r17 = r6.getVulkanVersion(r9)
            r18 = r12
            r12 = r1
            r20 = r14
            r2 = r15
            r14 = r3
            r16 = r20
            setGpuStats(r10, r11, r12, r14, r16, r17)
            r21 = r0
            goto L70
        L63:
            r18 = r12
            r20 = r14
            r2 = r15
            goto L6e
        L69:
            r18 = r12
            r20 = r14
            r2 = r15
        L6e:
            r21 = r0
        L70:
            android.os.Trace.traceEnd(r18)
            java.lang.String r0 = "chooseDriver"
            r14 = r18
            android.os.Trace.traceBegin(r14, r0)
            r0 = r22
            r1 = r23
            r12 = r2
            r2 = r24
            r3 = r9
            r4 = r20
            r5 = r12
            boolean r0 = r0.chooseDriver(r1, r2, r3, r4, r5)
            if (r0 != 0) goto Lae
            if (r21 != 0) goto Lab
            java.lang.String r10 = "system"
            java.lang.String r11 = ""
            r0 = 0
            java.lang.String r2 = "ro.gfx.driver_build_time"
            r3 = 0
            long r2 = android.os.SystemProperties.getLong(r2, r3)
            int r17 = r6.getVulkanVersion(r9)
            r4 = r12
            r12 = r0
            r0 = r14
            r14 = r2
            r16 = r20
            setGpuStats(r10, r11, r12, r14, r16, r17)
            goto Lb0
        Lab:
            r4 = r12
            r0 = r14
            goto Lb0
        Lae:
            r4 = r12
            r0 = r14
        Lb0:
            android.os.Trace.traceEnd(r0)
            java.lang.String r2 = "notifyGraphicsEnvironmentSetup"
            android.os.Trace.traceBegin(r0, r2)
            android.app.GameManager r2 = r6.mGameManager
            if (r2 == 0) goto Lc6
            int r2 = r4.category
            if (r2 != 0) goto Lc6
            android.app.GameManager r2 = r6.mGameManager
            r2.notifyGraphicsEnvironmentSetup()
        Lc6:
            android.os.Trace.traceEnd(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.os.GraphicsEnvironment.setup(android.content.Context, android.os.Bundle):void");
    }

    public void toggleAngleAsSystemDriver(boolean enabled) {
        nativeToggleAngleAsSystemDriver(enabled);
    }

    private boolean isAngleEnabledByGameMode(Context context, String packageName) {
        try {
            GameManager gameManager = this.mGameManager;
            boolean gameModeEnabledAngle = gameManager != null && gameManager.isAngleEnabled(packageName);
            Log.v(TAG, "ANGLE GameManagerService for " + packageName + ": " + gameModeEnabledAngle);
            return gameModeEnabledAngle;
        } catch (SecurityException e) {
            Log.e(TAG, "Caught exception while querying GameManagerService if ANGLE is enabled for package: " + packageName);
            return false;
        }
    }

    private boolean shouldUseAngle(Context context, Bundle coreSettings, String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            Log.v(TAG, "No package name specified; use the system driver");
            return false;
        }
        return shouldUseAngleInternal(context, coreSettings, packageName);
    }

    private int getVulkanVersion(PackageManager pm) {
        if (pm.hasSystemFeature(PackageManager.FEATURE_VULKAN_HARDWARE_VERSION, VULKAN_1_3)) {
            return VULKAN_1_3;
        }
        if (!pm.hasSystemFeature(PackageManager.FEATURE_VULKAN_HARDWARE_VERSION, 4202496)) {
            if (!pm.hasSystemFeature(PackageManager.FEATURE_VULKAN_HARDWARE_VERSION, VULKAN_1_1)) {
                if (pm.hasSystemFeature(PackageManager.FEATURE_VULKAN_HARDWARE_VERSION, 4194304)) {
                    return 4194304;
                }
                return 0;
            }
            return VULKAN_1_1;
        }
        return 4202496;
    }

    private boolean canInjectLayers(ApplicationInfo ai) {
        return ai.metaData != null && ai.metaData.getBoolean(METADATA_INJECT_LAYERS_ENABLE) && setInjectLayersPrSetDumpable();
    }

    public void setLayerPaths(ClassLoader classLoader, String searchPaths, String permittedPaths) {
        this.mClassLoader = classLoader;
        this.mLibrarySearchPaths = searchPaths;
        this.mLibraryPermittedPaths = permittedPaths;
    }

    public String getDebugLayerPathsFromSettings(Bundle coreSettings, IPackageManager pm, String packageName, ApplicationInfo ai) {
        if (!debugLayerEnabled(coreSettings, packageName, ai)) {
            return null;
        }
        Log.i(TAG, "GPU debug layers enabled for " + packageName);
        String debugLayerPaths = "";
        String gpuDebugLayerApps = coreSettings.getString(Settings.Global.GPU_DEBUG_LAYER_APP, "");
        if (!gpuDebugLayerApps.isEmpty()) {
            Log.i(TAG, "GPU debug layer apps: " + gpuDebugLayerApps);
            String[] layerApps = gpuDebugLayerApps.split(":");
            for (String str : layerApps) {
                String paths = getDebugLayerAppPaths(pm, str);
                if (!paths.isEmpty()) {
                    debugLayerPaths = debugLayerPaths + paths + File.pathSeparator;
                }
            }
        }
        return debugLayerPaths;
    }

    private String getDebugLayerAppPaths(IPackageManager pm, String packageName) {
        try {
            ApplicationInfo appInfo = pm.getApplicationInfo(packageName, 131072L, UserHandle.myUserId());
            if (appInfo == null) {
                Log.w(TAG, "Debug layer app '" + packageName + "' not installed");
                return "";
            }
            String abi = chooseAbi(appInfo);
            StringBuilder sb = new StringBuilder();
            sb.append(appInfo.nativeLibraryDir).append(File.pathSeparator).append(appInfo.sourceDir).append("!/lib/").append(abi);
            String paths = sb.toString();
            return paths;
        } catch (RemoteException e) {
            return "";
        }
    }

    private boolean debugLayerEnabled(Bundle coreSettings, String packageName, ApplicationInfo ai) {
        if (!isDebuggable() && !canInjectLayers(ai)) {
            return false;
        }
        int enable = coreSettings.getInt(Settings.Global.ENABLE_GPU_DEBUG_LAYERS, 0);
        if (enable == 0) {
            return false;
        }
        String gpuDebugApp = coreSettings.getString(Settings.Global.GPU_DEBUG_APP, "");
        return (packageName == null || gpuDebugApp.isEmpty() || packageName.isEmpty() || !gpuDebugApp.equals(packageName)) ? false : true;
    }

    private void setupGpuLayers(Context context, Bundle coreSettings, PackageManager pm, String packageName, ApplicationInfo ai) {
        boolean enabled = debugLayerEnabled(coreSettings, packageName, ai);
        String layerPaths = "";
        if (enabled) {
            layerPaths = this.mLibraryPermittedPaths;
            String layers = coreSettings.getString(Settings.Global.GPU_DEBUG_LAYERS);
            Log.i(TAG, "Vulkan debug layer list: " + layers);
            if (layers != null && !layers.isEmpty()) {
                setDebugLayers(layers);
            }
            String layersGLES = coreSettings.getString(Settings.Global.GPU_DEBUG_LAYERS_GLES);
            Log.i(TAG, "GLES debug layer list: " + layersGLES);
            if (layersGLES != null && !layersGLES.isEmpty()) {
                setDebugLayersGLES(layersGLES);
            }
        }
        setLayerPaths(this.mClassLoader, layerPaths + this.mLibrarySearchPaths);
    }

    private static List<String> getGlobalSettingsString(ContentResolver contentResolver, Bundle bundle, String globalSetting) {
        String settingsValue;
        if (bundle != null) {
            settingsValue = bundle.getString(globalSetting);
        } else {
            settingsValue = Settings.Global.getString(contentResolver, globalSetting);
        }
        if (settingsValue != null) {
            List<String> valueList = new ArrayList<>(Arrays.asList(settingsValue.split(",")));
            return valueList;
        }
        List<String> valueList2 = new ArrayList<>();
        return valueList2;
    }

    private static int getPackageIndex(String packageName, List<String> packages) {
        for (int idx = 0; idx < packages.size(); idx++) {
            if (packages.get(idx).equals(packageName)) {
                return idx;
            }
        }
        return -1;
    }

    private static ApplicationInfo getAppInfoWithMetadata(Context context, PackageManager pm, String packageName) {
        try {
            ApplicationInfo ai = pm.getApplicationInfo(packageName, 128);
            return ai;
        } catch (PackageManager.NameNotFoundException e) {
            ApplicationInfo ai2 = context.getApplicationInfo();
            return ai2;
        }
    }

    private boolean shouldUseAngleInternal(Context context, Bundle bundle, String packageName) {
        int allUseAngle;
        if (TextUtils.isEmpty(packageName)) {
            return false;
        }
        if (bundle != null) {
            allUseAngle = bundle.getInt(Settings.Global.ANGLE_GL_DRIVER_ALL_ANGLE);
        } else {
            allUseAngle = Settings.Global.getInt(context.getContentResolver(), Settings.Global.ANGLE_GL_DRIVER_ALL_ANGLE, 0);
        }
        if (allUseAngle == 1) {
            Log.v(TAG, "Turn on ANGLE for all applications.");
            return true;
        }
        ContentResolver contentResolver = context.getContentResolver();
        List<String> optInPackages = getGlobalSettingsString(contentResolver, bundle, Settings.Global.ANGLE_GL_DRIVER_SELECTION_PKGS);
        List<String> optInValues = getGlobalSettingsString(contentResolver, bundle, Settings.Global.ANGLE_GL_DRIVER_SELECTION_VALUES);
        Log.v(TAG, "Currently set values for:");
        Log.v(TAG, "  angle_gl_driver_selection_pkgs=" + optInPackages);
        Log.v(TAG, "  angle_gl_driver_selection_values=" + optInValues);
        this.mEnabledByGameMode = isAngleEnabledByGameMode(context, packageName);
        if (optInPackages.size() != optInValues.size()) {
            Log.v(TAG, "Global.Settings values are invalid: number of packages: " + optInPackages.size() + ", number of values: " + optInValues.size());
            return this.mEnabledByGameMode;
        }
        int pkgIndex = getPackageIndex(packageName, optInPackages);
        if (pkgIndex < 0) {
            Log.v(TAG, packageName + " is not listed in per-application setting");
            return this.mEnabledByGameMode;
        }
        this.mAngleOptInIndex = pkgIndex;
        String optInValue = optInValues.get(pkgIndex);
        Log.v(TAG, "ANGLE Developer option for '" + packageName + "' set to: '" + optInValue + "'");
        if (optInValue.equals("angle")) {
            return true;
        }
        if (optInValue.equals(ANGLE_GL_DRIVER_CHOICE_NATIVE)) {
            return false;
        }
        return this.mEnabledByGameMode;
    }

    private String getAnglePackageName(PackageManager pm) {
        Intent intent = new Intent(ACTION_ANGLE_FOR_ANDROID);
        List<ResolveInfo> resolveInfos = pm.queryIntentActivities(intent, 1048576);
        if (resolveInfos.size() != 1) {
            Log.e(TAG, "Invalid number of ANGLE packages. Required: 1, Found: " + resolveInfos.size());
            for (ResolveInfo resolveInfo : resolveInfos) {
                Log.e(TAG, "Found ANGLE package: " + resolveInfo.activityInfo.packageName);
            }
            return "";
        }
        return resolveInfos.get(0).activityInfo.packageName;
    }

    private String getAngleDebugPackage(Context context, Bundle coreSettings) {
        String debugPackage;
        if (!isDebuggable()) {
            return "";
        }
        if (coreSettings != null) {
            debugPackage = coreSettings.getString(Settings.Global.ANGLE_DEBUG_PACKAGE);
        } else {
            ContentResolver contentResolver = context.getContentResolver();
            debugPackage = Settings.Global.getString(contentResolver, Settings.Global.ANGLE_DEBUG_PACKAGE);
        }
        return TextUtils.isEmpty(debugPackage) ? "" : debugPackage;
    }

    private boolean setupAngle(Context context, Bundle bundle, PackageManager pm, String packageName) {
        if (!shouldUseAngle(context, bundle, packageName)) {
            return false;
        }
        ApplicationInfo angleInfo = null;
        String anglePkgName = getAngleDebugPackage(context, bundle);
        if (!anglePkgName.isEmpty()) {
            Log.v(TAG, "ANGLE debug package enabled: " + anglePkgName);
            try {
                angleInfo = pm.getApplicationInfo(anglePkgName, 0);
            } catch (PackageManager.NameNotFoundException e) {
                Log.v(TAG, "ANGLE debug package '" + anglePkgName + "' not installed");
                return false;
            }
        }
        if (angleInfo == null) {
            String anglePkgName2 = getAnglePackageName(pm);
            if (TextUtils.isEmpty(anglePkgName2)) {
                Log.v(TAG, "Failed to find ANGLE package.");
                return false;
            }
            Log.v(TAG, "ANGLE package enabled: " + anglePkgName2);
            try {
                angleInfo = pm.getApplicationInfo(anglePkgName2, 1048576);
            } catch (PackageManager.NameNotFoundException e2) {
                Log.v(TAG, "ANGLE package '" + anglePkgName2 + "' not installed");
                return false;
            }
        }
        String abi = chooseAbi(angleInfo);
        String paths = angleInfo.nativeLibraryDir + File.pathSeparator + angleInfo.sourceDir + "!/lib/" + abi;
        String[] features = getAngleEglFeatures(context, bundle);
        setAngleInfo(paths, packageName, "angle", features);
        return true;
    }

    private boolean shouldShowAngleInUseDialogBox(Context context) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            int showDialogBox = Settings.Global.getInt(contentResolver, Settings.Global.SHOW_ANGLE_IN_USE_DIALOG_BOX);
            if (showDialogBox != 1) {
                return false;
            }
            return true;
        } catch (Settings.SettingNotFoundException | SecurityException e) {
            return false;
        }
    }

    private boolean setupAndUseAngle(Context context, String packageName) {
        if (!setupAngle(context, null, context.getPackageManager(), packageName)) {
            Log.v(TAG, "Package '" + packageName + "' should not use ANGLE");
            return false;
        }
        boolean useAngle = getShouldUseAngle(packageName);
        Log.v(TAG, "Package '" + packageName + "' should use ANGLE = '" + useAngle + "'");
        return useAngle;
    }

    public void showAngleInUseDialogBox(Context context) {
        String packageName = context.getPackageName();
        if (shouldShowAngleInUseDialogBox(context) && setupAndUseAngle(context, packageName)) {
            Intent intent = new Intent(ACTION_ANGLE_FOR_ANDROID_TOAST_MESSAGE);
            String anglePkg = getAnglePackageName(context.getPackageManager());
            intent.setPackage(anglePkg);
            context.sendOrderedBroadcast(intent, null, new BroadcastReceiver() { // from class: android.os.GraphicsEnvironment.1
                AnonymousClass1() {
                }

                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent2) {
                    Bundle results = getResultExtras(true);
                    String toastMsg = results.getString(GraphicsEnvironment.INTENT_KEY_A4A_TOAST_MESSAGE);
                    Toast toast = Toast.makeText(context2, toastMsg, 1);
                    toast.show();
                }
            }, null, -1, null, null);
        }
    }

    /* renamed from: android.os.GraphicsEnvironment$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context2, Intent intent2) {
            Bundle results = getResultExtras(true);
            String toastMsg = results.getString(GraphicsEnvironment.INTENT_KEY_A4A_TOAST_MESSAGE);
            Toast toast = Toast.makeText(context2, toastMsg, 1);
            toast.show();
        }
    }

    private String[] getAngleEglFeatures(Context context, Bundle coreSettings) {
        if (this.mAngleOptInIndex < 0) {
            return null;
        }
        List<String> featuresLists = getGlobalSettingsString(context.getContentResolver(), coreSettings, Settings.Global.ANGLE_EGL_FEATURES);
        int size = featuresLists.size();
        int i = this.mAngleOptInIndex;
        if (size <= i) {
            return null;
        }
        return featuresLists.get(i).split(":");
    }

    private String chooseDriverInternal(Bundle coreSettings, ApplicationInfo ai) {
        String productionDriver = SystemProperties.get(PROPERTY_GFX_DRIVER_PRODUCTION);
        boolean enablePrereleaseDriver = true;
        boolean hasProductionDriver = (productionDriver == null || productionDriver.isEmpty()) ? false : true;
        String prereleaseDriver = SystemProperties.get(PROPERTY_GFX_DRIVER_PRERELEASE);
        boolean hasPrereleaseDriver = (prereleaseDriver == null || prereleaseDriver.isEmpty()) ? false : true;
        if (!hasProductionDriver && !hasPrereleaseDriver) {
            Log.v(TAG, "Neither updatable production driver nor prerelease driver is supported.");
            return null;
        }
        if (ai.isPrivilegedApp() || (ai.isSystemApp() && !ai.isUpdatedSystemApp())) {
            return null;
        }
        if ((ai.metaData == null || !ai.metaData.getBoolean(METADATA_DEVELOPER_DRIVER_ENABLE)) && !isDebuggable()) {
            enablePrereleaseDriver = false;
        }
        switch (coreSettings.getInt(Settings.Global.UPDATABLE_DRIVER_ALL_APPS, 0)) {
            case 1:
                Log.v(TAG, "All apps opt in to use updatable production driver.");
                if (hasProductionDriver) {
                    return productionDriver;
                }
                return null;
            case 2:
                Log.v(TAG, "All apps opt in to use updatable prerelease driver.");
                if (hasPrereleaseDriver && enablePrereleaseDriver) {
                    return prereleaseDriver;
                }
                return null;
            case 3:
                Log.v(TAG, "The updatable driver is turned off on this device.");
                return null;
            default:
                String appPackageName = ai.packageName;
                if (getGlobalSettingsString(null, coreSettings, Settings.Global.UPDATABLE_DRIVER_PRODUCTION_OPT_OUT_APPS).contains(appPackageName)) {
                    Log.v(TAG, "App opts out for updatable production driver.");
                    return null;
                }
                if (getGlobalSettingsString(null, coreSettings, Settings.Global.UPDATABLE_DRIVER_PRERELEASE_OPT_IN_APPS).contains(appPackageName)) {
                    Log.v(TAG, "App opts in for updatable prerelease driver.");
                    if (hasPrereleaseDriver && enablePrereleaseDriver) {
                        return prereleaseDriver;
                    }
                    return null;
                }
                if (!hasProductionDriver) {
                    Log.v(TAG, "Updatable production driver is not supported on the device.");
                    return null;
                }
                boolean isOptIn = getGlobalSettingsString(null, coreSettings, Settings.Global.UPDATABLE_DRIVER_PRODUCTION_OPT_IN_APPS).contains(appPackageName);
                List<String> allowlist = getGlobalSettingsString(null, coreSettings, Settings.Global.UPDATABLE_DRIVER_PRODUCTION_ALLOWLIST);
                if (!isOptIn && allowlist.indexOf("*") != 0 && !allowlist.contains(appPackageName)) {
                    Log.v(TAG, "App is not on the allowlist for updatable production driver.");
                    return null;
                }
                if (!isOptIn && getGlobalSettingsString(null, coreSettings, Settings.Global.UPDATABLE_DRIVER_PRODUCTION_DENYLIST).contains(appPackageName)) {
                    Log.v(TAG, "App is on the denylist for updatable production driver.");
                    return null;
                }
                return productionDriver;
        }
    }

    private boolean chooseDriver(Context context, Bundle coreSettings, PackageManager pm, String packageName, ApplicationInfo ai) {
        String abi;
        String driverBuildTime;
        String driverPackageName = chooseDriverInternal(coreSettings, ai);
        if (driverPackageName == null) {
            return false;
        }
        try {
            PackageInfo driverPackageInfo = pm.getPackageInfo(driverPackageName, 1048704);
            ApplicationInfo driverAppInfo = driverPackageInfo.applicationInfo;
            if (driverAppInfo.targetSdkVersion < 26 || (abi = chooseAbi(driverAppInfo)) == null) {
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(driverAppInfo.nativeLibraryDir).append(File.pathSeparator);
            sb.append(driverAppInfo.sourceDir).append("!/lib/").append(abi);
            String paths = sb.toString();
            String sphalLibraries = getSphalLibraries(context, driverPackageName);
            Log.v(TAG, "Updatable driver package search path: " + paths + ", required sphal libraries: " + sphalLibraries);
            setDriverPathAndSphalLibraries(paths, sphalLibraries);
            if (driverAppInfo.metaData == null) {
                throw new NullPointerException("apk's meta-data cannot be null");
            }
            String driverBuildTime2 = driverAppInfo.metaData.getString(METADATA_DRIVER_BUILD_TIME);
            if (driverBuildTime2 == null || driverBuildTime2.length() <= 1) {
                Log.w(TAG, "com.android.graphics.driver.build_time is not set");
                driverBuildTime = "L0";
            } else {
                driverBuildTime = driverBuildTime2;
            }
            setGpuStats(driverPackageName, driverPackageInfo.versionName, driverAppInfo.longVersionCode, Long.parseLong(driverBuildTime.substring(1)), packageName, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(TAG, "updatable driver package '" + driverPackageName + "' not installed");
            return false;
        }
    }

    private static String chooseAbi(ApplicationInfo ai) {
        String isa = VMRuntime.getCurrentInstructionSet();
        if (ai.primaryCpuAbi != null && isa.equals(VMRuntime.getInstructionSet(ai.primaryCpuAbi))) {
            return ai.primaryCpuAbi;
        }
        if (ai.secondaryCpuAbi != null && isa.equals(VMRuntime.getInstructionSet(ai.secondaryCpuAbi))) {
            return ai.secondaryCpuAbi;
        }
        return null;
    }

    private String getSphalLibraries(Context context, String driverPackageName) {
        try {
            Context driverContext = context.createPackageContext(driverPackageName, 4);
            BufferedReader reader = new BufferedReader(new InputStreamReader(driverContext.getAssets().open(UPDATABLE_DRIVER_SPHAL_LIBRARIES_FILENAME)));
            ArrayList<String> assetStrings = new ArrayList<>();
            while (true) {
                String assetString = reader.readLine();
                if (assetString != null) {
                    assetStrings.add(assetString);
                } else {
                    return String.join(":", assetStrings);
                }
            }
        } catch (PackageManager.NameNotFoundException | IOException e) {
            return "";
        }
    }
}
