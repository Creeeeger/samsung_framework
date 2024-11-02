package android.app;

import android.accounts.AccountManager;
import android.accounts.IAccountManager;
import android.adservices.AdServicesFrameworkInitializer;
import android.annotation.SystemApi;
import android.app.IAlarmManager;
import android.app.IGrammaticalInflectionManager;
import android.app.ILocaleManager;
import android.app.INotificationManager;
import android.app.IWallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.admin.IDevicePolicyManager;
import android.app.ambientcontext.AmbientContextManager;
import android.app.ambientcontext.IAmbientContextManager;
import android.app.appprelauncher.AppPrelaunchManager;
import android.app.appprelauncher.IAppPrelaunchService;
import android.app.appsearch.AppSearchManagerFrameworkInitializer;
import android.app.blob.BlobStoreManagerFrameworkInitializer;
import android.app.contentsuggestions.ContentSuggestionsManager;
import android.app.contentsuggestions.IContentSuggestionsManager;
import android.app.job.JobSchedulerFrameworkInitializer;
import android.app.people.PeopleManager;
import android.app.prediction.AppPredictionManager;
import android.app.role.RoleFrameworkInitializer;
import android.app.sdksandbox.SdkSandboxManagerFrameworkInitializer;
import android.app.search.SearchUiManager;
import android.app.slice.SliceManager;
import android.app.smartspace.SmartspaceManager;
import android.app.time.TimeManager;
import android.app.timedetector.TimeDetector;
import android.app.timedetector.TimeDetectorImpl;
import android.app.timezonedetector.TimeZoneDetector;
import android.app.timezonedetector.TimeZoneDetectorImpl;
import android.app.trust.TrustManager;
import android.app.usage.IStorageStatsManager;
import android.app.usage.IUsageStatsManager;
import android.app.usage.StorageStatsManager;
import android.app.usage.UsageStatsManager;
import android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager;
import android.app.wallpapereffectsgeneration.WallpaperEffectsGenerationManager;
import android.app.wearable.IWearableSensingManager;
import android.app.wearable.WearableSensingManager;
import android.apphibernation.AppHibernationManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothFrameworkInitializer;
import android.companion.CompanionDeviceManager;
import android.companion.ICompanionDeviceManager;
import android.companion.virtual.IVirtualDeviceManager;
import android.companion.virtual.VirtualDeviceManager;
import android.compat.Compatibility;
import android.content.ClipboardManager;
import android.content.ContentCaptureOptions;
import android.content.Context;
import android.content.IRestrictionsManager;
import android.content.RestrictionsManager;
import android.content.integrity.AppIntegrityManager;
import android.content.integrity.IAppIntegrityManager;
import android.content.om.IOverlayManager;
import android.content.om.OverlayManager;
import android.content.pm.ApplicationInfo;
import android.content.pm.CrossProfileApps;
import android.content.pm.DataLoaderManager;
import android.content.pm.ICrossProfileApps;
import android.content.pm.IDataLoaderManager;
import android.content.pm.IShortcutService;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutManager;
import android.content.pm.verify.domain.DomainVerificationManager;
import android.content.pm.verify.domain.IDomainVerificationManager;
import android.content.res.Resources;
import android.content.rollback.RollbackManagerFrameworkInitializer;
import android.credentials.CredentialManager;
import android.credentials.ICredentialManager;
import android.debug.AdbManager;
import android.debug.IAdbManager;
import android.devicelock.DeviceLockFrameworkInitializer;
import android.graphics.fonts.FontManager;
import android.hardware.ConsumerIrManager;
import android.hardware.ISerialManager;
import android.hardware.SensorManager;
import android.hardware.SensorPrivacyManager;
import android.hardware.SerialManager;
import android.hardware.SystemSensorManager;
import android.hardware.biometrics.BiometricManager;
import android.hardware.biometrics.IAuthService;
import android.hardware.camera2.CameraManager;
import android.hardware.devicestate.DeviceStateManager;
import android.hardware.display.ColorDisplayManager;
import android.hardware.display.DisplayManager;
import android.hardware.display.ExynosDisplaySolutionManager;
import android.hardware.display.IExynosDisplaySolutionManager;
import android.hardware.face.FaceManager;
import android.hardware.face.IFaceService;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.IFingerprintService;
import android.hardware.hdmi.HdmiControlManager;
import android.hardware.hdmi.IHdmiControlService;
import android.hardware.input.InputManager;
import android.hardware.iris.IIrisService;
import android.hardware.iris.IrisManager;
import android.hardware.lights.LightsManager;
import android.hardware.lights.SystemLightsManager;
import android.hardware.location.ContextHubManager;
import android.hardware.radio.RadioManager;
import android.hardware.scontext.SContextManager;
import android.hardware.usb.IUsbManager;
import android.hardware.usb.UsbManager;
import android.health.connect.HealthServicesInitializer;
import android.location.CountryDetector;
import android.location.ICountryDetector;
import android.location.ILocationManager;
import android.location.LocationManager;
import android.media.AudioDeviceVolumeManager;
import android.media.AudioManager;
import android.media.MediaFrameworkInitializer;
import android.media.MediaFrameworkPlatformInitializer;
import android.media.MediaRouter;
import android.media.metrics.IMediaMetricsManager;
import android.media.metrics.MediaMetricsManager;
import android.media.midi.IMidiManager;
import android.media.midi.MidiManager;
import android.media.musicrecognition.IMusicRecognitionManager;
import android.media.musicrecognition.MusicRecognitionManager;
import android.media.projection.MediaProjectionManager;
import android.media.soundtrigger.SoundTriggerManager;
import android.media.tv.ITvInputManager;
import android.media.tv.TvInputManager;
import android.media.tv.interactive.ITvInteractiveAppManager;
import android.media.tv.interactive.TvInteractiveAppManager;
import android.media.tv.tunerresourcemanager.ITunerResourceManager;
import android.media.tv.tunerresourcemanager.TunerResourceManager;
import android.nearby.NearbyFrameworkInitializer;
import android.net.ConnectivityFrameworkInitializer;
import android.net.ConnectivityFrameworkInitializerTiramisu;
import android.net.INetworkPolicyManager;
import android.net.IPacProxyManager;
import android.net.IVpnManager;
import android.net.NetworkPolicyManager;
import android.net.NetworkScoreManager;
import android.net.NetworkWatchlistManager;
import android.net.PacProxyManager;
import android.net.TetheringManager;
import android.net.VpnManager;
import android.net.vcn.IVcnManagementService;
import android.net.vcn.VcnManager;
import android.net.wifi.WifiFrameworkInitializer;
import android.net.wifi.nl80211.WifiNl80211Manager;
import android.net.wifi.sharedconnectivity.app.SharedConnectivityManager;
import android.nfc.NfcFrameworkInitializer;
import android.ondevicepersonalization.OnDevicePersonalizationFrameworkInitializer;
import android.os.BatteryManager;
import android.os.BatteryStatsManager;
import android.os.BugreportManager;
import android.os.CustomFrequencyManager;
import android.os.DropBoxManager;
import android.os.HardwarePropertiesManager;
import android.os.IBatteryPropertiesRegistrar;
import android.os.IBinder;
import android.os.ICustomFrequencyManager;
import android.os.IDumpstate;
import android.os.IHardwarePropertiesManager;
import android.os.IPowerManager;
import android.os.IRecoverySystem;
import android.os.ISemHcmManager;
import android.os.ISemHqmManager;
import android.os.ISystemUpdateManager;
import android.os.IThermalService;
import android.os.IUserManager;
import android.os.IncidentManager;
import android.os.PerformanceHintManager;
import android.os.PermissionEnforcer;
import android.os.PowerManager;
import android.os.Process;
import android.os.RecoverySystem;
import android.os.SemHcmManager;
import android.os.SemHqmManager;
import android.os.ServiceManager;
import android.os.StatsFrameworkInitializer;
import android.os.SystemConfigManager;
import android.os.SystemUpdateManager;
import android.os.SystemVibrator;
import android.os.SystemVibratorManager;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.VibratorManager;
import android.os.health.SystemHealthManager;
import android.os.image.DynamicSystemManager;
import android.os.image.IDynamicSystemService;
import android.os.incremental.IIncrementalService;
import android.os.incremental.IncrementalManager;
import android.os.storage.StorageManager;
import android.permission.LegacyPermissionManager;
import android.permission.PermissionCheckerManager;
import android.permission.PermissionControllerManager;
import android.permission.PermissionManager;
import android.print.IPrintManager;
import android.print.PrintManager;
import android.safetycenter.SafetyCenterFrameworkInitializer;
import android.scheduling.SchedulingFrameworkInitializer;
import android.security.FileIntegrityManager;
import android.security.IFileIntegrityService;
import android.security.attestationverification.AttestationVerificationManager;
import android.security.attestationverification.IAttestationVerificationManagerService;
import android.service.oemlock.IOemLockService;
import android.service.oemlock.OemLockManager;
import android.service.persistentdata.IPersistentDataBlockService;
import android.service.persistentdata.PersistentDataBlockManager;
import android.service.vr.IVrManager;
import android.system.virtualmachine.VirtualizationFrameworkInitializer;
import android.telecom.TelecomManager;
import android.telephony.MmsManager;
import android.telephony.TelephonyFrameworkInitializer;
import android.telephony.TelephonyRegistryManager;
import android.transparency.BinaryTransparencyManager;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.uwb.UwbFrameworkInitializer;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.WindowManagerImpl;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import android.view.autofill.AutofillManager;
import android.view.autofill.IAutoFillManager;
import android.view.contentcapture.ContentCaptureManager;
import android.view.contentcapture.IContentCaptureManager;
import android.view.displayhash.DisplayHashManager;
import android.view.inputmethod.InputMethodManager;
import android.view.selectiontoolbar.ISelectionToolbarManager;
import android.view.selectiontoolbar.SelectionToolbarManager;
import android.view.textclassifier.TextClassificationManager;
import android.view.textservice.TextServicesManager;
import android.view.translation.ITranslationManager;
import android.view.translation.TranslationManager;
import android.view.translation.UiTranslationManager;
import com.android.internal.R;
import com.android.internal.app.IAppOpsService;
import com.android.internal.app.IBatteryStats;
import com.android.internal.app.ISoundTriggerService;
import com.android.internal.appwidget.IAppWidgetService;
import com.android.internal.graphics.fonts.IFontManager;
import com.android.internal.net.INetworkWatchlistManager;
import com.android.internal.os.IBinaryTransparencyService;
import com.android.internal.os.IDropBoxManagerService;
import com.android.internal.policy.PhoneLayoutInflater;
import com.android.internal.util.Preconditions;
import com.samsung.android.camera.manager.CameraServiceWorkerManager;
import com.samsung.android.cocktailbar.CocktailBarManager;
import com.samsung.android.cocktailbar.ICocktailBarService;
import com.samsung.android.content.clipboard.SemClipboardManager;
import com.samsung.android.content.smartclip.SpenGestureManager;
import com.samsung.android.continuity.ISemContinuityManager;
import com.samsung.android.continuity.SemContinuityManager;
import com.samsung.android.desktopmode.IDesktopMode;
import com.samsung.android.desktopmode.SemDesktopModeManager;
import com.samsung.android.displayquality.ISemDisplayQualityManager;
import com.samsung.android.displayquality.SemDisplayQualityFeature;
import com.samsung.android.displayquality.SemDisplayQualityManager;
import com.samsung.android.displaysolution.ISemDisplaySolutionManager;
import com.samsung.android.displaysolution.SemDisplaySolutionManager;
import com.samsung.android.edge.SemEdgeManager;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.gesture.SemMotionRecognitionManager;
import com.samsung.android.hardware.display.ISemMdnieManager;
import com.samsung.android.hardware.display.SemMdnieManager;
import com.samsung.android.hardware.secinputdev.ISemInputDeviceManager;
import com.samsung.android.hardware.secinputdev.SemInputDeviceManager;
import com.samsung.android.hwrs.ISemHwrsManager;
import com.samsung.android.hwrs.SemHwrsManager;
import com.samsung.android.iccc.IIntegrityControlCheckCenter;
import com.samsung.android.iccc.IntegrityControlCheckCenter;
import com.samsung.android.isrb.IsrbManager;
import com.samsung.android.knox.ISemPersonaManager;
import com.samsung.android.knox.ISemRemoteContentManager;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.SemRemoteContentManager;
import com.samsung.android.lifeguard.LifeGuardManagerFrameworkInitializer;
import com.samsung.android.location.ISLocationManager;
import com.samsung.android.location.SemLocationManager;
import com.samsung.android.media.AudioTag;
import com.samsung.android.media.codec.SemVideoTranscodingService;
import com.samsung.android.media.fmradio.SemFmPlayer;
import com.samsung.android.multicontrol.IMultiControlManager;
import com.samsung.android.multicontrol.SemMultiControlManager;
import com.samsung.android.net.ExtendedEthernetManager;
import com.samsung.android.net.IExtendedEthernetManager;
import com.samsung.android.powerSolution.IpowerSolution;
import com.samsung.android.powerSolution.powerSolutionManager;
import com.samsung.android.remoteappmode.IRemoteAppMode;
import com.samsung.android.remoteappmode.SemRemoteAppModeManager;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.sepunion.IUnionManager;
import com.samsung.android.sepunion.SemUnionManager;
import com.samsung.android.sepunion.UnionUtils;
import com.samsung.android.shell.ShellFrameworkInitializer;
import com.samsung.android.telecom.SemTelecomManager;
import com.samsung.android.wifi.ISemWifiManager;
import com.samsung.android.wifi.SemWifiManager;
import com.samsung.android.wifi.aware.ISemWifiAwareManager;
import com.samsung.android.wifi.aware.SemWifiAwareManager;
import com.samsung.android.wifi.p2p.ISemWifiP2pManager;
import com.samsung.android.wifi.p2p.SemWifiP2pManager;
import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import vendor.samsung.frameworks.codecsolution.SemCodecSolutionService;

@SystemApi
/* loaded from: classes.dex */
public final class SystemServiceRegistry {
    private static final Map<String, String> SYSTEM_SERVICE_CLASS_NAMES;
    private static final Map<String, ServiceFetcher<?>> SYSTEM_SERVICE_FETCHERS;
    private static final Map<Class<?>, String> SYSTEM_SERVICE_NAMES;
    private static final String TAG = "SystemServiceRegistry";
    public static boolean sEnableServiceNotFoundWtf = false;
    private static volatile boolean sInitializing;
    private static int sServiceCacheSize;

    @SystemApi
    /* loaded from: classes.dex */
    public interface ContextAwareServiceProducerWithBinder<TServiceClass> {
        TServiceClass createService(Context context, IBinder iBinder);
    }

    @SystemApi
    /* loaded from: classes.dex */
    public interface ContextAwareServiceProducerWithoutBinder<TServiceClass> {
        TServiceClass createService(Context context);
    }

    /* loaded from: classes.dex */
    public interface ServiceFetcher<T> {
        T getService(ContextImpl contextImpl);
    }

    @SystemApi
    /* loaded from: classes.dex */
    public interface StaticServiceProducerWithBinder<TServiceClass> {
        TServiceClass createService(IBinder iBinder);
    }

    @SystemApi
    /* loaded from: classes.dex */
    public interface StaticServiceProducerWithoutBinder<TServiceClass> {
        TServiceClass createService();
    }

    static {
        ArrayMap arrayMap = new ArrayMap();
        SYSTEM_SERVICE_NAMES = arrayMap;
        SYSTEM_SERVICE_FETCHERS = new ArrayMap();
        SYSTEM_SERVICE_CLASS_NAMES = new ArrayMap();
        registerService(Context.ACCESSIBILITY_SERVICE, AccessibilityManager.class, new CachedServiceFetcher<AccessibilityManager>() { // from class: android.app.SystemServiceRegistry.1
            AnonymousClass1() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AccessibilityManager createService(ContextImpl ctx) {
                return AccessibilityManager.getInstance(ctx);
            }
        });
        registerService(Context.CAPTIONING_SERVICE, CaptioningManager.class, new CachedServiceFetcher<CaptioningManager>() { // from class: android.app.SystemServiceRegistry.2
            AnonymousClass2() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public CaptioningManager createService(ContextImpl ctx) {
                return new CaptioningManager(ctx);
            }
        });
        registerService("account", AccountManager.class, new CachedServiceFetcher<AccountManager>() { // from class: android.app.SystemServiceRegistry.3
            AnonymousClass3() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AccountManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("account");
                IAccountManager service = IAccountManager.Stub.asInterface(b);
                return new AccountManager(ctx, service);
            }
        });
        registerService("activity", ActivityManager.class, new CachedServiceFetcher<ActivityManager>() { // from class: android.app.SystemServiceRegistry.4
            AnonymousClass4() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ActivityManager createService(ContextImpl ctx) {
                return new ActivityManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
            }
        });
        registerService(Context.ACTIVITY_TASK_SERVICE, ActivityTaskManager.class, new CachedServiceFetcher<ActivityTaskManager>() { // from class: android.app.SystemServiceRegistry.5
            AnonymousClass5() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ActivityTaskManager createService(ContextImpl ctx) {
                return ActivityTaskManager.getInstance();
            }
        });
        registerService(Context.URI_GRANTS_SERVICE, UriGrantsManager.class, new CachedServiceFetcher<UriGrantsManager>() { // from class: android.app.SystemServiceRegistry.6
            AnonymousClass6() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public UriGrantsManager createService(ContextImpl ctx) {
                return new UriGrantsManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
            }
        });
        registerService("alarm", AlarmManager.class, new CachedServiceFetcher<AlarmManager>() { // from class: android.app.SystemServiceRegistry.7
            AnonymousClass7() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AlarmManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("alarm");
                IAlarmManager service = IAlarmManager.Stub.asInterface(b);
                return new AlarmManager(service, ctx);
            }
        });
        registerService("audio", AudioManager.class, new CachedServiceFetcher<AudioManager>() { // from class: android.app.SystemServiceRegistry.8
            AnonymousClass8() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AudioManager createService(ContextImpl ctx) {
                return new AudioManager(ctx);
            }
        });
        registerService(Context.AUDIO_DEVICE_VOLUME_SERVICE, AudioDeviceVolumeManager.class, new CachedServiceFetcher<AudioDeviceVolumeManager>() { // from class: android.app.SystemServiceRegistry.9
            AnonymousClass9() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AudioDeviceVolumeManager createService(ContextImpl ctx) {
                return new AudioDeviceVolumeManager(ctx);
            }
        });
        registerService(Context.MEDIA_ROUTER_SERVICE, MediaRouter.class, new CachedServiceFetcher<MediaRouter>() { // from class: android.app.SystemServiceRegistry.10
            AnonymousClass10() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public MediaRouter createService(ContextImpl ctx) {
                return new MediaRouter(ctx);
            }
        });
        registerService(Context.CFMS_SERVICE, CustomFrequencyManager.class, new CachedServiceFetcher<CustomFrequencyManager>() { // from class: android.app.SystemServiceRegistry.11
            AnonymousClass11() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public CustomFrequencyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.CFMS_SERVICE);
                ICustomFrequencyManager service = ICustomFrequencyManager.Stub.asInterface(b);
                if (service == null) {
                    Log.wtf(SystemServiceRegistry.TAG, "Failed to get custom frequency manager service.");
                }
                return new CustomFrequencyManager(service, ctx.mMainThread.getHandler());
            }
        });
        registerService(Context.ICCC_SERVICE, IntegrityControlCheckCenter.class, new CachedServiceFetcher<IntegrityControlCheckCenter>() { // from class: android.app.SystemServiceRegistry.12
            AnonymousClass12() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public IntegrityControlCheckCenter createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.ICCC_SERVICE);
                return new IntegrityControlCheckCenter(IIntegrityControlCheckCenter.Stub.asInterface(b));
            }
        });
        registerService(Context.HDMI_CONTROL_SERVICE, HdmiControlManager.class, new StaticServiceFetcher<HdmiControlManager>() { // from class: android.app.SystemServiceRegistry.14
            AnonymousClass14() {
            }

            @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
            public HdmiControlManager createService() throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.HDMI_CONTROL_SERVICE);
                return new HdmiControlManager(IHdmiControlService.Stub.asInterface(b));
            }
        });
        registerService(Context.TEXT_CLASSIFICATION_SERVICE, TextClassificationManager.class, new CachedServiceFetcher<TextClassificationManager>() { // from class: android.app.SystemServiceRegistry.15
            AnonymousClass15() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TextClassificationManager createService(ContextImpl ctx) {
                return new TextClassificationManager(ctx);
            }
        });
        registerService(Context.SELECTION_TOOLBAR_SERVICE, SelectionToolbarManager.class, new CachedServiceFetcher<SelectionToolbarManager>() { // from class: android.app.SystemServiceRegistry.16
            AnonymousClass16() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SelectionToolbarManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.SELECTION_TOOLBAR_SERVICE);
                return new SelectionToolbarManager(ctx.getOuterContext(), ISelectionToolbarManager.Stub.asInterface(b));
            }
        });
        registerService(Context.FONT_SERVICE, FontManager.class, new CachedServiceFetcher<FontManager>() { // from class: android.app.SystemServiceRegistry.17
            AnonymousClass17() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public FontManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.FONT_SERVICE);
                return FontManager.create(IFontManager.Stub.asInterface(b));
            }
        });
        registerService("clipboard", ClipboardManager.class, new CachedServiceFetcher<ClipboardManager>() { // from class: android.app.SystemServiceRegistry.18
            AnonymousClass18() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ClipboardManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new ClipboardManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
            }
        });
        arrayMap.put(android.text.ClipboardManager.class, "clipboard");
        registerService(Context.SEM_CLIPBOARD_SERVICE, SemClipboardManager.class, new CachedServiceFetcher<SemClipboardManager>() { // from class: android.app.SystemServiceRegistry.19
            AnonymousClass19() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemClipboardManager createService(ContextImpl ctx) {
                return new SemClipboardManager(ctx.getOuterContext());
            }
        });
        registerService(Context.PAC_PROXY_SERVICE, PacProxyManager.class, new CachedServiceFetcher<PacProxyManager>() { // from class: android.app.SystemServiceRegistry.20
            AnonymousClass20() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public PacProxyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.PAC_PROXY_SERVICE);
                IPacProxyManager service = IPacProxyManager.Stub.asInterface(b);
                return new PacProxyManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.NETD_SERVICE, IBinder.class, new StaticServiceFetcher<IBinder>() { // from class: android.app.SystemServiceRegistry.21
            AnonymousClass21() {
            }

            @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
            public IBinder createService() throws ServiceManager.ServiceNotFoundException {
                return ServiceManager.getServiceOrThrow(Context.NETD_SERVICE);
            }
        });
        registerService(Context.TETHERING_SERVICE, TetheringManager.class, new AnonymousClass22());
        registerService(Context.VPN_MANAGEMENT_SERVICE, VpnManager.class, new CachedServiceFetcher<VpnManager>() { // from class: android.app.SystemServiceRegistry.23
            AnonymousClass23() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public VpnManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.VPN_MANAGEMENT_SERVICE);
                IVpnManager service = IVpnManager.Stub.asInterface(b);
                return new VpnManager(ctx, service);
            }
        });
        registerService(Context.VCN_MANAGEMENT_SERVICE, VcnManager.class, new CachedServiceFetcher<VcnManager>() { // from class: android.app.SystemServiceRegistry.24
            AnonymousClass24() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public VcnManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.VCN_MANAGEMENT_SERVICE);
                IVcnManagementService service = IVcnManagementService.Stub.asInterface(b);
                return new VcnManager(ctx, service);
            }
        });
        registerService(Context.COUNTRY_DETECTOR, CountryDetector.class, new StaticServiceFetcher<CountryDetector>() { // from class: android.app.SystemServiceRegistry.25
            AnonymousClass25() {
            }

            @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
            public CountryDetector createService() throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.COUNTRY_DETECTOR);
                return new CountryDetector(ICountryDetector.Stub.asInterface(b));
            }
        });
        registerService(Context.DEVICE_POLICY_SERVICE, DevicePolicyManager.class, new CachedServiceFetcher<DevicePolicyManager>() { // from class: android.app.SystemServiceRegistry.26
            AnonymousClass26() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DevicePolicyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.DEVICE_POLICY_SERVICE);
                return new DevicePolicyManager(ctx, IDevicePolicyManager.Stub.asInterface(b));
            }
        });
        registerService(Context.DOWNLOAD_SERVICE, DownloadManager.class, new CachedServiceFetcher<DownloadManager>() { // from class: android.app.SystemServiceRegistry.27
            AnonymousClass27() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DownloadManager createService(ContextImpl ctx) {
                return new DownloadManager(ctx);
            }
        });
        registerService(Context.HQM_SERVICE, SemHqmManager.class, new CachedServiceFetcher<SemHqmManager>() { // from class: android.app.SystemServiceRegistry.28
            AnonymousClass28() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemHqmManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.HQM_SERVICE);
                ISemHqmManager service = ISemHqmManager.Stub.asInterface(b);
                if (service == null) {
                    Log.e(SystemServiceRegistry.TAG, "Failed to get Hqm manager service.");
                    return null;
                }
                return new SemHqmManager(service, ctx.mMainThread.getHandler());
            }
        });
        if (!"0".equals(SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"))) {
            registerService(Context.HCM_SERVICE, SemHcmManager.class, new CachedServiceFetcher<SemHcmManager>() { // from class: android.app.SystemServiceRegistry.29
                AnonymousClass29() {
                }

                @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
                public SemHcmManager createService(ContextImpl ctx) {
                    IBinder b = ServiceManager.getService(Context.HCM_SERVICE);
                    ISemHcmManager service = ISemHcmManager.Stub.asInterface(b);
                    if (service == null) {
                        Log.e(SystemServiceRegistry.TAG, "Failed to get Hcm manager service.");
                        return null;
                    }
                    return new SemHcmManager(service, ctx.mMainThread.getHandler());
                }
            });
        }
        registerService(Context.BATTERY_SERVICE, BatteryManager.class, new CachedServiceFetcher<BatteryManager>() { // from class: android.app.SystemServiceRegistry.30
            AnonymousClass30() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public BatteryManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBatteryStats stats = IBatteryStats.Stub.asInterface(ServiceManager.getServiceOrThrow("batterystats"));
                IBatteryPropertiesRegistrar registrar = IBatteryPropertiesRegistrar.Stub.asInterface(ServiceManager.getServiceOrThrow("batteryproperties"));
                return new BatteryManager(ctx, stats, registrar);
            }
        });
        registerService(Context.DROPBOX_SERVICE, DropBoxManager.class, new CachedServiceFetcher<DropBoxManager>() { // from class: android.app.SystemServiceRegistry.31
            AnonymousClass31() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DropBoxManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.DROPBOX_SERVICE);
                IDropBoxManagerService service = IDropBoxManagerService.Stub.asInterface(b);
                return new DropBoxManager(ctx, service);
            }
        });
        registerService("transparency", BinaryTransparencyManager.class, new CachedServiceFetcher<BinaryTransparencyManager>() { // from class: android.app.SystemServiceRegistry.32
            AnonymousClass32() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public BinaryTransparencyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("transparency");
                IBinaryTransparencyService service = IBinaryTransparencyService.Stub.asInterface(b);
                return new BinaryTransparencyManager(ctx, service);
            }
        });
        registerService("input", InputManager.class, new CachedServiceFetcher<InputManager>() { // from class: android.app.SystemServiceRegistry.33
            AnonymousClass33() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public InputManager createService(ContextImpl ctx) {
                return new InputManager(ctx.getOuterContext());
            }
        });
        registerService(Context.DISPLAY_SERVICE, DisplayManager.class, new CachedServiceFetcher<DisplayManager>() { // from class: android.app.SystemServiceRegistry.34
            AnonymousClass34() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DisplayManager createService(ContextImpl ctx) {
                return new DisplayManager(ctx.getOuterContext());
            }
        });
        registerService(Context.COLOR_DISPLAY_SERVICE, ColorDisplayManager.class, new CachedServiceFetcher<ColorDisplayManager>() { // from class: android.app.SystemServiceRegistry.35
            AnonymousClass35() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ColorDisplayManager createService(ContextImpl ctx) {
                return new ColorDisplayManager();
            }
        });
        registerService(Context.INPUT_METHOD_SERVICE, InputMethodManager.class, new ServiceFetcher<InputMethodManager>() { // from class: android.app.SystemServiceRegistry.36
            AnonymousClass36() {
            }

            @Override // android.app.SystemServiceRegistry.ServiceFetcher
            public InputMethodManager getService(ContextImpl ctx) {
                return InputMethodManager.forContext(ctx.getOuterContext());
            }
        });
        registerService(Context.TEXT_SERVICES_MANAGER_SERVICE, TextServicesManager.class, new CachedServiceFetcher<TextServicesManager>() { // from class: android.app.SystemServiceRegistry.37
            AnonymousClass37() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TextServicesManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return TextServicesManager.createInstance(ctx);
            }
        });
        registerService(Context.KEYGUARD_SERVICE, KeyguardManager.class, new CachedServiceFetcher<KeyguardManager>() { // from class: android.app.SystemServiceRegistry.38
            AnonymousClass38() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public KeyguardManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new KeyguardManager(ctx);
            }
        });
        registerService(Context.LAYOUT_INFLATER_SERVICE, LayoutInflater.class, new CachedServiceFetcher<LayoutInflater>() { // from class: android.app.SystemServiceRegistry.39
            AnonymousClass39() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public LayoutInflater createService(ContextImpl ctx) {
                return new PhoneLayoutInflater(ctx.getOuterContext());
            }
        });
        registerService("location", LocationManager.class, new CachedServiceFetcher<LocationManager>() { // from class: android.app.SystemServiceRegistry.40
            AnonymousClass40() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public LocationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("location");
                return new LocationManager(ctx, ILocationManager.Stub.asInterface(b));
            }
        });
        registerService(Context.SEM_LOCATION_SERVICE, SemLocationManager.class, new CachedServiceFetcher<SemLocationManager>() { // from class: android.app.SystemServiceRegistry.41
            AnonymousClass41() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemLocationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                Log.e(SystemServiceRegistry.TAG, "create SemLocationManager service");
                IBinder b = ServiceManager.getService(Context.SEM_LOCATION_SERVICE);
                return new SemLocationManager(ctx, ISLocationManager.Stub.asInterface(b));
            }
        });
        registerService(Context.NETWORK_POLICY_SERVICE, NetworkPolicyManager.class, new CachedServiceFetcher<NetworkPolicyManager>() { // from class: android.app.SystemServiceRegistry.42
            AnonymousClass42() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public NetworkPolicyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new NetworkPolicyManager(ctx, INetworkPolicyManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.NETWORK_POLICY_SERVICE)));
            }
        });
        registerService("notification", NotificationManager.class, new CachedServiceFetcher<NotificationManager>() { // from class: android.app.SystemServiceRegistry.43
            AnonymousClass43() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public NotificationManager createService(ContextImpl ctx) {
                Context outerContext = ctx.getOuterContext();
                return new NotificationManager(new ContextThemeWrapper(outerContext, Resources.selectSystemTheme(0, outerContext.getApplicationInfo().targetSdkVersion, 16973835, 16973935, 16974126, 16974130)), ctx.mMainThread.getHandler());
            }
        });
        registerService(Context.PEOPLE_SERVICE, PeopleManager.class, new CachedServiceFetcher<PeopleManager>() { // from class: android.app.SystemServiceRegistry.44
            AnonymousClass44() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public PeopleManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new PeopleManager(ctx);
            }
        });
        registerService("power", PowerManager.class, new CachedServiceFetcher<PowerManager>() { // from class: android.app.SystemServiceRegistry.45
            AnonymousClass45() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public PowerManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder powerBinder = ServiceManager.getServiceOrThrow("power");
                IPowerManager powerService = IPowerManager.Stub.asInterface(powerBinder);
                IBinder thermalBinder = ServiceManager.getServiceOrThrow(Context.THERMAL_SERVICE);
                IThermalService thermalService = IThermalService.Stub.asInterface(thermalBinder);
                return new PowerManager(ctx.getOuterContext(), powerService, thermalService, ctx.mMainThread.getHandler());
            }
        });
        registerService(Context.PERFORMANCE_HINT_SERVICE, PerformanceHintManager.class, new CachedServiceFetcher<PerformanceHintManager>() { // from class: android.app.SystemServiceRegistry.47
            AnonymousClass47() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public PerformanceHintManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return PerformanceHintManager.create();
            }
        });
        registerService("recovery", RecoverySystem.class, new CachedServiceFetcher<RecoverySystem>() { // from class: android.app.SystemServiceRegistry.48
            AnonymousClass48() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public RecoverySystem createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("recovery");
                IRecoverySystem service = IRecoverySystem.Stub.asInterface(b);
                return new RecoverySystem(service);
            }
        });
        registerService("search", SearchManager.class, new CachedServiceFetcher<SearchManager>() { // from class: android.app.SystemServiceRegistry.49
            AnonymousClass49() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SearchManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new SearchManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
            }
        });
        registerService(Context.SENSOR_SERVICE, SensorManager.class, new CachedServiceFetcher<SensorManager>() { // from class: android.app.SystemServiceRegistry.50
            AnonymousClass50() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SensorManager createService(ContextImpl ctx) {
                return new SystemSensorManager(ctx.getOuterContext(), ctx.mMainThread.getHandler().getLooper());
            }
        });
        registerService(Context.SENSOR_PRIVACY_SERVICE, SensorPrivacyManager.class, new CachedServiceFetcher<SensorPrivacyManager>() { // from class: android.app.SystemServiceRegistry.51
            AnonymousClass51() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SensorPrivacyManager createService(ContextImpl ctx) {
                return SensorPrivacyManager.getInstance(ctx);
            }
        });
        registerService(Context.STATUS_BAR_SERVICE, StatusBarManager.class, new CachedServiceFetcher<StatusBarManager>() { // from class: android.app.SystemServiceRegistry.52
            AnonymousClass52() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public StatusBarManager createService(ContextImpl ctx) {
                return new StatusBarManager(ctx.getOuterContext());
            }
        });
        registerService(Context.SEM_STATUS_BAR_SERVICE, SemStatusBarManager.class, new CachedServiceFetcher<SemStatusBarManager>() { // from class: android.app.SystemServiceRegistry.53
            AnonymousClass53() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemStatusBarManager createService(ContextImpl ctx) {
                return new SemStatusBarManager(ctx.getOuterContext());
            }
        });
        registerService(Context.SEM_EDGE_SERVICE, SemEdgeManager.class, new CachedServiceFetcher<SemEdgeManager>() { // from class: android.app.SystemServiceRegistry.54
            AnonymousClass54() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemEdgeManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService("notification");
                return new SemEdgeManager(ctx, INotificationManager.Stub.asInterface(b));
            }
        });
        registerService(Context.STORAGE_SERVICE, StorageManager.class, new CachedServiceFetcher<StorageManager>() { // from class: android.app.SystemServiceRegistry.55
            AnonymousClass55() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public StorageManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new StorageManager(ctx, ctx.mMainThread.getHandler().getLooper());
            }
        });
        registerService(Context.STORAGE_STATS_SERVICE, StorageStatsManager.class, new CachedServiceFetcher<StorageStatsManager>() { // from class: android.app.SystemServiceRegistry.56
            AnonymousClass56() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public StorageStatsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IStorageStatsManager service = IStorageStatsManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.STORAGE_STATS_SERVICE));
                return new StorageStatsManager(ctx, service);
            }
        });
        registerService(Context.SYSTEM_UPDATE_SERVICE, SystemUpdateManager.class, new CachedServiceFetcher<SystemUpdateManager>() { // from class: android.app.SystemServiceRegistry.57
            AnonymousClass57() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SystemUpdateManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.SYSTEM_UPDATE_SERVICE);
                ISystemUpdateManager service = ISystemUpdateManager.Stub.asInterface(b);
                return new SystemUpdateManager(service);
            }
        });
        registerService(Context.SYSTEM_CONFIG_SERVICE, SystemConfigManager.class, new CachedServiceFetcher<SystemConfigManager>() { // from class: android.app.SystemServiceRegistry.58
            AnonymousClass58() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SystemConfigManager createService(ContextImpl ctx) {
                return new SystemConfigManager();
            }
        });
        registerService(Context.TELEPHONY_REGISTRY_SERVICE, TelephonyRegistryManager.class, new CachedServiceFetcher<TelephonyRegistryManager>() { // from class: android.app.SystemServiceRegistry.59
            AnonymousClass59() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TelephonyRegistryManager createService(ContextImpl ctx) {
                return new TelephonyRegistryManager(ctx);
            }
        });
        registerService(Context.TELECOM_SERVICE, TelecomManager.class, new CachedServiceFetcher<TelecomManager>() { // from class: android.app.SystemServiceRegistry.60
            AnonymousClass60() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TelecomManager createService(ContextImpl ctx) {
                return new TelecomManager(ctx.getOuterContext());
            }
        });
        if (SemTelecomManager.hasSamsungTelecomSystemFeature()) {
            registerService(Context.SEM_TELECOM_SERVICE, SemTelecomManager.class, new CachedServiceFetcher<SemTelecomManager>() { // from class: android.app.SystemServiceRegistry.61
                AnonymousClass61() {
                }

                @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
                public SemTelecomManager createService(ContextImpl ctx) {
                    return new SemTelecomManager(ctx.getOuterContext());
                }
            });
        }
        registerService("mms", MmsManager.class, new CachedServiceFetcher<MmsManager>() { // from class: android.app.SystemServiceRegistry.62
            AnonymousClass62() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public MmsManager createService(ContextImpl ctx) {
                return new MmsManager(ctx.getOuterContext());
            }
        });
        registerService(Context.UI_MODE_SERVICE, UiModeManager.class, new CachedServiceFetcher<UiModeManager>() { // from class: android.app.SystemServiceRegistry.63
            AnonymousClass63() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public UiModeManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new UiModeManager(ctx.getOuterContext());
            }
        });
        registerService("usb", UsbManager.class, new CachedServiceFetcher<UsbManager>() { // from class: android.app.SystemServiceRegistry.64
            AnonymousClass64() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public UsbManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("usb");
                return new UsbManager(ctx, IUsbManager.Stub.asInterface(b));
            }
        });
        registerService("adb", AdbManager.class, new CachedServiceFetcher<AdbManager>() { // from class: android.app.SystemServiceRegistry.65
            AnonymousClass65() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AdbManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("adb");
                return new AdbManager(ctx, IAdbManager.Stub.asInterface(b));
            }
        });
        registerService(Context.SERIAL_SERVICE, SerialManager.class, new CachedServiceFetcher<SerialManager>() { // from class: android.app.SystemServiceRegistry.66
            AnonymousClass66() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SerialManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.SERIAL_SERVICE);
                return new SerialManager(ctx, ISerialManager.Stub.asInterface(b));
            }
        });
        registerService(Context.VIBRATOR_MANAGER_SERVICE, VibratorManager.class, new CachedServiceFetcher<VibratorManager>() { // from class: android.app.SystemServiceRegistry.67
            AnonymousClass67() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public VibratorManager createService(ContextImpl ctx) {
                return new SystemVibratorManager(ctx);
            }
        });
        registerService(Context.VIBRATOR_SERVICE, Vibrator.class, new CachedServiceFetcher<Vibrator>() { // from class: android.app.SystemServiceRegistry.68
            AnonymousClass68() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public Vibrator createService(ContextImpl ctx) {
                return new SystemVibrator(ctx);
            }
        });
        registerService("wallpaper", WallpaperManager.class, new CachedServiceFetcher<WallpaperManager>() { // from class: android.app.SystemServiceRegistry.69
            AnonymousClass69() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public WallpaperManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService("wallpaper");
                if (b == null) {
                    ApplicationInfo appInfo = ctx.getApplicationInfo();
                    if (appInfo.targetSdkVersion >= 28 && appInfo.isInstantApp()) {
                        throw new ServiceManager.ServiceNotFoundException("wallpaper");
                    }
                    boolean enabled = Resources.getSystem().getBoolean(R.bool.config_enableWallpaperService);
                    if (!enabled) {
                        return DisabledWallpaperManager.getInstance();
                    }
                    Log.e(SystemServiceRegistry.TAG, "No wallpaper service");
                }
                IWallpaperManager service = IWallpaperManager.Stub.asInterface(b);
                return new WallpaperManager(service, ctx.getOuterContext(), ctx.mMainThread.getHandler());
            }
        });
        registerService(Context.WIFI_NL80211_SERVICE, WifiNl80211Manager.class, new CachedServiceFetcher<WifiNl80211Manager>() { // from class: android.app.SystemServiceRegistry.70
            AnonymousClass70() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public WifiNl80211Manager createService(ContextImpl ctx) {
                return new WifiNl80211Manager(ctx.getOuterContext());
            }
        });
        registerService(Context.Power_Solution_FrameWork_Service, powerSolutionManager.class, new CachedServiceFetcher<powerSolutionManager>() { // from class: android.app.SystemServiceRegistry.71
            AnonymousClass71() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public powerSolutionManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.Power_Solution_FrameWork_Service);
                IpowerSolution service = IpowerSolution.Stub.asInterface(b);
                return new powerSolutionManager(service);
            }
        });
        registerService(Context.CameraServiceWorker_manager, CameraServiceWorkerManager.class, new CachedServiceFetcher<CameraServiceWorkerManager>() { // from class: android.app.SystemServiceRegistry.72
            AnonymousClass72() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public CameraServiceWorkerManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new CameraServiceWorkerManager(ServiceManager.getService(Context.CameraServiceWorker));
            }
        });
        registerService(Context.WINDOW_SERVICE, WindowManager.class, new CachedServiceFetcher<WindowManager>() { // from class: android.app.SystemServiceRegistry.73
            AnonymousClass73() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public WindowManager createService(ContextImpl ctx) {
                return new WindowManagerImpl(ctx);
            }
        });
        registerService("user", UserManager.class, new CachedServiceFetcher<UserManager>() { // from class: android.app.SystemServiceRegistry.74
            AnonymousClass74() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public UserManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("user");
                IUserManager service = IUserManager.Stub.asInterface(b);
                return new UserManager(ctx, service);
            }
        });
        registerService(Context.APP_OPS_SERVICE, AppOpsManager.class, new CachedServiceFetcher<AppOpsManager>() { // from class: android.app.SystemServiceRegistry.75
            AnonymousClass75() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AppOpsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.APP_OPS_SERVICE);
                IAppOpsService service = IAppOpsService.Stub.asInterface(b);
                return new AppOpsManager(ctx, service);
            }
        });
        registerService(Context.CAMERA_SERVICE, CameraManager.class, new CachedServiceFetcher<CameraManager>() { // from class: android.app.SystemServiceRegistry.76
            AnonymousClass76() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public CameraManager createService(ContextImpl ctx) {
                return new CameraManager(ctx);
            }
        });
        registerService(Context.LAUNCHER_APPS_SERVICE, LauncherApps.class, new CachedServiceFetcher<LauncherApps>() { // from class: android.app.SystemServiceRegistry.77
            AnonymousClass77() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public LauncherApps createService(ContextImpl ctx) {
                return new LauncherApps(ctx);
            }
        });
        registerService(Context.RESTRICTIONS_SERVICE, RestrictionsManager.class, new CachedServiceFetcher<RestrictionsManager>() { // from class: android.app.SystemServiceRegistry.78
            AnonymousClass78() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public RestrictionsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.RESTRICTIONS_SERVICE);
                IRestrictionsManager service = IRestrictionsManager.Stub.asInterface(b);
                return new RestrictionsManager(ctx, service);
            }
        });
        registerService(Context.PRINT_SERVICE, PrintManager.class, new CachedServiceFetcher<PrintManager>() { // from class: android.app.SystemServiceRegistry.79
            AnonymousClass79() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public PrintManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IPrintManager service = null;
                if (ctx.getPackageManager().hasSystemFeature(PackageManager.FEATURE_PRINTING)) {
                    service = IPrintManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.PRINT_SERVICE));
                }
                int userId = ctx.getUserId();
                int appId = UserHandle.getAppId(ctx.getApplicationInfo().uid);
                return new PrintManager(ctx.getOuterContext(), service, userId, appId);
            }
        });
        registerService(Context.COMPANION_DEVICE_SERVICE, CompanionDeviceManager.class, new CachedServiceFetcher<CompanionDeviceManager>() { // from class: android.app.SystemServiceRegistry.80
            AnonymousClass80() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public CompanionDeviceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                ICompanionDeviceManager service = null;
                if (ctx.getPackageManager().hasSystemFeature(PackageManager.FEATURE_COMPANION_DEVICE_SETUP)) {
                    service = ICompanionDeviceManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.COMPANION_DEVICE_SERVICE));
                }
                return new CompanionDeviceManager(service, ctx.getOuterContext());
            }
        });
        registerService(Context.VIRTUAL_DEVICE_SERVICE, VirtualDeviceManager.class, new CachedServiceFetcher<VirtualDeviceManager>() { // from class: android.app.SystemServiceRegistry.81
            AnonymousClass81() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public VirtualDeviceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                if (!ctx.getPackageManager().hasSystemFeature(PackageManager.FEATURE_COMPANION_DEVICE_SETUP)) {
                    return null;
                }
                IVirtualDeviceManager service = IVirtualDeviceManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.VIRTUAL_DEVICE_SERVICE));
                return new VirtualDeviceManager(service, ctx.getOuterContext());
            }
        });
        registerService(Context.CONSUMER_IR_SERVICE, ConsumerIrManager.class, new CachedServiceFetcher<ConsumerIrManager>() { // from class: android.app.SystemServiceRegistry.82
            AnonymousClass82() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ConsumerIrManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new ConsumerIrManager(ctx);
            }
        });
        registerService(Context.TRUST_SERVICE, TrustManager.class, new StaticServiceFetcher<TrustManager>() { // from class: android.app.SystemServiceRegistry.83
            AnonymousClass83() {
            }

            @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
            public TrustManager createService() throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.TRUST_SERVICE);
                return new TrustManager(b);
            }
        });
        registerService(Context.FINGERPRINT_SERVICE, FingerprintManager.class, new CachedServiceFetcher<FingerprintManager>() { // from class: android.app.SystemServiceRegistry.84
            AnonymousClass84() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public FingerprintManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder binder;
                if (ctx.getApplicationInfo().targetSdkVersion >= 26) {
                    binder = ServiceManager.getServiceOrThrow(Context.FINGERPRINT_SERVICE);
                } else {
                    binder = ServiceManager.getService(Context.FINGERPRINT_SERVICE);
                }
                IFingerprintService service = IFingerprintService.Stub.asInterface(binder);
                return new FingerprintManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.FACE_SERVICE, FaceManager.class, new CachedServiceFetcher<FaceManager>() { // from class: android.app.SystemServiceRegistry.85
            AnonymousClass85() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public FaceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder binder;
                if (ctx.getApplicationInfo().targetSdkVersion >= 26) {
                    binder = ServiceManager.getServiceOrThrow(Context.FACE_SERVICE);
                } else {
                    binder = ServiceManager.getService(Context.FACE_SERVICE);
                }
                IFaceService service = IFaceService.Stub.asInterface(binder);
                return new FaceManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.IRIS_SERVICE, IrisManager.class, new CachedServiceFetcher<IrisManager>() { // from class: android.app.SystemServiceRegistry.86
            AnonymousClass86() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public IrisManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder binder = ServiceManager.getServiceOrThrow(Context.IRIS_SERVICE);
                IIrisService service = IIrisService.Stub.asInterface(binder);
                return new IrisManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.BIOMETRIC_SERVICE, BiometricManager.class, new CachedServiceFetcher<BiometricManager>() { // from class: android.app.SystemServiceRegistry.87
            AnonymousClass87() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public BiometricManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder binder = ServiceManager.getServiceOrThrow(Context.AUTH_SERVICE);
                IAuthService service = IAuthService.Stub.asInterface(binder);
                return new BiometricManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.TV_INTERACTIVE_APP_SERVICE, TvInteractiveAppManager.class, new CachedServiceFetcher<TvInteractiveAppManager>() { // from class: android.app.SystemServiceRegistry.88
            AnonymousClass88() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TvInteractiveAppManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder iBinder = ServiceManager.getServiceOrThrow(Context.TV_INTERACTIVE_APP_SERVICE);
                ITvInteractiveAppManager service = ITvInteractiveAppManager.Stub.asInterface(iBinder);
                return new TvInteractiveAppManager(service, ctx.getUserId());
            }
        });
        registerService(Context.TV_INPUT_SERVICE, TvInputManager.class, new CachedServiceFetcher<TvInputManager>() { // from class: android.app.SystemServiceRegistry.89
            AnonymousClass89() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TvInputManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder iBinder = ServiceManager.getServiceOrThrow(Context.TV_INPUT_SERVICE);
                ITvInputManager service = ITvInputManager.Stub.asInterface(iBinder);
                return new TvInputManager(service, ctx.getUserId());
            }
        });
        registerService(Context.TV_TUNER_RESOURCE_MGR_SERVICE, TunerResourceManager.class, new CachedServiceFetcher<TunerResourceManager>() { // from class: android.app.SystemServiceRegistry.90
            AnonymousClass90() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TunerResourceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder iBinder = ServiceManager.getServiceOrThrow(Context.TV_TUNER_RESOURCE_MGR_SERVICE);
                ITunerResourceManager service = ITunerResourceManager.Stub.asInterface(iBinder);
                return new TunerResourceManager(service, ctx.getUserId());
            }
        });
        registerService(Context.NETWORK_SCORE_SERVICE, NetworkScoreManager.class, new CachedServiceFetcher<NetworkScoreManager>() { // from class: android.app.SystemServiceRegistry.91
            AnonymousClass91() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public NetworkScoreManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new NetworkScoreManager(ctx);
            }
        });
        registerService(Context.USAGE_STATS_SERVICE, UsageStatsManager.class, new CachedServiceFetcher<UsageStatsManager>() { // from class: android.app.SystemServiceRegistry.92
            AnonymousClass92() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public UsageStatsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder iBinder = ServiceManager.getServiceOrThrow(Context.USAGE_STATS_SERVICE);
                IUsageStatsManager service = IUsageStatsManager.Stub.asInterface(iBinder);
                return new UsageStatsManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.PERSISTENT_DATA_BLOCK_SERVICE, PersistentDataBlockManager.class, new StaticServiceFetcher<PersistentDataBlockManager>() { // from class: android.app.SystemServiceRegistry.93
            AnonymousClass93() {
            }

            @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
            public PersistentDataBlockManager createService() throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.PERSISTENT_DATA_BLOCK_SERVICE);
                IPersistentDataBlockService persistentDataBlockService = IPersistentDataBlockService.Stub.asInterface(b);
                if (persistentDataBlockService != null) {
                    return new PersistentDataBlockManager(persistentDataBlockService);
                }
                return null;
            }
        });
        registerService(Context.OEM_LOCK_SERVICE, OemLockManager.class, new StaticServiceFetcher<OemLockManager>() { // from class: android.app.SystemServiceRegistry.94
            AnonymousClass94() {
            }

            @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
            public OemLockManager createService() throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.OEM_LOCK_SERVICE);
                IOemLockService oemLockService = IOemLockService.Stub.asInterface(b);
                if (oemLockService != null) {
                    return new OemLockManager(oemLockService);
                }
                return null;
            }
        });
        registerService(Context.MEDIA_PROJECTION_SERVICE, MediaProjectionManager.class, new CachedServiceFetcher<MediaProjectionManager>() { // from class: android.app.SystemServiceRegistry.95
            AnonymousClass95() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public MediaProjectionManager createService(ContextImpl ctx) {
                return new MediaProjectionManager(ctx);
            }
        });
        registerService(Context.APPWIDGET_SERVICE, AppWidgetManager.class, new CachedServiceFetcher<AppWidgetManager>() { // from class: android.app.SystemServiceRegistry.96
            AnonymousClass96() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AppWidgetManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.APPWIDGET_SERVICE);
                if (b == null) {
                    return null;
                }
                return new AppWidgetManager(ctx, IAppWidgetService.Stub.asInterface(b));
            }
        });
        registerService("midi", MidiManager.class, new CachedServiceFetcher<MidiManager>() { // from class: android.app.SystemServiceRegistry.97
            AnonymousClass97() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public MidiManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("midi");
                return new MidiManager(IMidiManager.Stub.asInterface(b));
            }
        });
        registerService(Context.RADIO_SERVICE, RadioManager.class, new CachedServiceFetcher<RadioManager>() { // from class: android.app.SystemServiceRegistry.98
            AnonymousClass98() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public RadioManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new RadioManager(ctx);
            }
        });
        registerService(Context.HARDWARE_PROPERTIES_SERVICE, HardwarePropertiesManager.class, new CachedServiceFetcher<HardwarePropertiesManager>() { // from class: android.app.SystemServiceRegistry.99
            AnonymousClass99() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public HardwarePropertiesManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.HARDWARE_PROPERTIES_SERVICE);
                IHardwarePropertiesManager service = IHardwarePropertiesManager.Stub.asInterface(b);
                return new HardwarePropertiesManager(ctx, service);
            }
        });
        registerService(Context.SOUND_TRIGGER_SERVICE, SoundTriggerManager.class, new CachedServiceFetcher<SoundTriggerManager>() { // from class: android.app.SystemServiceRegistry.100
            AnonymousClass100() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SoundTriggerManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.SOUND_TRIGGER_SERVICE);
                return new SoundTriggerManager(ctx, ISoundTriggerService.Stub.asInterface(b));
            }
        });
        registerService("shortcut", ShortcutManager.class, new CachedServiceFetcher<ShortcutManager>() { // from class: android.app.SystemServiceRegistry.101
            AnonymousClass101() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ShortcutManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("shortcut");
                return new ShortcutManager(ctx, IShortcutService.Stub.asInterface(b));
            }
        });
        registerService("overlay", OverlayManager.class, new CachedServiceFetcher<OverlayManager>() { // from class: android.app.SystemServiceRegistry.102
            AnonymousClass102() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public OverlayManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b;
                if (Compatibility.isChangeEnabled(OverlayManager.SELF_TARGETING_OVERLAY)) {
                    b = ServiceManager.getService("overlay");
                } else {
                    b = ServiceManager.getServiceOrThrow("overlay");
                }
                return new OverlayManager(ctx, IOverlayManager.Stub.asInterface(b));
            }
        });
        registerService(Context.NETWORK_WATCHLIST_SERVICE, NetworkWatchlistManager.class, new CachedServiceFetcher<NetworkWatchlistManager>() { // from class: android.app.SystemServiceRegistry.103
            AnonymousClass103() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public NetworkWatchlistManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.NETWORK_WATCHLIST_SERVICE);
                return new NetworkWatchlistManager(ctx, INetworkWatchlistManager.Stub.asInterface(b));
            }
        });
        registerService(Context.SYSTEM_HEALTH_SERVICE, SystemHealthManager.class, new CachedServiceFetcher<SystemHealthManager>() { // from class: android.app.SystemServiceRegistry.104
            AnonymousClass104() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SystemHealthManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("batterystats");
                return new SystemHealthManager(IBatteryStats.Stub.asInterface(b));
            }
        });
        registerService(Context.CONTEXTHUB_SERVICE, ContextHubManager.class, new CachedServiceFetcher<ContextHubManager>() { // from class: android.app.SystemServiceRegistry.105
            AnonymousClass105() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ContextHubManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new ContextHubManager(ctx.getOuterContext(), ctx.mMainThread.getHandler().getLooper());
            }
        });
        registerService(Context.INCIDENT_SERVICE, IncidentManager.class, new CachedServiceFetcher<IncidentManager>() { // from class: android.app.SystemServiceRegistry.106
            AnonymousClass106() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public IncidentManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new IncidentManager(ctx);
            }
        });
        registerService(Context.BUGREPORT_SERVICE, BugreportManager.class, new CachedServiceFetcher<BugreportManager>() { // from class: android.app.SystemServiceRegistry.107
            AnonymousClass107() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public BugreportManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.BUGREPORT_SERVICE);
                return new BugreportManager(ctx.getOuterContext(), IDumpstate.Stub.asInterface(b));
            }
        });
        registerService(Context.AUTOFILL_MANAGER_SERVICE, AutofillManager.class, new CachedServiceFetcher<AutofillManager>() { // from class: android.app.SystemServiceRegistry.108
            AnonymousClass108() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AutofillManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.AUTOFILL_MANAGER_SERVICE);
                IAutoFillManager service = IAutoFillManager.Stub.asInterface(b);
                return new AutofillManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.CREDENTIAL_SERVICE, CredentialManager.class, new CachedServiceFetcher<CredentialManager>() { // from class: android.app.SystemServiceRegistry.109
            AnonymousClass109() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public CredentialManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.CREDENTIAL_SERVICE);
                ICredentialManager service = ICredentialManager.Stub.asInterface(b);
                if (service != null) {
                    return new CredentialManager(ctx.getOuterContext(), service);
                }
                return null;
            }
        });
        registerService(Context.MUSIC_RECOGNITION_SERVICE, MusicRecognitionManager.class, new CachedServiceFetcher<MusicRecognitionManager>() { // from class: android.app.SystemServiceRegistry.110
            AnonymousClass110() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public MusicRecognitionManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.MUSIC_RECOGNITION_SERVICE);
                return new MusicRecognitionManager(IMusicRecognitionManager.Stub.asInterface(b));
            }
        });
        registerService(Context.CONTENT_CAPTURE_MANAGER_SERVICE, ContentCaptureManager.class, new CachedServiceFetcher<ContentCaptureManager>() { // from class: android.app.SystemServiceRegistry.111
            AnonymousClass111() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ContentCaptureManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                Context outerContext = ctx.getOuterContext();
                ContentCaptureOptions options = outerContext.getContentCaptureOptions();
                if (options == null) {
                    return null;
                }
                if (options.lite || options.isWhitelisted(outerContext)) {
                    IBinder b = ServiceManager.getService(Context.CONTENT_CAPTURE_MANAGER_SERVICE);
                    IContentCaptureManager service = IContentCaptureManager.Stub.asInterface(b);
                    if (service != null) {
                        return new ContentCaptureManager(outerContext, service, options);
                    }
                    return null;
                }
                return null;
            }
        });
        registerService(Context.TRANSLATION_MANAGER_SERVICE, TranslationManager.class, new CachedServiceFetcher<TranslationManager>() { // from class: android.app.SystemServiceRegistry.112
            AnonymousClass112() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TranslationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.TRANSLATION_MANAGER_SERVICE);
                ITranslationManager service = ITranslationManager.Stub.asInterface(b);
                if (service != null) {
                    return new TranslationManager(ctx.getOuterContext(), service);
                }
                return null;
            }
        });
        registerService(Context.UI_TRANSLATION_SERVICE, UiTranslationManager.class, new CachedServiceFetcher<UiTranslationManager>() { // from class: android.app.SystemServiceRegistry.113
            AnonymousClass113() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public UiTranslationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.TRANSLATION_MANAGER_SERVICE);
                ITranslationManager service = ITranslationManager.Stub.asInterface(b);
                if (service != null) {
                    return new UiTranslationManager(ctx.getOuterContext(), service);
                }
                return null;
            }
        });
        registerService(Context.SEARCH_UI_SERVICE, SearchUiManager.class, new CachedServiceFetcher<SearchUiManager>() { // from class: android.app.SystemServiceRegistry.114
            AnonymousClass114() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SearchUiManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.SEARCH_UI_SERVICE);
                if (b == null) {
                    return null;
                }
                return new SearchUiManager(ctx);
            }
        });
        registerService(Context.SMARTSPACE_SERVICE, SmartspaceManager.class, new CachedServiceFetcher<SmartspaceManager>() { // from class: android.app.SystemServiceRegistry.115
            AnonymousClass115() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SmartspaceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.SMARTSPACE_SERVICE);
                if (b == null) {
                    return null;
                }
                return new SmartspaceManager(ctx);
            }
        });
        registerService(Context.APP_PREDICTION_SERVICE, AppPredictionManager.class, new CachedServiceFetcher<AppPredictionManager>() { // from class: android.app.SystemServiceRegistry.116
            AnonymousClass116() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AppPredictionManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.APP_PREDICTION_SERVICE);
                if (b == null) {
                    return null;
                }
                return new AppPredictionManager(ctx);
            }
        });
        registerService(Context.CONTENT_SUGGESTIONS_SERVICE, ContentSuggestionsManager.class, new CachedServiceFetcher<ContentSuggestionsManager>() { // from class: android.app.SystemServiceRegistry.117
            AnonymousClass117() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ContentSuggestionsManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.CONTENT_SUGGESTIONS_SERVICE);
                IContentSuggestionsManager service = IContentSuggestionsManager.Stub.asInterface(b);
                return new ContentSuggestionsManager(ctx.getUserId(), service);
            }
        });
        registerService(Context.WALLPAPER_EFFECTS_GENERATION_SERVICE, WallpaperEffectsGenerationManager.class, new CachedServiceFetcher<WallpaperEffectsGenerationManager>() { // from class: android.app.SystemServiceRegistry.118
            AnonymousClass118() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public WallpaperEffectsGenerationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getService(Context.WALLPAPER_EFFECTS_GENERATION_SERVICE);
                if (b == null) {
                    return null;
                }
                return new WallpaperEffectsGenerationManager(IWallpaperEffectsGenerationManager.Stub.asInterface(b));
            }
        });
        registerService(Context.VR_SERVICE, VrManager.class, new CachedServiceFetcher<VrManager>() { // from class: android.app.SystemServiceRegistry.119
            AnonymousClass119() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public VrManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.VR_SERVICE);
                return new VrManager(IVrManager.Stub.asInterface(b));
            }
        });
        registerService(Context.CROSS_PROFILE_APPS_SERVICE, CrossProfileApps.class, new CachedServiceFetcher<CrossProfileApps>() { // from class: android.app.SystemServiceRegistry.120
            AnonymousClass120() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public CrossProfileApps createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.CROSS_PROFILE_APPS_SERVICE);
                return new CrossProfileApps(ctx.getOuterContext(), ICrossProfileApps.Stub.asInterface(b));
            }
        });
        registerService("slice", SliceManager.class, new CachedServiceFetcher<SliceManager>() { // from class: android.app.SystemServiceRegistry.121
            AnonymousClass121() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SliceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new SliceManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
            }
        });
        registerService(Context.SEM_WIFI_SERVICE, SemWifiManager.class, new CachedServiceFetcher<SemWifiManager>() { // from class: android.app.SystemServiceRegistry.122
            AnonymousClass122() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemWifiManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                ISemWifiManager service = ISemWifiManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.SEM_WIFI_SERVICE));
                return new SemWifiManager(ctx.getOuterContext(), service, ctx.mMainThread.getHandler().getLooper());
            }
        });
        registerService(Context.SEM_WIFI_P2P_SERVICE, SemWifiP2pManager.class, new CachedServiceFetcher<SemWifiP2pManager>() { // from class: android.app.SystemServiceRegistry.123
            AnonymousClass123() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemWifiP2pManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                ISemWifiP2pManager service = ISemWifiP2pManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.SEM_WIFI_P2P_SERVICE));
                return new SemWifiP2pManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.SEM_WIFI_AWARE_SERVICE, SemWifiAwareManager.class, new CachedServiceFetcher<SemWifiAwareManager>() { // from class: android.app.SystemServiceRegistry.124
            AnonymousClass124() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemWifiAwareManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                ISemWifiAwareManager service = ISemWifiAwareManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.SEM_WIFI_AWARE_SERVICE));
                return new SemWifiAwareManager(ctx.getOuterContext(), service);
            }
        });
        if (SemFloatingFeature.getInstance().getInt("SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY") > 0) {
            registerService(Context.SEM_CONTINUITY_SERVICE, SemContinuityManager.class, new CachedServiceFetcher<SemContinuityManager>() { // from class: android.app.SystemServiceRegistry.125
                AnonymousClass125() {
                }

                @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
                public SemContinuityManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                    IBinder binder = ServiceManager.getServiceOrThrow(Context.SEM_CONTINUITY_SERVICE);
                    ISemContinuityManager service = ISemContinuityManager.Stub.asInterface(binder);
                    return new SemContinuityManager(ctx.getOuterContext(), service, ctx.getUserId());
                }
            });
        }
        if (!"".equals(AudioTag.TAG_CAMERA)) {
            registerService(Context.SEM_HWRS_SERVICE, SemHwrsManager.class, new CachedServiceFetcher<SemHwrsManager>() { // from class: android.app.SystemServiceRegistry.126
                AnonymousClass126() {
                }

                @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
                public SemHwrsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                    IBinder binder = ServiceManager.getServiceOrThrow(Context.SEM_HWRS_SERVICE);
                    ISemHwrsManager service = ISemHwrsManager.Stub.asInterface(binder);
                    return new SemHwrsManager(ctx.getOuterContext(), service, ctx.getUserId());
                }
            });
        }
        String fmradioChipVendor = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR");
        if (fmradioChipVendor.length() > 0 && Integer.parseInt(fmradioChipVendor) > 0) {
            registerService(Context.SEM_FM_RADIO_SERVICE, SemFmPlayer.class, new CachedServiceFetcher<SemFmPlayer>() { // from class: android.app.SystemServiceRegistry.127
                AnonymousClass127() {
                }

                @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
                public SemFmPlayer createService(ContextImpl ctx) {
                    return new SemFmPlayer(ctx);
                }
            });
        }
        registerService(Context.SEM_MOTION_RECOGNITION_SERVICE, SemMotionRecognitionManager.class, new CachedServiceFetcher<SemMotionRecognitionManager>() { // from class: android.app.SystemServiceRegistry.128
            AnonymousClass128() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemMotionRecognitionManager createService(ContextImpl ctx) {
                return new SemMotionRecognitionManager(ctx.mMainThread.getHandler().getLooper());
            }
        });
        registerService("scontext", SContextManager.class, new CachedServiceFetcher<SContextManager>() { // from class: android.app.SystemServiceRegistry.129
            AnonymousClass129() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SContextManager createService(ContextImpl ctx) {
                return new SContextManager(ctx, ctx.mMainThread.getHandler().getLooper());
            }
        });
        registerService("time_detector", TimeDetector.class, new CachedServiceFetcher<TimeDetector>() { // from class: android.app.SystemServiceRegistry.130
            AnonymousClass130() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TimeDetector createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new TimeDetectorImpl();
            }
        });
        registerService("time_zone_detector", TimeZoneDetector.class, new CachedServiceFetcher<TimeZoneDetector>() { // from class: android.app.SystemServiceRegistry.131
            AnonymousClass131() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TimeZoneDetector createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new TimeZoneDetectorImpl();
            }
        });
        registerService(Context.TIME_MANAGER_SERVICE, TimeManager.class, new CachedServiceFetcher<TimeManager>() { // from class: android.app.SystemServiceRegistry.132
            AnonymousClass132() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TimeManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new TimeManager();
            }
        });
        registerService("permission", PermissionManager.class, new CachedServiceFetcher<PermissionManager>() { // from class: android.app.SystemServiceRegistry.133
            AnonymousClass133() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public PermissionManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new PermissionManager(ctx.getOuterContext());
            }
        });
        registerService(Context.LEGACY_PERMISSION_SERVICE, LegacyPermissionManager.class, new CachedServiceFetcher<LegacyPermissionManager>() { // from class: android.app.SystemServiceRegistry.134
            AnonymousClass134() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public LegacyPermissionManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new LegacyPermissionManager();
            }
        });
        registerService(Context.PERMISSION_CONTROLLER_SERVICE, PermissionControllerManager.class, new CachedServiceFetcher<PermissionControllerManager>() { // from class: android.app.SystemServiceRegistry.135
            AnonymousClass135() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public PermissionControllerManager createService(ContextImpl ctx) {
                return new PermissionControllerManager(ctx.getOuterContext(), ctx.getMainThreadHandler());
            }
        });
        registerService(Context.PERMISSION_CHECKER_SERVICE, PermissionCheckerManager.class, new CachedServiceFetcher<PermissionCheckerManager>() { // from class: android.app.SystemServiceRegistry.136
            AnonymousClass136() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public PermissionCheckerManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new PermissionCheckerManager(ctx.getOuterContext());
            }
        });
        registerService(Context.PERMISSION_ENFORCER_SERVICE, PermissionEnforcer.class, new CachedServiceFetcher<PermissionEnforcer>() { // from class: android.app.SystemServiceRegistry.137
            AnonymousClass137() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public PermissionEnforcer createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new PermissionEnforcer(ctx.getOuterContext());
            }
        });
        registerService(Context.DYNAMIC_SYSTEM_SERVICE, DynamicSystemManager.class, new CachedServiceFetcher<DynamicSystemManager>() { // from class: android.app.SystemServiceRegistry.138
            AnonymousClass138() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DynamicSystemManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.DYNAMIC_SYSTEM_SERVICE);
                return new DynamicSystemManager(IDynamicSystemService.Stub.asInterface(b));
            }
        });
        registerService("batterystats", BatteryStatsManager.class, new CachedServiceFetcher<BatteryStatsManager>() { // from class: android.app.SystemServiceRegistry.139
            AnonymousClass139() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public BatteryStatsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow("batterystats");
                return new BatteryStatsManager(IBatteryStats.Stub.asInterface(b));
            }
        });
        registerService(Context.DATA_LOADER_MANAGER_SERVICE, DataLoaderManager.class, new CachedServiceFetcher<DataLoaderManager>() { // from class: android.app.SystemServiceRegistry.140
            AnonymousClass140() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DataLoaderManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.DATA_LOADER_MANAGER_SERVICE);
                return new DataLoaderManager(IDataLoaderManager.Stub.asInterface(b));
            }
        });
        registerService(Context.LIGHTS_SERVICE, LightsManager.class, new CachedServiceFetcher<LightsManager>() { // from class: android.app.SystemServiceRegistry.141
            AnonymousClass141() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public LightsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new SystemLightsManager(ctx);
            }
        });
        registerService("locale", LocaleManager.class, new CachedServiceFetcher<LocaleManager>() { // from class: android.app.SystemServiceRegistry.142
            AnonymousClass142() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public LocaleManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new LocaleManager(ctx, ILocaleManager.Stub.asInterface(ServiceManager.getServiceOrThrow("locale")));
            }
        });
        registerService(Context.INCREMENTAL_SERVICE, IncrementalManager.class, new CachedServiceFetcher<IncrementalManager>() { // from class: android.app.SystemServiceRegistry.143
            AnonymousClass143() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public IncrementalManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.INCREMENTAL_SERVICE);
                if (b == null) {
                    return null;
                }
                return new IncrementalManager(IIncrementalService.Stub.asInterface(b));
            }
        });
        registerService(Context.FILE_INTEGRITY_SERVICE, FileIntegrityManager.class, new CachedServiceFetcher<FileIntegrityManager>() { // from class: android.app.SystemServiceRegistry.144
            AnonymousClass144() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public FileIntegrityManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.FILE_INTEGRITY_SERVICE);
                return new FileIntegrityManager(ctx.getOuterContext(), IFileIntegrityService.Stub.asInterface(b));
            }
        });
        registerService(Context.ATTESTATION_VERIFICATION_SERVICE, AttestationVerificationManager.class, new CachedServiceFetcher<AttestationVerificationManager>() { // from class: android.app.SystemServiceRegistry.145
            AnonymousClass145() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AttestationVerificationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.ATTESTATION_VERIFICATION_SERVICE);
                return new AttestationVerificationManager(ctx.getOuterContext(), IAttestationVerificationManagerService.Stub.asInterface(b));
            }
        });
        registerService(Context.APP_INTEGRITY_SERVICE, AppIntegrityManager.class, new CachedServiceFetcher<AppIntegrityManager>() { // from class: android.app.SystemServiceRegistry.146
            AnonymousClass146() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AppIntegrityManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder b = ServiceManager.getServiceOrThrow(Context.APP_INTEGRITY_SERVICE);
                return new AppIntegrityManager(IAppIntegrityManager.Stub.asInterface(b));
            }
        });
        registerService(Context.APP_HIBERNATION_SERVICE, AppHibernationManager.class, new CachedServiceFetcher<AppHibernationManager>() { // from class: android.app.SystemServiceRegistry.147
            AnonymousClass147() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AppHibernationManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.APP_HIBERNATION_SERVICE);
                if (b == null) {
                    return null;
                }
                return new AppHibernationManager(ctx);
            }
        });
        registerService("dream", DreamManager.class, new CachedServiceFetcher<DreamManager>() { // from class: android.app.SystemServiceRegistry.148
            AnonymousClass148() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DreamManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new DreamManager(ctx);
            }
        });
        registerService(Context.DEVICE_STATE_SERVICE, DeviceStateManager.class, new CachedServiceFetcher<DeviceStateManager>() { // from class: android.app.SystemServiceRegistry.149
            AnonymousClass149() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DeviceStateManager createService(ContextImpl ctx) {
                return new DeviceStateManager();
            }
        });
        registerService(Context.COCKTAIL_BAR_SERVICE, CocktailBarManager.class, new CachedServiceFetcher<CocktailBarManager>() { // from class: android.app.SystemServiceRegistry.150
            AnonymousClass150() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public CocktailBarManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.COCKTAIL_BAR_SERVICE);
                return new CocktailBarManager(ctx, ICocktailBarService.Stub.asInterface(b));
            }
        });
        registerService(Context.MEDIA_METRICS_SERVICE, MediaMetricsManager.class, new CachedServiceFetcher<MediaMetricsManager>() { // from class: android.app.SystemServiceRegistry.151
            AnonymousClass151() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public MediaMetricsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder iBinder = ServiceManager.getServiceOrThrow(Context.MEDIA_METRICS_SERVICE);
                IMediaMetricsManager service = IMediaMetricsManager.Stub.asInterface(iBinder);
                return new MediaMetricsManager(service, ctx.getUserId());
            }
        });
        registerService(Context.GAME_SERVICE, GameManager.class, new CachedServiceFetcher<GameManager>() { // from class: android.app.SystemServiceRegistry.152
            AnonymousClass152() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public GameManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new GameManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
            }
        });
        registerService(Context.DOMAIN_VERIFICATION_SERVICE, DomainVerificationManager.class, new CachedServiceFetcher<DomainVerificationManager>() { // from class: android.app.SystemServiceRegistry.153
            AnonymousClass153() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DomainVerificationManager createService(ContextImpl context) throws ServiceManager.ServiceNotFoundException {
                IBinder binder = ServiceManager.getServiceOrThrow(Context.DOMAIN_VERIFICATION_SERVICE);
                IDomainVerificationManager service = IDomainVerificationManager.Stub.asInterface(binder);
                return new DomainVerificationManager(context, service);
            }
        });
        registerService(Context.DISPLAY_HASH_SERVICE, DisplayHashManager.class, new CachedServiceFetcher<DisplayHashManager>() { // from class: android.app.SystemServiceRegistry.154
            AnonymousClass154() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public DisplayHashManager createService(ContextImpl ctx) {
                return new DisplayHashManager();
            }
        });
        boolean isExynosDisplaySolutionService = false;
        try {
            isExynosDisplaySolutionService = Resources.getSystem().getBoolean(R.bool.config_enableExynosDisplaySolutionService);
        } catch (Exception e) {
            Slog.e(TAG, "Not starting ExynosDisplaySolutionService", e);
        }
        if (isExynosDisplaySolutionService) {
            registerService(Context.EXYNOS_DISPLAY_SOLUTION_SERVICE, ExynosDisplaySolutionManager.class, new CachedServiceFetcher<ExynosDisplaySolutionManager>() { // from class: android.app.SystemServiceRegistry.155
                AnonymousClass155() {
                }

                @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
                public ExynosDisplaySolutionManager createService(ContextImpl ctx) {
                    IBinder b = ServiceManager.getService(Context.EXYNOS_DISPLAY_SOLUTION_SERVICE);
                    IExynosDisplaySolutionManager service = IExynosDisplaySolutionManager.Stub.asInterface(b);
                    if (service == null) {
                        Log.e(SystemServiceRegistry.TAG, "Failed to get ExynosDisplaySolution Manager Service.");
                        return null;
                    }
                    return new ExynosDisplaySolutionManager(service);
                }
            });
        }
        registerService(Context.AMBIENT_CONTEXT_SERVICE, AmbientContextManager.class, new CachedServiceFetcher<AmbientContextManager>() { // from class: android.app.SystemServiceRegistry.156
            AnonymousClass156() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public AmbientContextManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder iBinder = ServiceManager.getServiceOrThrow(Context.AMBIENT_CONTEXT_SERVICE);
                IAmbientContextManager manager = IAmbientContextManager.Stub.asInterface(iBinder);
                return new AmbientContextManager(ctx.getOuterContext(), manager);
            }
        });
        registerService(Context.WEARABLE_SENSING_SERVICE, WearableSensingManager.class, new CachedServiceFetcher<WearableSensingManager>() { // from class: android.app.SystemServiceRegistry.157
            AnonymousClass157() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public WearableSensingManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IBinder iBinder = ServiceManager.getServiceOrThrow(Context.WEARABLE_SENSING_SERVICE);
                IWearableSensingManager manager = IWearableSensingManager.Stub.asInterface(iBinder);
                return new WearableSensingManager(ctx.getOuterContext(), manager);
            }
        });
        registerService(Context.GRAMMATICAL_INFLECTION_SERVICE, GrammaticalInflectionManager.class, new CachedServiceFetcher<GrammaticalInflectionManager>() { // from class: android.app.SystemServiceRegistry.158
            AnonymousClass158() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public GrammaticalInflectionManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                return new GrammaticalInflectionManager(ctx, IGrammaticalInflectionManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.GRAMMATICAL_INFLECTION_SERVICE)));
            }
        });
        registerService(Context.SHARED_CONNECTIVITY_SERVICE, SharedConnectivityManager.class, new CachedServiceFetcher<SharedConnectivityManager>() { // from class: android.app.SystemServiceRegistry.159
            AnonymousClass159() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SharedConnectivityManager createService(ContextImpl ctx) {
                return SharedConnectivityManager.create(ctx);
            }
        });
        registerService(Context.SEM_MULTI_CONTROL_SERVICE, SemMultiControlManager.class, new CachedServiceFetcher<SemMultiControlManager>() { // from class: android.app.SystemServiceRegistry.160
            AnonymousClass160() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemMultiControlManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.SEM_MULTI_CONTROL_SERVICE);
                IMultiControlManager service = IMultiControlManager.Stub.asInterface(b);
                if (service == null) {
                    Log.e(SystemServiceRegistry.TAG, "SemMultiControlManager is not supported");
                    return null;
                }
                return new SemMultiControlManager(ctx.getOuterContext(), service);
            }
        });
        registerService("persona", SemPersonaManager.class, new CachedServiceFetcher<SemPersonaManager>() { // from class: android.app.SystemServiceRegistry.161
            AnonymousClass161() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemPersonaManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService("persona");
                ISemPersonaManager service = ISemPersonaManager.Stub.asInterface(b);
                return new SemPersonaManager(ctx, service);
            }
        });
        registerService("rcp", SemRemoteContentManager.class, new CachedServiceFetcher<SemRemoteContentManager>() { // from class: android.app.SystemServiceRegistry.162
            AnonymousClass162() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemRemoteContentManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService("rcp");
                return new SemRemoteContentManager(ISemRemoteContentManager.Stub.asInterface(b));
            }
        });
        registerService(Context.ISRB_MANAGER_SERVICE, IsrbManager.class, new CachedServiceFetcher<IsrbManager>() { // from class: android.app.SystemServiceRegistry.163
            AnonymousClass163() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public IsrbManager createService(ContextImpl ctx) {
                return new IsrbManager(ctx);
            }
        });
        registerService(Context.SEM_REMOTE_APP_MODE_SERVICE, SemRemoteAppModeManager.class, new CachedServiceFetcher<SemRemoteAppModeManager>() { // from class: android.app.SystemServiceRegistry.164
            AnonymousClass164() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemRemoteAppModeManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.SEM_REMOTE_APP_MODE_SERVICE);
                IRemoteAppMode service = IRemoteAppMode.Stub.asInterface(b);
                if (service == null) {
                    Log.e(SystemServiceRegistry.TAG, "SemRemoteAppModeManager is not supported");
                    return null;
                }
                return new SemRemoteAppModeManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.SEM_MDNIE_SERVICE, SemMdnieManager.class, new CachedServiceFetcher<SemMdnieManager>() { // from class: android.app.SystemServiceRegistry.165
            AnonymousClass165() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemMdnieManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.SEM_MDNIE_SERVICE);
                ISemMdnieManager service = ISemMdnieManager.Stub.asInterface(b);
                return new SemMdnieManager(service);
            }
        });
        registerService(Context.SEM_DISPLAY_SOLUTION_SERVICE, SemDisplaySolutionManager.class, new CachedServiceFetcher<SemDisplaySolutionManager>() { // from class: android.app.SystemServiceRegistry.166
            AnonymousClass166() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemDisplaySolutionManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.SEM_DISPLAY_SOLUTION_SERVICE);
                ISemDisplaySolutionManager service = ISemDisplaySolutionManager.Stub.asInterface(b);
                return new SemDisplaySolutionManager(service);
            }
        });
        Log.e(TAG, "SemDisplayQualityFeature.ENABLED:" + SemDisplayQualityFeature.ENABLED + ",PLATFORM:" + SemDisplayQualityFeature.PLATFORM);
        if (SemDisplayQualityFeature.ENABLED) {
            registerService(Context.SEM_DISPLAY_QUALITY_SERVICE, SemDisplayQualityManager.class, new CachedServiceFetcher<SemDisplayQualityManager>() { // from class: android.app.SystemServiceRegistry.167
                AnonymousClass167() {
                }

                @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
                public SemDisplayQualityManager createService(ContextImpl ctx) {
                    IBinder b = ServiceManager.getService(Context.SEM_DISPLAY_QUALITY_SERVICE);
                    ISemDisplayQualityManager service = ISemDisplayQualityManager.Stub.asInterface(b);
                    return new SemDisplayQualityManager(service);
                }
            });
        }
        registerService(Context.SEM_INPUT_DEVICE_SERVICE, SemInputDeviceManager.class, new CachedServiceFetcher<SemInputDeviceManager>() { // from class: android.app.SystemServiceRegistry.168
            AnonymousClass168() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemInputDeviceManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.SEM_INPUT_DEVICE_SERVICE);
                ISemInputDeviceManager service = ISemInputDeviceManager.Stub.asInterface(b);
                return new SemInputDeviceManager(service);
            }
        });
        if (UnionUtils.FEATURE_ENABLED) {
            registerService(Context.SEP_UNION_SERVICE, SemUnionManager.class, new CachedServiceFetcher<SemUnionManager>() { // from class: android.app.SystemServiceRegistry.169
                AnonymousClass169() {
                }

                @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
                public SemUnionManager createService(ContextImpl ctx) {
                    IBinder b = ServiceManager.getService(Context.SEP_UNION_SERVICE);
                    return new SemUnionManager(ctx, IUnionManager.Stub.asInterface(b));
                }
            });
        }
        registerService(Context.SEM_VIDEO_TRANSCODING_SERVICE, SemVideoTranscodingService.class, new CachedServiceFetcher<SemVideoTranscodingService>() { // from class: android.app.SystemServiceRegistry.170
            AnonymousClass170() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemVideoTranscodingService createService(ContextImpl ctx) {
                return new SemVideoTranscodingService();
            }
        });
        registerService(Context.SEM_DESKTOP_MODE_SERVICE, SemDesktopModeManager.class, new CachedServiceFetcher<SemDesktopModeManager>() { // from class: android.app.SystemServiceRegistry.171
            AnonymousClass171() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemDesktopModeManager createService(ContextImpl ctx) {
                IBinder b = ServiceManager.getService(Context.SEM_DESKTOP_MODE_SERVICE);
                IDesktopMode service = IDesktopMode.Stub.asInterface(b);
                if (service == null) {
                    Log.e(SystemServiceRegistry.TAG, "SemDesktopModeManager is not supported");
                    return null;
                }
                return new SemDesktopModeManager(ctx.getOuterContext(), service);
            }
        });
        registerService(Context.CODEC_SOLUTION_SERVICE, SemCodecSolutionService.class, new CachedServiceFetcher<SemCodecSolutionService>() { // from class: android.app.SystemServiceRegistry.172
            AnonymousClass172() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SemCodecSolutionService createService(ContextImpl ctx) {
                return new SemCodecSolutionService();
            }
        });
        registerService(Context.EXTENDED_ETHERNET_SERVICE, ExtendedEthernetManager.class, new CachedServiceFetcher<ExtendedEthernetManager>() { // from class: android.app.SystemServiceRegistry.173
            AnonymousClass173() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public ExtendedEthernetManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                IExtendedEthernetManager service = IExtendedEthernetManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.EXTENDED_ETHERNET_SERVICE));
                return new ExtendedEthernetManager(service);
            }
        });
        registerService(Context.SEM_SPEN_GESTURE_SERVICE, SpenGestureManager.class, new CachedServiceFetcher<SpenGestureManager>() { // from class: android.app.SystemServiceRegistry.174
            AnonymousClass174() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public SpenGestureManager createService(ContextImpl ctx) {
                return new SpenGestureManager(ctx);
            }
        });
        if (CoreRune.SYSFW_APP_PREL) {
            registerService(Context.PRELAUNCHER_SERVICE, AppPrelaunchManager.class, new CachedServiceFetcher<AppPrelaunchManager>() { // from class: android.app.SystemServiceRegistry.176
                AnonymousClass176() {
                }

                @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
                public AppPrelaunchManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
                    IBinder iBinder = ServiceManager.getServiceOrThrow(Context.PRELAUNCHER_SERVICE);
                    IAppPrelaunchService service = IAppPrelaunchService.Stub.asInterface(iBinder);
                    return new AppPrelaunchManager(service);
                }
            });
        }
        sInitializing = true;
        try {
            ConnectivityFrameworkInitializer.registerServiceWrappers();
            JobSchedulerFrameworkInitializer.registerServiceWrappers();
            BlobStoreManagerFrameworkInitializer.initialize();
            BluetoothFrameworkInitializer.registerServiceWrappers();
            NfcFrameworkInitializer.registerServiceWrappers();
            TelephonyFrameworkInitializer.registerServiceWrappers();
            AppSearchManagerFrameworkInitializer.initialize();
            HealthServicesInitializer.registerServiceWrappers();
            WifiFrameworkInitializer.registerServiceWrappers();
            StatsFrameworkInitializer.registerServiceWrappers();
            RollbackManagerFrameworkInitializer.initialize();
            MediaFrameworkPlatformInitializer.registerServiceWrappers();
            MediaFrameworkInitializer.registerServiceWrappers();
            RoleFrameworkInitializer.registerServiceWrappers();
            SchedulingFrameworkInitializer.registerServiceWrappers();
            SdkSandboxManagerFrameworkInitializer.registerServiceWrappers();
            AdServicesFrameworkInitializer.registerServiceWrappers();
            UwbFrameworkInitializer.registerServiceWrappers();
            SafetyCenterFrameworkInitializer.registerServiceWrappers();
            ConnectivityFrameworkInitializerTiramisu.registerServiceWrappers();
            NearbyFrameworkInitializer.registerServiceWrappers();
            OnDevicePersonalizationFrameworkInitializer.registerServiceWrappers();
            DeviceLockFrameworkInitializer.registerServiceWrappers();
            VirtualizationFrameworkInitializer.registerServiceWrappers();
            ShellFrameworkInitializer.registerServiceWrappers();
            LifeGuardManagerFrameworkInitializer.initialize();
        } finally {
            sInitializing = false;
        }
    }

    private SystemServiceRegistry() {
    }

    /* renamed from: android.app.SystemServiceRegistry$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends CachedServiceFetcher<AccessibilityManager> {
        AnonymousClass1() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AccessibilityManager createService(ContextImpl ctx) {
            return AccessibilityManager.getInstance(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$2 */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends CachedServiceFetcher<CaptioningManager> {
        AnonymousClass2() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public CaptioningManager createService(ContextImpl ctx) {
            return new CaptioningManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$3 */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends CachedServiceFetcher<AccountManager> {
        AnonymousClass3() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AccountManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("account");
            IAccountManager service = IAccountManager.Stub.asInterface(b);
            return new AccountManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$4 */
    /* loaded from: classes.dex */
    class AnonymousClass4 extends CachedServiceFetcher<ActivityManager> {
        AnonymousClass4() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ActivityManager createService(ContextImpl ctx) {
            return new ActivityManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$5 */
    /* loaded from: classes.dex */
    class AnonymousClass5 extends CachedServiceFetcher<ActivityTaskManager> {
        AnonymousClass5() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ActivityTaskManager createService(ContextImpl ctx) {
            return ActivityTaskManager.getInstance();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$6 */
    /* loaded from: classes.dex */
    class AnonymousClass6 extends CachedServiceFetcher<UriGrantsManager> {
        AnonymousClass6() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public UriGrantsManager createService(ContextImpl ctx) {
            return new UriGrantsManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$7 */
    /* loaded from: classes.dex */
    class AnonymousClass7 extends CachedServiceFetcher<AlarmManager> {
        AnonymousClass7() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AlarmManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("alarm");
            IAlarmManager service = IAlarmManager.Stub.asInterface(b);
            return new AlarmManager(service, ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$8 */
    /* loaded from: classes.dex */
    class AnonymousClass8 extends CachedServiceFetcher<AudioManager> {
        AnonymousClass8() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AudioManager createService(ContextImpl ctx) {
            return new AudioManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$9 */
    /* loaded from: classes.dex */
    class AnonymousClass9 extends CachedServiceFetcher<AudioDeviceVolumeManager> {
        AnonymousClass9() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AudioDeviceVolumeManager createService(ContextImpl ctx) {
            return new AudioDeviceVolumeManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$10 */
    /* loaded from: classes.dex */
    class AnonymousClass10 extends CachedServiceFetcher<MediaRouter> {
        AnonymousClass10() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public MediaRouter createService(ContextImpl ctx) {
            return new MediaRouter(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$11 */
    /* loaded from: classes.dex */
    class AnonymousClass11 extends CachedServiceFetcher<CustomFrequencyManager> {
        AnonymousClass11() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public CustomFrequencyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.CFMS_SERVICE);
            ICustomFrequencyManager service = ICustomFrequencyManager.Stub.asInterface(b);
            if (service == null) {
                Log.wtf(SystemServiceRegistry.TAG, "Failed to get custom frequency manager service.");
            }
            return new CustomFrequencyManager(service, ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$12 */
    /* loaded from: classes.dex */
    class AnonymousClass12 extends CachedServiceFetcher<IntegrityControlCheckCenter> {
        AnonymousClass12() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public IntegrityControlCheckCenter createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.ICCC_SERVICE);
            return new IntegrityControlCheckCenter(IIntegrityControlCheckCenter.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$14 */
    /* loaded from: classes.dex */
    class AnonymousClass14 extends StaticServiceFetcher<HdmiControlManager> {
        AnonymousClass14() {
        }

        @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
        public HdmiControlManager createService() throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.HDMI_CONTROL_SERVICE);
            return new HdmiControlManager(IHdmiControlService.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$15 */
    /* loaded from: classes.dex */
    class AnonymousClass15 extends CachedServiceFetcher<TextClassificationManager> {
        AnonymousClass15() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TextClassificationManager createService(ContextImpl ctx) {
            return new TextClassificationManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$16 */
    /* loaded from: classes.dex */
    class AnonymousClass16 extends CachedServiceFetcher<SelectionToolbarManager> {
        AnonymousClass16() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SelectionToolbarManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.SELECTION_TOOLBAR_SERVICE);
            return new SelectionToolbarManager(ctx.getOuterContext(), ISelectionToolbarManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$17 */
    /* loaded from: classes.dex */
    class AnonymousClass17 extends CachedServiceFetcher<FontManager> {
        AnonymousClass17() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public FontManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.FONT_SERVICE);
            return FontManager.create(IFontManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$18 */
    /* loaded from: classes.dex */
    class AnonymousClass18 extends CachedServiceFetcher<ClipboardManager> {
        AnonymousClass18() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ClipboardManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new ClipboardManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$19 */
    /* loaded from: classes.dex */
    class AnonymousClass19 extends CachedServiceFetcher<SemClipboardManager> {
        AnonymousClass19() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemClipboardManager createService(ContextImpl ctx) {
            return new SemClipboardManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$20 */
    /* loaded from: classes.dex */
    class AnonymousClass20 extends CachedServiceFetcher<PacProxyManager> {
        AnonymousClass20() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public PacProxyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.PAC_PROXY_SERVICE);
            IPacProxyManager service = IPacProxyManager.Stub.asInterface(b);
            return new PacProxyManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$21 */
    /* loaded from: classes.dex */
    class AnonymousClass21 extends StaticServiceFetcher<IBinder> {
        AnonymousClass21() {
        }

        @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
        public IBinder createService() throws ServiceManager.ServiceNotFoundException {
            return ServiceManager.getServiceOrThrow(Context.NETD_SERVICE);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$22 */
    /* loaded from: classes.dex */
    class AnonymousClass22 extends CachedServiceFetcher<TetheringManager> {
        AnonymousClass22() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TetheringManager createService(ContextImpl ctx) {
            return new TetheringManager(ctx, new Supplier() { // from class: android.app.SystemServiceRegistry$22$$ExternalSyntheticLambda0
                @Override // java.util.function.Supplier
                public final Object get() {
                    IBinder service;
                    service = ServiceManager.getService(Context.TETHERING_SERVICE);
                    return service;
                }
            });
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$23 */
    /* loaded from: classes.dex */
    class AnonymousClass23 extends CachedServiceFetcher<VpnManager> {
        AnonymousClass23() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public VpnManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.VPN_MANAGEMENT_SERVICE);
            IVpnManager service = IVpnManager.Stub.asInterface(b);
            return new VpnManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$24 */
    /* loaded from: classes.dex */
    class AnonymousClass24 extends CachedServiceFetcher<VcnManager> {
        AnonymousClass24() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public VcnManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.VCN_MANAGEMENT_SERVICE);
            IVcnManagementService service = IVcnManagementService.Stub.asInterface(b);
            return new VcnManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$25 */
    /* loaded from: classes.dex */
    class AnonymousClass25 extends StaticServiceFetcher<CountryDetector> {
        AnonymousClass25() {
        }

        @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
        public CountryDetector createService() throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.COUNTRY_DETECTOR);
            return new CountryDetector(ICountryDetector.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$26 */
    /* loaded from: classes.dex */
    class AnonymousClass26 extends CachedServiceFetcher<DevicePolicyManager> {
        AnonymousClass26() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DevicePolicyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.DEVICE_POLICY_SERVICE);
            return new DevicePolicyManager(ctx, IDevicePolicyManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$27 */
    /* loaded from: classes.dex */
    class AnonymousClass27 extends CachedServiceFetcher<DownloadManager> {
        AnonymousClass27() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DownloadManager createService(ContextImpl ctx) {
            return new DownloadManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$28 */
    /* loaded from: classes.dex */
    class AnonymousClass28 extends CachedServiceFetcher<SemHqmManager> {
        AnonymousClass28() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemHqmManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.HQM_SERVICE);
            ISemHqmManager service = ISemHqmManager.Stub.asInterface(b);
            if (service == null) {
                Log.e(SystemServiceRegistry.TAG, "Failed to get Hqm manager service.");
                return null;
            }
            return new SemHqmManager(service, ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$29 */
    /* loaded from: classes.dex */
    class AnonymousClass29 extends CachedServiceFetcher<SemHcmManager> {
        AnonymousClass29() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemHcmManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.HCM_SERVICE);
            ISemHcmManager service = ISemHcmManager.Stub.asInterface(b);
            if (service == null) {
                Log.e(SystemServiceRegistry.TAG, "Failed to get Hcm manager service.");
                return null;
            }
            return new SemHcmManager(service, ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$30 */
    /* loaded from: classes.dex */
    class AnonymousClass30 extends CachedServiceFetcher<BatteryManager> {
        AnonymousClass30() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public BatteryManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBatteryStats stats = IBatteryStats.Stub.asInterface(ServiceManager.getServiceOrThrow("batterystats"));
            IBatteryPropertiesRegistrar registrar = IBatteryPropertiesRegistrar.Stub.asInterface(ServiceManager.getServiceOrThrow("batteryproperties"));
            return new BatteryManager(ctx, stats, registrar);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$31 */
    /* loaded from: classes.dex */
    class AnonymousClass31 extends CachedServiceFetcher<DropBoxManager> {
        AnonymousClass31() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DropBoxManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.DROPBOX_SERVICE);
            IDropBoxManagerService service = IDropBoxManagerService.Stub.asInterface(b);
            return new DropBoxManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$32 */
    /* loaded from: classes.dex */
    class AnonymousClass32 extends CachedServiceFetcher<BinaryTransparencyManager> {
        AnonymousClass32() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public BinaryTransparencyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("transparency");
            IBinaryTransparencyService service = IBinaryTransparencyService.Stub.asInterface(b);
            return new BinaryTransparencyManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$33 */
    /* loaded from: classes.dex */
    class AnonymousClass33 extends CachedServiceFetcher<InputManager> {
        AnonymousClass33() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public InputManager createService(ContextImpl ctx) {
            return new InputManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$34 */
    /* loaded from: classes.dex */
    class AnonymousClass34 extends CachedServiceFetcher<DisplayManager> {
        AnonymousClass34() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DisplayManager createService(ContextImpl ctx) {
            return new DisplayManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$35 */
    /* loaded from: classes.dex */
    class AnonymousClass35 extends CachedServiceFetcher<ColorDisplayManager> {
        AnonymousClass35() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ColorDisplayManager createService(ContextImpl ctx) {
            return new ColorDisplayManager();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$36 */
    /* loaded from: classes.dex */
    class AnonymousClass36 implements ServiceFetcher<InputMethodManager> {
        AnonymousClass36() {
        }

        @Override // android.app.SystemServiceRegistry.ServiceFetcher
        public InputMethodManager getService(ContextImpl ctx) {
            return InputMethodManager.forContext(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$37 */
    /* loaded from: classes.dex */
    class AnonymousClass37 extends CachedServiceFetcher<TextServicesManager> {
        AnonymousClass37() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TextServicesManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return TextServicesManager.createInstance(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$38 */
    /* loaded from: classes.dex */
    class AnonymousClass38 extends CachedServiceFetcher<KeyguardManager> {
        AnonymousClass38() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public KeyguardManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new KeyguardManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$39 */
    /* loaded from: classes.dex */
    class AnonymousClass39 extends CachedServiceFetcher<LayoutInflater> {
        AnonymousClass39() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public LayoutInflater createService(ContextImpl ctx) {
            return new PhoneLayoutInflater(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$40 */
    /* loaded from: classes.dex */
    class AnonymousClass40 extends CachedServiceFetcher<LocationManager> {
        AnonymousClass40() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public LocationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("location");
            return new LocationManager(ctx, ILocationManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$41 */
    /* loaded from: classes.dex */
    class AnonymousClass41 extends CachedServiceFetcher<SemLocationManager> {
        AnonymousClass41() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemLocationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            Log.e(SystemServiceRegistry.TAG, "create SemLocationManager service");
            IBinder b = ServiceManager.getService(Context.SEM_LOCATION_SERVICE);
            return new SemLocationManager(ctx, ISLocationManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$42 */
    /* loaded from: classes.dex */
    class AnonymousClass42 extends CachedServiceFetcher<NetworkPolicyManager> {
        AnonymousClass42() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public NetworkPolicyManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new NetworkPolicyManager(ctx, INetworkPolicyManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.NETWORK_POLICY_SERVICE)));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$43 */
    /* loaded from: classes.dex */
    class AnonymousClass43 extends CachedServiceFetcher<NotificationManager> {
        AnonymousClass43() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public NotificationManager createService(ContextImpl ctx) {
            Context outerContext = ctx.getOuterContext();
            return new NotificationManager(new ContextThemeWrapper(outerContext, Resources.selectSystemTheme(0, outerContext.getApplicationInfo().targetSdkVersion, 16973835, 16973935, 16974126, 16974130)), ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$44 */
    /* loaded from: classes.dex */
    class AnonymousClass44 extends CachedServiceFetcher<PeopleManager> {
        AnonymousClass44() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public PeopleManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new PeopleManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$45 */
    /* loaded from: classes.dex */
    class AnonymousClass45 extends CachedServiceFetcher<PowerManager> {
        AnonymousClass45() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public PowerManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder powerBinder = ServiceManager.getServiceOrThrow("power");
            IPowerManager powerService = IPowerManager.Stub.asInterface(powerBinder);
            IBinder thermalBinder = ServiceManager.getServiceOrThrow(Context.THERMAL_SERVICE);
            IThermalService thermalService = IThermalService.Stub.asInterface(thermalBinder);
            return new PowerManager(ctx.getOuterContext(), powerService, thermalService, ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$47 */
    /* loaded from: classes.dex */
    class AnonymousClass47 extends CachedServiceFetcher<PerformanceHintManager> {
        AnonymousClass47() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public PerformanceHintManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return PerformanceHintManager.create();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$48 */
    /* loaded from: classes.dex */
    class AnonymousClass48 extends CachedServiceFetcher<RecoverySystem> {
        AnonymousClass48() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public RecoverySystem createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("recovery");
            IRecoverySystem service = IRecoverySystem.Stub.asInterface(b);
            return new RecoverySystem(service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$49 */
    /* loaded from: classes.dex */
    class AnonymousClass49 extends CachedServiceFetcher<SearchManager> {
        AnonymousClass49() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SearchManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new SearchManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$50 */
    /* loaded from: classes.dex */
    class AnonymousClass50 extends CachedServiceFetcher<SensorManager> {
        AnonymousClass50() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SensorManager createService(ContextImpl ctx) {
            return new SystemSensorManager(ctx.getOuterContext(), ctx.mMainThread.getHandler().getLooper());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$51 */
    /* loaded from: classes.dex */
    class AnonymousClass51 extends CachedServiceFetcher<SensorPrivacyManager> {
        AnonymousClass51() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SensorPrivacyManager createService(ContextImpl ctx) {
            return SensorPrivacyManager.getInstance(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$52 */
    /* loaded from: classes.dex */
    class AnonymousClass52 extends CachedServiceFetcher<StatusBarManager> {
        AnonymousClass52() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public StatusBarManager createService(ContextImpl ctx) {
            return new StatusBarManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$53 */
    /* loaded from: classes.dex */
    class AnonymousClass53 extends CachedServiceFetcher<SemStatusBarManager> {
        AnonymousClass53() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemStatusBarManager createService(ContextImpl ctx) {
            return new SemStatusBarManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$54 */
    /* loaded from: classes.dex */
    class AnonymousClass54 extends CachedServiceFetcher<SemEdgeManager> {
        AnonymousClass54() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemEdgeManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService("notification");
            return new SemEdgeManager(ctx, INotificationManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$55 */
    /* loaded from: classes.dex */
    class AnonymousClass55 extends CachedServiceFetcher<StorageManager> {
        AnonymousClass55() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public StorageManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new StorageManager(ctx, ctx.mMainThread.getHandler().getLooper());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$56 */
    /* loaded from: classes.dex */
    class AnonymousClass56 extends CachedServiceFetcher<StorageStatsManager> {
        AnonymousClass56() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public StorageStatsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IStorageStatsManager service = IStorageStatsManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.STORAGE_STATS_SERVICE));
            return new StorageStatsManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$57 */
    /* loaded from: classes.dex */
    class AnonymousClass57 extends CachedServiceFetcher<SystemUpdateManager> {
        AnonymousClass57() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SystemUpdateManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.SYSTEM_UPDATE_SERVICE);
            ISystemUpdateManager service = ISystemUpdateManager.Stub.asInterface(b);
            return new SystemUpdateManager(service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$58 */
    /* loaded from: classes.dex */
    class AnonymousClass58 extends CachedServiceFetcher<SystemConfigManager> {
        AnonymousClass58() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SystemConfigManager createService(ContextImpl ctx) {
            return new SystemConfigManager();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$59 */
    /* loaded from: classes.dex */
    class AnonymousClass59 extends CachedServiceFetcher<TelephonyRegistryManager> {
        AnonymousClass59() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TelephonyRegistryManager createService(ContextImpl ctx) {
            return new TelephonyRegistryManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$60 */
    /* loaded from: classes.dex */
    class AnonymousClass60 extends CachedServiceFetcher<TelecomManager> {
        AnonymousClass60() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TelecomManager createService(ContextImpl ctx) {
            return new TelecomManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$61 */
    /* loaded from: classes.dex */
    class AnonymousClass61 extends CachedServiceFetcher<SemTelecomManager> {
        AnonymousClass61() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemTelecomManager createService(ContextImpl ctx) {
            return new SemTelecomManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$62 */
    /* loaded from: classes.dex */
    class AnonymousClass62 extends CachedServiceFetcher<MmsManager> {
        AnonymousClass62() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public MmsManager createService(ContextImpl ctx) {
            return new MmsManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$63 */
    /* loaded from: classes.dex */
    class AnonymousClass63 extends CachedServiceFetcher<UiModeManager> {
        AnonymousClass63() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public UiModeManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new UiModeManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$64 */
    /* loaded from: classes.dex */
    class AnonymousClass64 extends CachedServiceFetcher<UsbManager> {
        AnonymousClass64() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public UsbManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("usb");
            return new UsbManager(ctx, IUsbManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$65 */
    /* loaded from: classes.dex */
    class AnonymousClass65 extends CachedServiceFetcher<AdbManager> {
        AnonymousClass65() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AdbManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("adb");
            return new AdbManager(ctx, IAdbManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$66 */
    /* loaded from: classes.dex */
    class AnonymousClass66 extends CachedServiceFetcher<SerialManager> {
        AnonymousClass66() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SerialManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.SERIAL_SERVICE);
            return new SerialManager(ctx, ISerialManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$67 */
    /* loaded from: classes.dex */
    class AnonymousClass67 extends CachedServiceFetcher<VibratorManager> {
        AnonymousClass67() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public VibratorManager createService(ContextImpl ctx) {
            return new SystemVibratorManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$68 */
    /* loaded from: classes.dex */
    class AnonymousClass68 extends CachedServiceFetcher<Vibrator> {
        AnonymousClass68() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public Vibrator createService(ContextImpl ctx) {
            return new SystemVibrator(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$69 */
    /* loaded from: classes.dex */
    class AnonymousClass69 extends CachedServiceFetcher<WallpaperManager> {
        AnonymousClass69() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public WallpaperManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService("wallpaper");
            if (b == null) {
                ApplicationInfo appInfo = ctx.getApplicationInfo();
                if (appInfo.targetSdkVersion >= 28 && appInfo.isInstantApp()) {
                    throw new ServiceManager.ServiceNotFoundException("wallpaper");
                }
                boolean enabled = Resources.getSystem().getBoolean(R.bool.config_enableWallpaperService);
                if (!enabled) {
                    return DisabledWallpaperManager.getInstance();
                }
                Log.e(SystemServiceRegistry.TAG, "No wallpaper service");
            }
            IWallpaperManager service = IWallpaperManager.Stub.asInterface(b);
            return new WallpaperManager(service, ctx.getOuterContext(), ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$70 */
    /* loaded from: classes.dex */
    class AnonymousClass70 extends CachedServiceFetcher<WifiNl80211Manager> {
        AnonymousClass70() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public WifiNl80211Manager createService(ContextImpl ctx) {
            return new WifiNl80211Manager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$71 */
    /* loaded from: classes.dex */
    class AnonymousClass71 extends CachedServiceFetcher<powerSolutionManager> {
        AnonymousClass71() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public powerSolutionManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.Power_Solution_FrameWork_Service);
            IpowerSolution service = IpowerSolution.Stub.asInterface(b);
            return new powerSolutionManager(service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$72 */
    /* loaded from: classes.dex */
    class AnonymousClass72 extends CachedServiceFetcher<CameraServiceWorkerManager> {
        AnonymousClass72() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public CameraServiceWorkerManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new CameraServiceWorkerManager(ServiceManager.getService(Context.CameraServiceWorker));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$73 */
    /* loaded from: classes.dex */
    class AnonymousClass73 extends CachedServiceFetcher<WindowManager> {
        AnonymousClass73() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public WindowManager createService(ContextImpl ctx) {
            return new WindowManagerImpl(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$74 */
    /* loaded from: classes.dex */
    class AnonymousClass74 extends CachedServiceFetcher<UserManager> {
        AnonymousClass74() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public UserManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("user");
            IUserManager service = IUserManager.Stub.asInterface(b);
            return new UserManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$75 */
    /* loaded from: classes.dex */
    class AnonymousClass75 extends CachedServiceFetcher<AppOpsManager> {
        AnonymousClass75() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AppOpsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.APP_OPS_SERVICE);
            IAppOpsService service = IAppOpsService.Stub.asInterface(b);
            return new AppOpsManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$76 */
    /* loaded from: classes.dex */
    class AnonymousClass76 extends CachedServiceFetcher<CameraManager> {
        AnonymousClass76() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public CameraManager createService(ContextImpl ctx) {
            return new CameraManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$77 */
    /* loaded from: classes.dex */
    class AnonymousClass77 extends CachedServiceFetcher<LauncherApps> {
        AnonymousClass77() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public LauncherApps createService(ContextImpl ctx) {
            return new LauncherApps(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$78 */
    /* loaded from: classes.dex */
    class AnonymousClass78 extends CachedServiceFetcher<RestrictionsManager> {
        AnonymousClass78() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public RestrictionsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.RESTRICTIONS_SERVICE);
            IRestrictionsManager service = IRestrictionsManager.Stub.asInterface(b);
            return new RestrictionsManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$79 */
    /* loaded from: classes.dex */
    class AnonymousClass79 extends CachedServiceFetcher<PrintManager> {
        AnonymousClass79() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public PrintManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IPrintManager service = null;
            if (ctx.getPackageManager().hasSystemFeature(PackageManager.FEATURE_PRINTING)) {
                service = IPrintManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.PRINT_SERVICE));
            }
            int userId = ctx.getUserId();
            int appId = UserHandle.getAppId(ctx.getApplicationInfo().uid);
            return new PrintManager(ctx.getOuterContext(), service, userId, appId);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$80 */
    /* loaded from: classes.dex */
    class AnonymousClass80 extends CachedServiceFetcher<CompanionDeviceManager> {
        AnonymousClass80() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public CompanionDeviceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            ICompanionDeviceManager service = null;
            if (ctx.getPackageManager().hasSystemFeature(PackageManager.FEATURE_COMPANION_DEVICE_SETUP)) {
                service = ICompanionDeviceManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.COMPANION_DEVICE_SERVICE));
            }
            return new CompanionDeviceManager(service, ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$81 */
    /* loaded from: classes.dex */
    class AnonymousClass81 extends CachedServiceFetcher<VirtualDeviceManager> {
        AnonymousClass81() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public VirtualDeviceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            if (!ctx.getPackageManager().hasSystemFeature(PackageManager.FEATURE_COMPANION_DEVICE_SETUP)) {
                return null;
            }
            IVirtualDeviceManager service = IVirtualDeviceManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.VIRTUAL_DEVICE_SERVICE));
            return new VirtualDeviceManager(service, ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$82 */
    /* loaded from: classes.dex */
    class AnonymousClass82 extends CachedServiceFetcher<ConsumerIrManager> {
        AnonymousClass82() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ConsumerIrManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new ConsumerIrManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$83 */
    /* loaded from: classes.dex */
    class AnonymousClass83 extends StaticServiceFetcher<TrustManager> {
        AnonymousClass83() {
        }

        @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
        public TrustManager createService() throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.TRUST_SERVICE);
            return new TrustManager(b);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$84 */
    /* loaded from: classes.dex */
    class AnonymousClass84 extends CachedServiceFetcher<FingerprintManager> {
        AnonymousClass84() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public FingerprintManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder binder;
            if (ctx.getApplicationInfo().targetSdkVersion >= 26) {
                binder = ServiceManager.getServiceOrThrow(Context.FINGERPRINT_SERVICE);
            } else {
                binder = ServiceManager.getService(Context.FINGERPRINT_SERVICE);
            }
            IFingerprintService service = IFingerprintService.Stub.asInterface(binder);
            return new FingerprintManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$85 */
    /* loaded from: classes.dex */
    class AnonymousClass85 extends CachedServiceFetcher<FaceManager> {
        AnonymousClass85() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public FaceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder binder;
            if (ctx.getApplicationInfo().targetSdkVersion >= 26) {
                binder = ServiceManager.getServiceOrThrow(Context.FACE_SERVICE);
            } else {
                binder = ServiceManager.getService(Context.FACE_SERVICE);
            }
            IFaceService service = IFaceService.Stub.asInterface(binder);
            return new FaceManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$86 */
    /* loaded from: classes.dex */
    class AnonymousClass86 extends CachedServiceFetcher<IrisManager> {
        AnonymousClass86() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public IrisManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder binder = ServiceManager.getServiceOrThrow(Context.IRIS_SERVICE);
            IIrisService service = IIrisService.Stub.asInterface(binder);
            return new IrisManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$87 */
    /* loaded from: classes.dex */
    class AnonymousClass87 extends CachedServiceFetcher<BiometricManager> {
        AnonymousClass87() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public BiometricManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder binder = ServiceManager.getServiceOrThrow(Context.AUTH_SERVICE);
            IAuthService service = IAuthService.Stub.asInterface(binder);
            return new BiometricManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$88 */
    /* loaded from: classes.dex */
    class AnonymousClass88 extends CachedServiceFetcher<TvInteractiveAppManager> {
        AnonymousClass88() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TvInteractiveAppManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder iBinder = ServiceManager.getServiceOrThrow(Context.TV_INTERACTIVE_APP_SERVICE);
            ITvInteractiveAppManager service = ITvInteractiveAppManager.Stub.asInterface(iBinder);
            return new TvInteractiveAppManager(service, ctx.getUserId());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$89 */
    /* loaded from: classes.dex */
    class AnonymousClass89 extends CachedServiceFetcher<TvInputManager> {
        AnonymousClass89() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TvInputManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder iBinder = ServiceManager.getServiceOrThrow(Context.TV_INPUT_SERVICE);
            ITvInputManager service = ITvInputManager.Stub.asInterface(iBinder);
            return new TvInputManager(service, ctx.getUserId());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$90 */
    /* loaded from: classes.dex */
    class AnonymousClass90 extends CachedServiceFetcher<TunerResourceManager> {
        AnonymousClass90() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TunerResourceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder iBinder = ServiceManager.getServiceOrThrow(Context.TV_TUNER_RESOURCE_MGR_SERVICE);
            ITunerResourceManager service = ITunerResourceManager.Stub.asInterface(iBinder);
            return new TunerResourceManager(service, ctx.getUserId());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$91 */
    /* loaded from: classes.dex */
    class AnonymousClass91 extends CachedServiceFetcher<NetworkScoreManager> {
        AnonymousClass91() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public NetworkScoreManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new NetworkScoreManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$92 */
    /* loaded from: classes.dex */
    class AnonymousClass92 extends CachedServiceFetcher<UsageStatsManager> {
        AnonymousClass92() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public UsageStatsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder iBinder = ServiceManager.getServiceOrThrow(Context.USAGE_STATS_SERVICE);
            IUsageStatsManager service = IUsageStatsManager.Stub.asInterface(iBinder);
            return new UsageStatsManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$93 */
    /* loaded from: classes.dex */
    class AnonymousClass93 extends StaticServiceFetcher<PersistentDataBlockManager> {
        AnonymousClass93() {
        }

        @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
        public PersistentDataBlockManager createService() throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.PERSISTENT_DATA_BLOCK_SERVICE);
            IPersistentDataBlockService persistentDataBlockService = IPersistentDataBlockService.Stub.asInterface(b);
            if (persistentDataBlockService != null) {
                return new PersistentDataBlockManager(persistentDataBlockService);
            }
            return null;
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$94 */
    /* loaded from: classes.dex */
    class AnonymousClass94 extends StaticServiceFetcher<OemLockManager> {
        AnonymousClass94() {
        }

        @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
        public OemLockManager createService() throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.OEM_LOCK_SERVICE);
            IOemLockService oemLockService = IOemLockService.Stub.asInterface(b);
            if (oemLockService != null) {
                return new OemLockManager(oemLockService);
            }
            return null;
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$95 */
    /* loaded from: classes.dex */
    class AnonymousClass95 extends CachedServiceFetcher<MediaProjectionManager> {
        AnonymousClass95() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public MediaProjectionManager createService(ContextImpl ctx) {
            return new MediaProjectionManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$96 */
    /* loaded from: classes.dex */
    class AnonymousClass96 extends CachedServiceFetcher<AppWidgetManager> {
        AnonymousClass96() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AppWidgetManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.APPWIDGET_SERVICE);
            if (b == null) {
                return null;
            }
            return new AppWidgetManager(ctx, IAppWidgetService.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$97 */
    /* loaded from: classes.dex */
    class AnonymousClass97 extends CachedServiceFetcher<MidiManager> {
        AnonymousClass97() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public MidiManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("midi");
            return new MidiManager(IMidiManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$98 */
    /* loaded from: classes.dex */
    class AnonymousClass98 extends CachedServiceFetcher<RadioManager> {
        AnonymousClass98() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public RadioManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new RadioManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$99 */
    /* loaded from: classes.dex */
    class AnonymousClass99 extends CachedServiceFetcher<HardwarePropertiesManager> {
        AnonymousClass99() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public HardwarePropertiesManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.HARDWARE_PROPERTIES_SERVICE);
            IHardwarePropertiesManager service = IHardwarePropertiesManager.Stub.asInterface(b);
            return new HardwarePropertiesManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$100 */
    /* loaded from: classes.dex */
    class AnonymousClass100 extends CachedServiceFetcher<SoundTriggerManager> {
        AnonymousClass100() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SoundTriggerManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.SOUND_TRIGGER_SERVICE);
            return new SoundTriggerManager(ctx, ISoundTriggerService.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$101 */
    /* loaded from: classes.dex */
    class AnonymousClass101 extends CachedServiceFetcher<ShortcutManager> {
        AnonymousClass101() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ShortcutManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("shortcut");
            return new ShortcutManager(ctx, IShortcutService.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$102 */
    /* loaded from: classes.dex */
    class AnonymousClass102 extends CachedServiceFetcher<OverlayManager> {
        AnonymousClass102() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public OverlayManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b;
            if (Compatibility.isChangeEnabled(OverlayManager.SELF_TARGETING_OVERLAY)) {
                b = ServiceManager.getService("overlay");
            } else {
                b = ServiceManager.getServiceOrThrow("overlay");
            }
            return new OverlayManager(ctx, IOverlayManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$103 */
    /* loaded from: classes.dex */
    class AnonymousClass103 extends CachedServiceFetcher<NetworkWatchlistManager> {
        AnonymousClass103() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public NetworkWatchlistManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.NETWORK_WATCHLIST_SERVICE);
            return new NetworkWatchlistManager(ctx, INetworkWatchlistManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$104 */
    /* loaded from: classes.dex */
    class AnonymousClass104 extends CachedServiceFetcher<SystemHealthManager> {
        AnonymousClass104() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SystemHealthManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("batterystats");
            return new SystemHealthManager(IBatteryStats.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$105 */
    /* loaded from: classes.dex */
    class AnonymousClass105 extends CachedServiceFetcher<ContextHubManager> {
        AnonymousClass105() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ContextHubManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new ContextHubManager(ctx.getOuterContext(), ctx.mMainThread.getHandler().getLooper());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$106 */
    /* loaded from: classes.dex */
    class AnonymousClass106 extends CachedServiceFetcher<IncidentManager> {
        AnonymousClass106() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public IncidentManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new IncidentManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$107 */
    /* loaded from: classes.dex */
    class AnonymousClass107 extends CachedServiceFetcher<BugreportManager> {
        AnonymousClass107() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public BugreportManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.BUGREPORT_SERVICE);
            return new BugreportManager(ctx.getOuterContext(), IDumpstate.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$108 */
    /* loaded from: classes.dex */
    class AnonymousClass108 extends CachedServiceFetcher<AutofillManager> {
        AnonymousClass108() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AutofillManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.AUTOFILL_MANAGER_SERVICE);
            IAutoFillManager service = IAutoFillManager.Stub.asInterface(b);
            return new AutofillManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$109 */
    /* loaded from: classes.dex */
    class AnonymousClass109 extends CachedServiceFetcher<CredentialManager> {
        AnonymousClass109() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public CredentialManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.CREDENTIAL_SERVICE);
            ICredentialManager service = ICredentialManager.Stub.asInterface(b);
            if (service != null) {
                return new CredentialManager(ctx.getOuterContext(), service);
            }
            return null;
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$110 */
    /* loaded from: classes.dex */
    class AnonymousClass110 extends CachedServiceFetcher<MusicRecognitionManager> {
        AnonymousClass110() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public MusicRecognitionManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.MUSIC_RECOGNITION_SERVICE);
            return new MusicRecognitionManager(IMusicRecognitionManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$111 */
    /* loaded from: classes.dex */
    class AnonymousClass111 extends CachedServiceFetcher<ContentCaptureManager> {
        AnonymousClass111() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ContentCaptureManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            Context outerContext = ctx.getOuterContext();
            ContentCaptureOptions options = outerContext.getContentCaptureOptions();
            if (options == null) {
                return null;
            }
            if (options.lite || options.isWhitelisted(outerContext)) {
                IBinder b = ServiceManager.getService(Context.CONTENT_CAPTURE_MANAGER_SERVICE);
                IContentCaptureManager service = IContentCaptureManager.Stub.asInterface(b);
                if (service != null) {
                    return new ContentCaptureManager(outerContext, service, options);
                }
                return null;
            }
            return null;
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$112 */
    /* loaded from: classes.dex */
    class AnonymousClass112 extends CachedServiceFetcher<TranslationManager> {
        AnonymousClass112() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TranslationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.TRANSLATION_MANAGER_SERVICE);
            ITranslationManager service = ITranslationManager.Stub.asInterface(b);
            if (service != null) {
                return new TranslationManager(ctx.getOuterContext(), service);
            }
            return null;
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$113 */
    /* loaded from: classes.dex */
    class AnonymousClass113 extends CachedServiceFetcher<UiTranslationManager> {
        AnonymousClass113() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public UiTranslationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.TRANSLATION_MANAGER_SERVICE);
            ITranslationManager service = ITranslationManager.Stub.asInterface(b);
            if (service != null) {
                return new UiTranslationManager(ctx.getOuterContext(), service);
            }
            return null;
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$114 */
    /* loaded from: classes.dex */
    class AnonymousClass114 extends CachedServiceFetcher<SearchUiManager> {
        AnonymousClass114() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SearchUiManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.SEARCH_UI_SERVICE);
            if (b == null) {
                return null;
            }
            return new SearchUiManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$115 */
    /* loaded from: classes.dex */
    class AnonymousClass115 extends CachedServiceFetcher<SmartspaceManager> {
        AnonymousClass115() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SmartspaceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.SMARTSPACE_SERVICE);
            if (b == null) {
                return null;
            }
            return new SmartspaceManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$116 */
    /* loaded from: classes.dex */
    class AnonymousClass116 extends CachedServiceFetcher<AppPredictionManager> {
        AnonymousClass116() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AppPredictionManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.APP_PREDICTION_SERVICE);
            if (b == null) {
                return null;
            }
            return new AppPredictionManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$117 */
    /* loaded from: classes.dex */
    class AnonymousClass117 extends CachedServiceFetcher<ContentSuggestionsManager> {
        AnonymousClass117() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ContentSuggestionsManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.CONTENT_SUGGESTIONS_SERVICE);
            IContentSuggestionsManager service = IContentSuggestionsManager.Stub.asInterface(b);
            return new ContentSuggestionsManager(ctx.getUserId(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$118 */
    /* loaded from: classes.dex */
    class AnonymousClass118 extends CachedServiceFetcher<WallpaperEffectsGenerationManager> {
        AnonymousClass118() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public WallpaperEffectsGenerationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getService(Context.WALLPAPER_EFFECTS_GENERATION_SERVICE);
            if (b == null) {
                return null;
            }
            return new WallpaperEffectsGenerationManager(IWallpaperEffectsGenerationManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$119 */
    /* loaded from: classes.dex */
    class AnonymousClass119 extends CachedServiceFetcher<VrManager> {
        AnonymousClass119() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public VrManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.VR_SERVICE);
            return new VrManager(IVrManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$120 */
    /* loaded from: classes.dex */
    class AnonymousClass120 extends CachedServiceFetcher<CrossProfileApps> {
        AnonymousClass120() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public CrossProfileApps createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.CROSS_PROFILE_APPS_SERVICE);
            return new CrossProfileApps(ctx.getOuterContext(), ICrossProfileApps.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$121 */
    /* loaded from: classes.dex */
    class AnonymousClass121 extends CachedServiceFetcher<SliceManager> {
        AnonymousClass121() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SliceManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new SliceManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$122 */
    /* loaded from: classes.dex */
    class AnonymousClass122 extends CachedServiceFetcher<SemWifiManager> {
        AnonymousClass122() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemWifiManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            ISemWifiManager service = ISemWifiManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.SEM_WIFI_SERVICE));
            return new SemWifiManager(ctx.getOuterContext(), service, ctx.mMainThread.getHandler().getLooper());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$123 */
    /* loaded from: classes.dex */
    class AnonymousClass123 extends CachedServiceFetcher<SemWifiP2pManager> {
        AnonymousClass123() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemWifiP2pManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            ISemWifiP2pManager service = ISemWifiP2pManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.SEM_WIFI_P2P_SERVICE));
            return new SemWifiP2pManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$124 */
    /* loaded from: classes.dex */
    class AnonymousClass124 extends CachedServiceFetcher<SemWifiAwareManager> {
        AnonymousClass124() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemWifiAwareManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            ISemWifiAwareManager service = ISemWifiAwareManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.SEM_WIFI_AWARE_SERVICE));
            return new SemWifiAwareManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$125 */
    /* loaded from: classes.dex */
    class AnonymousClass125 extends CachedServiceFetcher<SemContinuityManager> {
        AnonymousClass125() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemContinuityManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder binder = ServiceManager.getServiceOrThrow(Context.SEM_CONTINUITY_SERVICE);
            ISemContinuityManager service = ISemContinuityManager.Stub.asInterface(binder);
            return new SemContinuityManager(ctx.getOuterContext(), service, ctx.getUserId());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$126 */
    /* loaded from: classes.dex */
    class AnonymousClass126 extends CachedServiceFetcher<SemHwrsManager> {
        AnonymousClass126() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemHwrsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder binder = ServiceManager.getServiceOrThrow(Context.SEM_HWRS_SERVICE);
            ISemHwrsManager service = ISemHwrsManager.Stub.asInterface(binder);
            return new SemHwrsManager(ctx.getOuterContext(), service, ctx.getUserId());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$127 */
    /* loaded from: classes.dex */
    class AnonymousClass127 extends CachedServiceFetcher<SemFmPlayer> {
        AnonymousClass127() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemFmPlayer createService(ContextImpl ctx) {
            return new SemFmPlayer(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$128 */
    /* loaded from: classes.dex */
    class AnonymousClass128 extends CachedServiceFetcher<SemMotionRecognitionManager> {
        AnonymousClass128() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemMotionRecognitionManager createService(ContextImpl ctx) {
            return new SemMotionRecognitionManager(ctx.mMainThread.getHandler().getLooper());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$129 */
    /* loaded from: classes.dex */
    class AnonymousClass129 extends CachedServiceFetcher<SContextManager> {
        AnonymousClass129() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SContextManager createService(ContextImpl ctx) {
            return new SContextManager(ctx, ctx.mMainThread.getHandler().getLooper());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$130 */
    /* loaded from: classes.dex */
    class AnonymousClass130 extends CachedServiceFetcher<TimeDetector> {
        AnonymousClass130() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TimeDetector createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new TimeDetectorImpl();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$131 */
    /* loaded from: classes.dex */
    class AnonymousClass131 extends CachedServiceFetcher<TimeZoneDetector> {
        AnonymousClass131() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TimeZoneDetector createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new TimeZoneDetectorImpl();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$132 */
    /* loaded from: classes.dex */
    class AnonymousClass132 extends CachedServiceFetcher<TimeManager> {
        AnonymousClass132() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TimeManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new TimeManager();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$133 */
    /* loaded from: classes.dex */
    class AnonymousClass133 extends CachedServiceFetcher<PermissionManager> {
        AnonymousClass133() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public PermissionManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new PermissionManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$134 */
    /* loaded from: classes.dex */
    class AnonymousClass134 extends CachedServiceFetcher<LegacyPermissionManager> {
        AnonymousClass134() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public LegacyPermissionManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new LegacyPermissionManager();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$135 */
    /* loaded from: classes.dex */
    class AnonymousClass135 extends CachedServiceFetcher<PermissionControllerManager> {
        AnonymousClass135() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public PermissionControllerManager createService(ContextImpl ctx) {
            return new PermissionControllerManager(ctx.getOuterContext(), ctx.getMainThreadHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$136 */
    /* loaded from: classes.dex */
    class AnonymousClass136 extends CachedServiceFetcher<PermissionCheckerManager> {
        AnonymousClass136() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public PermissionCheckerManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new PermissionCheckerManager(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$137 */
    /* loaded from: classes.dex */
    class AnonymousClass137 extends CachedServiceFetcher<PermissionEnforcer> {
        AnonymousClass137() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public PermissionEnforcer createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new PermissionEnforcer(ctx.getOuterContext());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$138 */
    /* loaded from: classes.dex */
    class AnonymousClass138 extends CachedServiceFetcher<DynamicSystemManager> {
        AnonymousClass138() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DynamicSystemManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.DYNAMIC_SYSTEM_SERVICE);
            return new DynamicSystemManager(IDynamicSystemService.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$139 */
    /* loaded from: classes.dex */
    class AnonymousClass139 extends CachedServiceFetcher<BatteryStatsManager> {
        AnonymousClass139() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public BatteryStatsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow("batterystats");
            return new BatteryStatsManager(IBatteryStats.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$140 */
    /* loaded from: classes.dex */
    class AnonymousClass140 extends CachedServiceFetcher<DataLoaderManager> {
        AnonymousClass140() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DataLoaderManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.DATA_LOADER_MANAGER_SERVICE);
            return new DataLoaderManager(IDataLoaderManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$141 */
    /* loaded from: classes.dex */
    class AnonymousClass141 extends CachedServiceFetcher<LightsManager> {
        AnonymousClass141() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public LightsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new SystemLightsManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$142 */
    /* loaded from: classes.dex */
    class AnonymousClass142 extends CachedServiceFetcher<LocaleManager> {
        AnonymousClass142() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public LocaleManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new LocaleManager(ctx, ILocaleManager.Stub.asInterface(ServiceManager.getServiceOrThrow("locale")));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$143 */
    /* loaded from: classes.dex */
    class AnonymousClass143 extends CachedServiceFetcher<IncrementalManager> {
        AnonymousClass143() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public IncrementalManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.INCREMENTAL_SERVICE);
            if (b == null) {
                return null;
            }
            return new IncrementalManager(IIncrementalService.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$144 */
    /* loaded from: classes.dex */
    class AnonymousClass144 extends CachedServiceFetcher<FileIntegrityManager> {
        AnonymousClass144() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public FileIntegrityManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.FILE_INTEGRITY_SERVICE);
            return new FileIntegrityManager(ctx.getOuterContext(), IFileIntegrityService.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$145 */
    /* loaded from: classes.dex */
    class AnonymousClass145 extends CachedServiceFetcher<AttestationVerificationManager> {
        AnonymousClass145() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AttestationVerificationManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.ATTESTATION_VERIFICATION_SERVICE);
            return new AttestationVerificationManager(ctx.getOuterContext(), IAttestationVerificationManagerService.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$146 */
    /* loaded from: classes.dex */
    class AnonymousClass146 extends CachedServiceFetcher<AppIntegrityManager> {
        AnonymousClass146() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AppIntegrityManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder b = ServiceManager.getServiceOrThrow(Context.APP_INTEGRITY_SERVICE);
            return new AppIntegrityManager(IAppIntegrityManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$147 */
    /* loaded from: classes.dex */
    class AnonymousClass147 extends CachedServiceFetcher<AppHibernationManager> {
        AnonymousClass147() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AppHibernationManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.APP_HIBERNATION_SERVICE);
            if (b == null) {
                return null;
            }
            return new AppHibernationManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$148 */
    /* loaded from: classes.dex */
    class AnonymousClass148 extends CachedServiceFetcher<DreamManager> {
        AnonymousClass148() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DreamManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new DreamManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$149 */
    /* loaded from: classes.dex */
    class AnonymousClass149 extends CachedServiceFetcher<DeviceStateManager> {
        AnonymousClass149() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DeviceStateManager createService(ContextImpl ctx) {
            return new DeviceStateManager();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$150 */
    /* loaded from: classes.dex */
    class AnonymousClass150 extends CachedServiceFetcher<CocktailBarManager> {
        AnonymousClass150() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public CocktailBarManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.COCKTAIL_BAR_SERVICE);
            return new CocktailBarManager(ctx, ICocktailBarService.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$151 */
    /* loaded from: classes.dex */
    class AnonymousClass151 extends CachedServiceFetcher<MediaMetricsManager> {
        AnonymousClass151() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public MediaMetricsManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder iBinder = ServiceManager.getServiceOrThrow(Context.MEDIA_METRICS_SERVICE);
            IMediaMetricsManager service = IMediaMetricsManager.Stub.asInterface(iBinder);
            return new MediaMetricsManager(service, ctx.getUserId());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$152 */
    /* loaded from: classes.dex */
    class AnonymousClass152 extends CachedServiceFetcher<GameManager> {
        AnonymousClass152() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public GameManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new GameManager(ctx.getOuterContext(), ctx.mMainThread.getHandler());
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$153 */
    /* loaded from: classes.dex */
    class AnonymousClass153 extends CachedServiceFetcher<DomainVerificationManager> {
        AnonymousClass153() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DomainVerificationManager createService(ContextImpl context) throws ServiceManager.ServiceNotFoundException {
            IBinder binder = ServiceManager.getServiceOrThrow(Context.DOMAIN_VERIFICATION_SERVICE);
            IDomainVerificationManager service = IDomainVerificationManager.Stub.asInterface(binder);
            return new DomainVerificationManager(context, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$154 */
    /* loaded from: classes.dex */
    class AnonymousClass154 extends CachedServiceFetcher<DisplayHashManager> {
        AnonymousClass154() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public DisplayHashManager createService(ContextImpl ctx) {
            return new DisplayHashManager();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$155 */
    /* loaded from: classes.dex */
    class AnonymousClass155 extends CachedServiceFetcher<ExynosDisplaySolutionManager> {
        AnonymousClass155() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ExynosDisplaySolutionManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.EXYNOS_DISPLAY_SOLUTION_SERVICE);
            IExynosDisplaySolutionManager service = IExynosDisplaySolutionManager.Stub.asInterface(b);
            if (service == null) {
                Log.e(SystemServiceRegistry.TAG, "Failed to get ExynosDisplaySolution Manager Service.");
                return null;
            }
            return new ExynosDisplaySolutionManager(service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$156 */
    /* loaded from: classes.dex */
    class AnonymousClass156 extends CachedServiceFetcher<AmbientContextManager> {
        AnonymousClass156() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AmbientContextManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder iBinder = ServiceManager.getServiceOrThrow(Context.AMBIENT_CONTEXT_SERVICE);
            IAmbientContextManager manager = IAmbientContextManager.Stub.asInterface(iBinder);
            return new AmbientContextManager(ctx.getOuterContext(), manager);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$157 */
    /* loaded from: classes.dex */
    class AnonymousClass157 extends CachedServiceFetcher<WearableSensingManager> {
        AnonymousClass157() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public WearableSensingManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder iBinder = ServiceManager.getServiceOrThrow(Context.WEARABLE_SENSING_SERVICE);
            IWearableSensingManager manager = IWearableSensingManager.Stub.asInterface(iBinder);
            return new WearableSensingManager(ctx.getOuterContext(), manager);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$158 */
    /* loaded from: classes.dex */
    class AnonymousClass158 extends CachedServiceFetcher<GrammaticalInflectionManager> {
        AnonymousClass158() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public GrammaticalInflectionManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            return new GrammaticalInflectionManager(ctx, IGrammaticalInflectionManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.GRAMMATICAL_INFLECTION_SERVICE)));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$159 */
    /* loaded from: classes.dex */
    class AnonymousClass159 extends CachedServiceFetcher<SharedConnectivityManager> {
        AnonymousClass159() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SharedConnectivityManager createService(ContextImpl ctx) {
            return SharedConnectivityManager.create(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$160 */
    /* loaded from: classes.dex */
    class AnonymousClass160 extends CachedServiceFetcher<SemMultiControlManager> {
        AnonymousClass160() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemMultiControlManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.SEM_MULTI_CONTROL_SERVICE);
            IMultiControlManager service = IMultiControlManager.Stub.asInterface(b);
            if (service == null) {
                Log.e(SystemServiceRegistry.TAG, "SemMultiControlManager is not supported");
                return null;
            }
            return new SemMultiControlManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$161 */
    /* loaded from: classes.dex */
    class AnonymousClass161 extends CachedServiceFetcher<SemPersonaManager> {
        AnonymousClass161() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemPersonaManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService("persona");
            ISemPersonaManager service = ISemPersonaManager.Stub.asInterface(b);
            return new SemPersonaManager(ctx, service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$162 */
    /* loaded from: classes.dex */
    class AnonymousClass162 extends CachedServiceFetcher<SemRemoteContentManager> {
        AnonymousClass162() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemRemoteContentManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService("rcp");
            return new SemRemoteContentManager(ISemRemoteContentManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$163 */
    /* loaded from: classes.dex */
    class AnonymousClass163 extends CachedServiceFetcher<IsrbManager> {
        AnonymousClass163() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public IsrbManager createService(ContextImpl ctx) {
            return new IsrbManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$164 */
    /* loaded from: classes.dex */
    class AnonymousClass164 extends CachedServiceFetcher<SemRemoteAppModeManager> {
        AnonymousClass164() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemRemoteAppModeManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.SEM_REMOTE_APP_MODE_SERVICE);
            IRemoteAppMode service = IRemoteAppMode.Stub.asInterface(b);
            if (service == null) {
                Log.e(SystemServiceRegistry.TAG, "SemRemoteAppModeManager is not supported");
                return null;
            }
            return new SemRemoteAppModeManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$165 */
    /* loaded from: classes.dex */
    class AnonymousClass165 extends CachedServiceFetcher<SemMdnieManager> {
        AnonymousClass165() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemMdnieManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.SEM_MDNIE_SERVICE);
            ISemMdnieManager service = ISemMdnieManager.Stub.asInterface(b);
            return new SemMdnieManager(service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$166 */
    /* loaded from: classes.dex */
    class AnonymousClass166 extends CachedServiceFetcher<SemDisplaySolutionManager> {
        AnonymousClass166() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemDisplaySolutionManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.SEM_DISPLAY_SOLUTION_SERVICE);
            ISemDisplaySolutionManager service = ISemDisplaySolutionManager.Stub.asInterface(b);
            return new SemDisplaySolutionManager(service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$167 */
    /* loaded from: classes.dex */
    class AnonymousClass167 extends CachedServiceFetcher<SemDisplayQualityManager> {
        AnonymousClass167() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemDisplayQualityManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.SEM_DISPLAY_QUALITY_SERVICE);
            ISemDisplayQualityManager service = ISemDisplayQualityManager.Stub.asInterface(b);
            return new SemDisplayQualityManager(service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$168 */
    /* loaded from: classes.dex */
    class AnonymousClass168 extends CachedServiceFetcher<SemInputDeviceManager> {
        AnonymousClass168() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemInputDeviceManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.SEM_INPUT_DEVICE_SERVICE);
            ISemInputDeviceManager service = ISemInputDeviceManager.Stub.asInterface(b);
            return new SemInputDeviceManager(service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$169 */
    /* loaded from: classes.dex */
    class AnonymousClass169 extends CachedServiceFetcher<SemUnionManager> {
        AnonymousClass169() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemUnionManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.SEP_UNION_SERVICE);
            return new SemUnionManager(ctx, IUnionManager.Stub.asInterface(b));
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$170 */
    /* loaded from: classes.dex */
    class AnonymousClass170 extends CachedServiceFetcher<SemVideoTranscodingService> {
        AnonymousClass170() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemVideoTranscodingService createService(ContextImpl ctx) {
            return new SemVideoTranscodingService();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$171 */
    /* loaded from: classes.dex */
    class AnonymousClass171 extends CachedServiceFetcher<SemDesktopModeManager> {
        AnonymousClass171() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemDesktopModeManager createService(ContextImpl ctx) {
            IBinder b = ServiceManager.getService(Context.SEM_DESKTOP_MODE_SERVICE);
            IDesktopMode service = IDesktopMode.Stub.asInterface(b);
            if (service == null) {
                Log.e(SystemServiceRegistry.TAG, "SemDesktopModeManager is not supported");
                return null;
            }
            return new SemDesktopModeManager(ctx.getOuterContext(), service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$172 */
    /* loaded from: classes.dex */
    class AnonymousClass172 extends CachedServiceFetcher<SemCodecSolutionService> {
        AnonymousClass172() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SemCodecSolutionService createService(ContextImpl ctx) {
            return new SemCodecSolutionService();
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$173 */
    /* loaded from: classes.dex */
    class AnonymousClass173 extends CachedServiceFetcher<ExtendedEthernetManager> {
        AnonymousClass173() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public ExtendedEthernetManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IExtendedEthernetManager service = IExtendedEthernetManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.EXTENDED_ETHERNET_SERVICE));
            return new ExtendedEthernetManager(service);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$174 */
    /* loaded from: classes.dex */
    class AnonymousClass174 extends CachedServiceFetcher<SpenGestureManager> {
        AnonymousClass174() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public SpenGestureManager createService(ContextImpl ctx) {
            return new SpenGestureManager(ctx);
        }
    }

    /* renamed from: android.app.SystemServiceRegistry$176 */
    /* loaded from: classes.dex */
    class AnonymousClass176 extends CachedServiceFetcher<AppPrelaunchManager> {
        AnonymousClass176() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public AppPrelaunchManager createService(ContextImpl ctx) throws ServiceManager.ServiceNotFoundException {
            IBinder iBinder = ServiceManager.getServiceOrThrow(Context.PRELAUNCHER_SERVICE);
            IAppPrelaunchService service = IAppPrelaunchService.Stub.asInterface(iBinder);
            return new AppPrelaunchManager(service);
        }
    }

    private static void ensureInitializing(String methodName) {
        Preconditions.checkState(sInitializing, "Internal error: %s can only be called during class initialization.", methodName);
    }

    public static Object[] createServiceCache() {
        return new Object[sServiceCacheSize];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Object getSystemService(ContextImpl ctx, String name) {
        char c;
        if (name == null) {
            return null;
        }
        ServiceFetcher<?> fetcher = SYSTEM_SERVICE_FETCHERS.get(name);
        if (fetcher == null) {
            if (sEnableServiceNotFoundWtf) {
                Slog.wtf(TAG, "Unknown manager requested: " + name);
            }
            return null;
        }
        Object ret = fetcher.getService(ctx);
        if (sEnableServiceNotFoundWtf && ret == null) {
            switch (name.hashCode()) {
                case -1419358249:
                    if (name.equals(Context.ETHERNET_SERVICE)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -769002131:
                    if (name.equals(Context.APP_PREDICTION_SERVICE)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 56472313:
                    if (name.equals(Context.VIRTUALIZATION_SERVICE)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 273796326:
                    if (name.equals(Context.CONTEXTHUB_SERVICE)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 948275489:
                    if (name.equals(Context.VIRTUAL_DEVICE_SERVICE)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 974854528:
                    if (name.equals(Context.CONTENT_CAPTURE_MANAGER_SERVICE)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1085372378:
                    if (name.equals(Context.INCREMENTAL_SERVICE)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    return null;
                default:
                    Slog.wtf(TAG, "Manager wrapper not available: " + name);
                    return null;
            }
        }
        return ret;
    }

    public static String getSystemServiceName(Class<?> serviceClass) {
        if (serviceClass == null) {
            return null;
        }
        String serviceName = SYSTEM_SERVICE_NAMES.get(serviceClass);
        if (sEnableServiceNotFoundWtf && serviceName == null) {
            Slog.wtf(TAG, "Unknown manager requested: " + serviceClass.getCanonicalName());
        }
        return serviceName;
    }

    private static <T> void registerService(String serviceName, Class<T> serviceClass, ServiceFetcher<T> serviceFetcher) {
        SYSTEM_SERVICE_NAMES.put(serviceClass, serviceName);
        SYSTEM_SERVICE_FETCHERS.put(serviceName, serviceFetcher);
        SYSTEM_SERVICE_CLASS_NAMES.put(serviceName, serviceClass.getSimpleName());
    }

    public static String getSystemServiceClassName(String name) {
        return SYSTEM_SERVICE_CLASS_NAMES.get(name);
    }

    @SystemApi
    public static <TServiceClass> void registerStaticService(String serviceName, Class<TServiceClass> serviceWrapperClass, StaticServiceProducerWithBinder<TServiceClass> serviceProducer) {
        ensureInitializing("registerStaticService");
        Preconditions.checkStringNotEmpty(serviceName);
        Objects.requireNonNull(serviceWrapperClass);
        Objects.requireNonNull(serviceProducer);
        registerService(serviceName, serviceWrapperClass, new StaticServiceFetcher<TServiceClass>() { // from class: android.app.SystemServiceRegistry.177
            final /* synthetic */ String val$serviceName;

            AnonymousClass177(String serviceName2) {
                serviceName = serviceName2;
            }

            @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
            public TServiceClass createService() throws ServiceManager.ServiceNotFoundException {
                return (TServiceClass) StaticServiceProducerWithBinder.this.createService(ServiceManager.getServiceOrThrow(serviceName));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.app.SystemServiceRegistry$177 */
    /* loaded from: classes.dex */
    public class AnonymousClass177<TServiceClass> extends StaticServiceFetcher<TServiceClass> {
        final /* synthetic */ String val$serviceName;

        AnonymousClass177(String serviceName2) {
            serviceName = serviceName2;
        }

        @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
        public TServiceClass createService() throws ServiceManager.ServiceNotFoundException {
            return (TServiceClass) StaticServiceProducerWithBinder.this.createService(ServiceManager.getServiceOrThrow(serviceName));
        }
    }

    @SystemApi
    public static <TServiceClass> void registerStaticService(String serviceName, Class<TServiceClass> serviceWrapperClass, StaticServiceProducerWithoutBinder<TServiceClass> serviceProducer) {
        ensureInitializing("registerStaticService");
        Preconditions.checkStringNotEmpty(serviceName);
        Objects.requireNonNull(serviceWrapperClass);
        Objects.requireNonNull(serviceProducer);
        registerService(serviceName, serviceWrapperClass, new StaticServiceFetcher<TServiceClass>() { // from class: android.app.SystemServiceRegistry.178
            AnonymousClass178() {
            }

            @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
            public TServiceClass createService() {
                return (TServiceClass) StaticServiceProducerWithoutBinder.this.createService();
            }
        });
    }

    /* renamed from: android.app.SystemServiceRegistry$178 */
    /* loaded from: classes.dex */
    class AnonymousClass178<TServiceClass> extends StaticServiceFetcher<TServiceClass> {
        AnonymousClass178() {
        }

        @Override // android.app.SystemServiceRegistry.StaticServiceFetcher
        public TServiceClass createService() {
            return (TServiceClass) StaticServiceProducerWithoutBinder.this.createService();
        }
    }

    @SystemApi
    public static <TServiceClass> void registerContextAwareService(String serviceName, Class<TServiceClass> serviceWrapperClass, ContextAwareServiceProducerWithBinder<TServiceClass> serviceProducer) {
        ensureInitializing("registerContextAwareService");
        Preconditions.checkStringNotEmpty(serviceName);
        Objects.requireNonNull(serviceWrapperClass);
        Objects.requireNonNull(serviceProducer);
        registerService(serviceName, serviceWrapperClass, new CachedServiceFetcher<TServiceClass>() { // from class: android.app.SystemServiceRegistry.179
            final /* synthetic */ String val$serviceName;

            AnonymousClass179(String serviceName2) {
                serviceName = serviceName2;
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TServiceClass createService(ContextImpl contextImpl) throws ServiceManager.ServiceNotFoundException {
                return (TServiceClass) ContextAwareServiceProducerWithBinder.this.createService(contextImpl.getOuterContext(), ServiceManager.getServiceOrThrow(serviceName));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.app.SystemServiceRegistry$179 */
    /* loaded from: classes.dex */
    public class AnonymousClass179<TServiceClass> extends CachedServiceFetcher<TServiceClass> {
        final /* synthetic */ String val$serviceName;

        AnonymousClass179(String serviceName2) {
            serviceName = serviceName2;
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TServiceClass createService(ContextImpl contextImpl) throws ServiceManager.ServiceNotFoundException {
            return (TServiceClass) ContextAwareServiceProducerWithBinder.this.createService(contextImpl.getOuterContext(), ServiceManager.getServiceOrThrow(serviceName));
        }
    }

    @SystemApi
    public static <TServiceClass> void registerContextAwareService(String serviceName, Class<TServiceClass> serviceWrapperClass, ContextAwareServiceProducerWithoutBinder<TServiceClass> serviceProducer) {
        ensureInitializing("registerContextAwareService");
        Preconditions.checkStringNotEmpty(serviceName);
        Objects.requireNonNull(serviceWrapperClass);
        Objects.requireNonNull(serviceProducer);
        registerService(serviceName, serviceWrapperClass, new CachedServiceFetcher<TServiceClass>() { // from class: android.app.SystemServiceRegistry.180
            AnonymousClass180() {
            }

            @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
            public TServiceClass createService(ContextImpl contextImpl) {
                return (TServiceClass) ContextAwareServiceProducerWithoutBinder.this.createService(contextImpl.getOuterContext());
            }
        });
    }

    /* renamed from: android.app.SystemServiceRegistry$180 */
    /* loaded from: classes.dex */
    public class AnonymousClass180<TServiceClass> extends CachedServiceFetcher<TServiceClass> {
        AnonymousClass180() {
        }

        @Override // android.app.SystemServiceRegistry.CachedServiceFetcher
        public TServiceClass createService(ContextImpl contextImpl) {
            return (TServiceClass) ContextAwareServiceProducerWithoutBinder.this.createService(contextImpl.getOuterContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class CachedServiceFetcher<T> implements ServiceFetcher<T> {
        private final int mCacheIndex;

        public abstract T createService(ContextImpl contextImpl) throws ServiceManager.ServiceNotFoundException;

        CachedServiceFetcher() {
            int i = SystemServiceRegistry.sServiceCacheSize;
            SystemServiceRegistry.sServiceCacheSize = i + 1;
            this.mCacheIndex = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:78:0x000e, code lost:
        
            r3 = r6;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object[], java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v0 */
        @Override // android.app.SystemServiceRegistry.ServiceFetcher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final T getService(android.app.ContextImpl r11) {
            /*
                r10 = this;
                java.lang.Object[] r0 = r11.mServiceCache
                int[] r1 = r11.mServiceInitializationStateArray
                r2 = 0
                r3 = 0
            L6:
                r4 = 0
                monitor-enter(r0)
                int r5 = r10.mCacheIndex     // Catch: java.lang.Throwable -> L93
                r6 = r0[r5]     // Catch: java.lang.Throwable -> L93
                if (r6 == 0) goto L11
                r3 = r6
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L93
                goto L57
            L11:
                r7 = r1[r5]     // Catch: java.lang.Throwable -> L93
                r8 = 2
                if (r7 == r8) goto L1b
                r7 = r1[r5]     // Catch: java.lang.Throwable -> L93
                r9 = 3
                if (r7 != r9) goto L1e
            L1b:
                r7 = 0
                r1[r5] = r7     // Catch: java.lang.Throwable -> L93
            L1e:
                r7 = r1[r5]     // Catch: java.lang.Throwable -> L93
                if (r7 != 0) goto L26
                r4 = 1
                r7 = 1
                r1[r5] = r7     // Catch: java.lang.Throwable -> L93
            L26:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L93
                if (r4 == 0) goto L73
                r5 = 0
                r6 = 3
                java.lang.Object r7 = r10.createService(r11)     // Catch: java.lang.Throwable -> L41 android.os.ServiceManager.ServiceNotFoundException -> L43
                r8 = 2
                monitor-enter(r0)
                int r5 = r10.mCacheIndex     // Catch: java.lang.Throwable -> L3e
                r0[r5] = r7     // Catch: java.lang.Throwable -> L3e
                r1[r5] = r8     // Catch: java.lang.Throwable -> L3e
                r0.notifyAll()     // Catch: java.lang.Throwable -> L3e
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
                r5 = r7
                r6 = r8
                goto L55
            L3e:
                r5 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
                throw r5
            L41:
                r7 = move-exception
                goto L64
            L43:
                r7 = move-exception
                android.app.SystemServiceRegistry.onServiceNotFound(r7)     // Catch: java.lang.Throwable -> L41
                monitor-enter(r0)
                int r7 = r10.mCacheIndex     // Catch: java.lang.Throwable -> L61
                r0[r7] = r5     // Catch: java.lang.Throwable -> L61
                int r7 = r10.mCacheIndex     // Catch: java.lang.Throwable -> L61
                r1[r7] = r6     // Catch: java.lang.Throwable -> L61
                r0.notifyAll()     // Catch: java.lang.Throwable -> L61
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L61
            L55:
                r3 = r5
            L57:
                if (r2 == 0) goto L60
                java.lang.Thread r4 = java.lang.Thread.currentThread()
                r4.interrupt()
            L60:
                return r3
            L61:
                r7 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L61
                throw r7
            L64:
                monitor-enter(r0)
                int r8 = r10.mCacheIndex     // Catch: java.lang.Throwable -> L70
                r0[r8] = r5     // Catch: java.lang.Throwable -> L70
                r1[r8] = r6     // Catch: java.lang.Throwable -> L70
                r0.notifyAll()     // Catch: java.lang.Throwable -> L70
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L70
                throw r7
            L70:
                r7 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L70
                throw r7
            L73:
                monitor-enter(r0)
            L74:
                int r5 = r10.mCacheIndex     // Catch: java.lang.Throwable -> L90
                r5 = r1[r5]     // Catch: java.lang.Throwable -> L90
                if (r5 >= r8) goto L8d
                boolean r5 = java.lang.Thread.interrupted()     // Catch: java.lang.InterruptedException -> L83 java.lang.Throwable -> L90
                r2 = r2 | r5
                r0.wait()     // Catch: java.lang.InterruptedException -> L83 java.lang.Throwable -> L90
            L82:
                goto L74
            L83:
                r5 = move-exception
                java.lang.String r6 = "SystemServiceRegistry"
                java.lang.String r7 = "getService() interrupted"
                android.util.Slog.w(r6, r7)     // Catch: java.lang.Throwable -> L90
                r2 = 1
                goto L82
            L8d:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L90
                goto L6
            L90:
                r5 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L90
                throw r5
            L93:
                r5 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L93
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: android.app.SystemServiceRegistry.CachedServiceFetcher.getService(android.app.ContextImpl):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class StaticServiceFetcher<T> implements ServiceFetcher<T> {
        private T mCachedInstance;

        public abstract T createService() throws ServiceManager.ServiceNotFoundException;

        StaticServiceFetcher() {
        }

        @Override // android.app.SystemServiceRegistry.ServiceFetcher
        public final T getService(ContextImpl ctx) {
            T t;
            synchronized (this) {
                if (this.mCachedInstance == null) {
                    try {
                        this.mCachedInstance = createService();
                    } catch (ServiceManager.ServiceNotFoundException e) {
                        SystemServiceRegistry.onServiceNotFound(e);
                    }
                }
                t = this.mCachedInstance;
            }
            return t;
        }
    }

    public static void onServiceNotFound(ServiceManager.ServiceNotFoundException e) {
        if (Process.myUid() < 10000) {
            Log.wtf(TAG, e.getMessage(), e);
        } else {
            Log.w(TAG, e.getMessage());
        }
    }
}
