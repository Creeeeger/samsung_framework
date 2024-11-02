package com.android.systemui.biometrics;

import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.TaskStackListener;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.SensorPrivacyManager;
import android.hardware.biometrics.BiometricStateListener;
import android.hardware.biometrics.IBiometricContextListener;
import android.hardware.biometrics.IBiometricSysuiReceiver;
import android.hardware.biometrics.PromptInfo;
import android.hardware.display.DisplayManager;
import android.hardware.face.FaceManager;
import android.hardware.face.FaceSensorPropertiesInternal;
import android.hardware.face.IFaceAuthenticatorsRegisteredCallback;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import android.hardware.fingerprint.IFingerprintAuthenticatorsRegisteredCallback;
import android.hardware.fingerprint.IUdfpsRefreshRateRequestCallback;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.DisplayUtils;
import android.util.Log;
import android.util.RotationUtils;
import android.util.SparseBooleanArray;
import android.view.Display;
import android.view.DisplayInfo;
import android.view.WindowManager;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.os.SomeArgs;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.LockIconView$$ExternalSyntheticOutline0;
import com.android.settingslib.udfps.UdfpsOverlayParams;
import com.android.settingslib.udfps.UdfpsUtils;
import com.android.systemui.CoreStartable;
import com.android.systemui.R;
import com.android.systemui.biometrics.AuthContainerView;
import com.android.systemui.biometrics.BiometricDisplayListener;
import com.android.systemui.biometrics.domain.interactor.LogContextInteractor;
import com.android.systemui.biometrics.domain.interactor.LogContextInteractorImpl;
import com.android.systemui.biometrics.ui.viewmodel.PromptViewModel;
import com.android.systemui.doze.DozeReceiver;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.keyguard.data.repository.BiometricType;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.VibratorHelper;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.Execution;
import com.android.systemui.util.concurrency.ExecutionImpl;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.inject.Provider;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthController implements CoreStartable, CommandQueue.Callbacks, DozeReceiver {
    public final ActivityTaskManager mActivityTaskManager;
    public boolean mAllFingerprintAuthenticatorsRegistered;
    public final CoroutineScope mApplicationCoroutineScope;
    public final Provider mAuthBiometricFingerprintViewModelProvider;
    public final DelayableExecutor mBackgroundExecutor;
    final BroadcastReceiver mBroadcastReceiver;
    public final CommandQueue mCommandQueue;
    public final Context mContext;
    public final Provider mCredentialViewModelProvider;
    AuthDialog mCurrentDialog;
    public SomeArgs mCurrentDialogArgs;
    public final Display mDisplay;
    public final Execution mExecution;
    public final SparseBooleanArray mFaceEnrolledForUser;
    public final FaceManager mFaceManager;
    public final List mFaceProps;
    public Point mFaceSensorLocation;
    public final Point mFaceSensorLocationDefault;
    public final FeatureFlags mFeatureFlags;
    public final FingerprintManager mFingerprintManager;
    public Point mFingerprintSensorLocation;
    public List mFpProps;
    public final Handler mHandler;
    public final InteractionJankMonitor mInteractionJankMonitor;
    public final LockPatternUtils mLockPatternUtils;
    public final LogContextInteractor mLogContextInteractor;
    final BiometricDisplayListener mOrientationListener;
    public final AuthDialogPanelInteractionDetector mPanelInteractionDetector;
    public final Provider mPromptCredentialInteractor;
    public final Provider mPromptSelectorInteractor;
    public final Provider mPromptViewModelProvider;
    IBiometricSysuiReceiver mReceiver;
    public final SensorPrivacyManager mSensorPrivacyManager;
    public final SparseBooleanArray mSfpsEnrolledForUser;
    public SideFpsController mSideFpsController;
    public final Provider mSidefpsControllerFactory;
    public List mSidefpsProps;
    public Rect mUdfpsBounds;
    public UdfpsController mUdfpsController;
    public final Provider mUdfpsControllerFactory;
    public final SparseBooleanArray mUdfpsEnrolledForUser;
    public final UdfpsLogger mUdfpsLogger;
    public UdfpsOverlayParams mUdfpsOverlayParams;
    public List mUdfpsProps;
    public IUdfpsRefreshRateRequestCallback mUdfpsRefreshRateRequestCallback;
    public final UdfpsUtils mUdfpsUtils;
    public final UserManager mUserManager;
    public final VibratorHelper mVibratorHelper;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public final WindowManager mWindowManager;
    public float mScaleFactor = 1.0f;
    public final Set mCallbacks = new HashSet();
    public final Map mFpEnrolledForUser = new HashMap();
    public final DisplayInfo mCachedDisplayInfo = new DisplayInfo();
    final TaskStackListener mTaskStackListener = new AnonymousClass1();

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.biometrics.AuthController$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends TaskStackListener {
        public static final /* synthetic */ int $r8$clinit = 0;

        public AnonymousClass1() {
        }

        public final void onTaskStackChanged() {
            AuthController authController = AuthController.this;
            authController.mHandler.post(new AuthController$$ExternalSyntheticLambda1(authController, 2));
        }
    }

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.biometrics.AuthController$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 extends BiometricStateListener {
        public AnonymousClass4() {
        }

        public final void onEnrollmentsChanged(int i, int i2, boolean z) {
            AuthController.this.mHandler.post(new AuthController$4$$ExternalSyntheticLambda0(this, i, i2, z, 0));
        }
    }

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.biometrics.AuthController$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 extends BiometricStateListener {
        public AnonymousClass5() {
        }

        public final void onEnrollmentsChanged(int i, int i2, boolean z) {
            AuthController.this.mHandler.post(new AuthController$4$$ExternalSyntheticLambda0(this, i, i2, z, 1));
        }
    }

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.biometrics.AuthController$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass6 extends IFingerprintAuthenticatorsRegisteredCallback.Stub {
        public AnonymousClass6() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void onAllAuthenticatorsRegistered(List list) {
            AuthController.this.mHandler.post(new AuthController$6$$ExternalSyntheticLambda0(this, list, 0));
        }
    }

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.biometrics.AuthController$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass7 extends IFaceAuthenticatorsRegisteredCallback.Stub {
        public AnonymousClass7() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void onAllAuthenticatorsRegistered(List list) {
            AuthController.this.mHandler.post(new AuthController$6$$ExternalSyntheticLambda0(this, list, 1));
        }
    }

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Callback {
        default void onEnrollmentsChanged(int i) {
        }

        default void onEnrollmentsChanged(BiometricType biometricType, int i, boolean z) {
        }

        default void onAllAuthenticatorsRegistered(int i) {
        }

        default void onUdfpsLocationChanged(UdfpsOverlayParams udfpsOverlayParams) {
        }

        default void onBiometricPromptDismissed() {
        }

        default void onBiometricPromptShown() {
        }

        default void onFaceSensorLocationChanged() {
        }

        default void onFingerprintLocationChanged() {
        }
    }

    /* compiled from: qb/85205018 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ScaleFactorProvider {
        float provide();
    }

    /* renamed from: -$$Nest$mhandleEnrollmentsChanged, reason: not valid java name */
    public static void m74$$Nest$mhandleEnrollmentsChanged(AuthController authController, int i, int i2, int i3, boolean z) {
        ((ExecutionImpl) authController.mExecution).assertIsMainThread();
        Log.d("AuthController", "handleEnrollmentsChanged, userId: " + i2 + ", sensorId: " + i3 + ", hasEnrollments: " + z);
        BiometricType biometricType = BiometricType.UNKNOWN;
        List list = authController.mFpProps;
        if (list != null) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal = (FingerprintSensorPropertiesInternal) it.next();
                if (fingerprintSensorPropertiesInternal.sensorId == i3) {
                    ((HashMap) authController.mFpEnrolledForUser).put(Integer.valueOf(i2), Boolean.valueOf(z));
                    if (fingerprintSensorPropertiesInternal.isAnyUdfpsType()) {
                        biometricType = BiometricType.UNDER_DISPLAY_FINGERPRINT;
                        authController.mUdfpsEnrolledForUser.put(i2, z);
                    } else if (fingerprintSensorPropertiesInternal.isAnySidefpsType()) {
                        biometricType = BiometricType.SIDE_FINGERPRINT;
                        authController.mSfpsEnrolledForUser.put(i2, z);
                    } else if (fingerprintSensorPropertiesInternal.sensorType == 1) {
                        biometricType = BiometricType.REAR_FINGERPRINT;
                    }
                }
            }
        }
        List list2 = authController.mFaceProps;
        if (list2 == null) {
            Log.d("AuthController", "handleEnrollmentsChanged, mFaceProps is null");
        } else {
            Iterator it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (((FaceSensorPropertiesInternal) it2.next()).sensorId == i3) {
                    authController.mFaceEnrolledForUser.put(i2, z);
                    biometricType = BiometricType.FACE;
                    break;
                }
            }
        }
        Iterator it3 = ((HashSet) authController.mCallbacks).iterator();
        while (it3.hasNext()) {
            Callback callback = (Callback) it3.next();
            callback.onEnrollmentsChanged(i);
            callback.onEnrollmentsChanged(biometricType, i2, z);
        }
    }

    public AuthController(Context context, FeatureFlags featureFlags, CoroutineScope coroutineScope, Execution execution, CommandQueue commandQueue, ActivityTaskManager activityTaskManager, WindowManager windowManager, FingerprintManager fingerprintManager, FaceManager faceManager, Provider provider, Provider provider2, DisplayManager displayManager, WakefulnessLifecycle wakefulnessLifecycle, AuthDialogPanelInteractionDetector authDialogPanelInteractionDetector, UserManager userManager, LockPatternUtils lockPatternUtils, UdfpsLogger udfpsLogger, LogContextInteractor logContextInteractor, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7, InteractionJankMonitor interactionJankMonitor, Handler handler, DelayableExecutor delayableExecutor, VibratorHelper vibratorHelper, UdfpsUtils udfpsUtils) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.biometrics.AuthController.2
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction())) {
                    String stringExtra = intent.getStringExtra("reason");
                    if (stringExtra == null) {
                        stringExtra = "unknown";
                    }
                    AuthController authController = AuthController.this;
                    if (authController.isShowing()) {
                        Log.i("AuthController", "Close BP, reason :".concat(stringExtra));
                        ((AuthContainerView) authController.mCurrentDialog).dismissWithoutCallback(true);
                        authController.mCurrentDialog = null;
                        Iterator it = ((HashSet) authController.mCallbacks).iterator();
                        while (it.hasNext()) {
                            ((Callback) it.next()).onBiometricPromptDismissed();
                        }
                        try {
                            IBiometricSysuiReceiver iBiometricSysuiReceiver = authController.mReceiver;
                            if (iBiometricSysuiReceiver != null) {
                                iBiometricSysuiReceiver.onDialogDismissed(3, (byte[]) null);
                                authController.mReceiver = null;
                            }
                        } catch (RemoteException e) {
                            Log.e("AuthController", "Remote exception", e);
                        }
                    }
                }
            }
        };
        this.mBroadcastReceiver = broadcastReceiver;
        this.mContext = context;
        this.mFeatureFlags = featureFlags;
        this.mExecution = execution;
        this.mUserManager = userManager;
        this.mLockPatternUtils = lockPatternUtils;
        this.mHandler = handler;
        this.mBackgroundExecutor = delayableExecutor;
        this.mCommandQueue = commandQueue;
        this.mActivityTaskManager = activityTaskManager;
        this.mFingerprintManager = fingerprintManager;
        this.mFaceManager = faceManager;
        this.mUdfpsControllerFactory = provider;
        this.mSidefpsControllerFactory = provider2;
        this.mUdfpsLogger = udfpsLogger;
        this.mWindowManager = windowManager;
        this.mInteractionJankMonitor = interactionJankMonitor;
        this.mUdfpsEnrolledForUser = new SparseBooleanArray();
        this.mSfpsEnrolledForUser = new SparseBooleanArray();
        this.mFaceEnrolledForUser = new SparseBooleanArray();
        this.mVibratorHelper = vibratorHelper;
        this.mUdfpsUtils = udfpsUtils;
        this.mApplicationCoroutineScope = coroutineScope;
        this.mLogContextInteractor = logContextInteractor;
        this.mAuthBiometricFingerprintViewModelProvider = provider3;
        this.mPromptSelectorInteractor = provider5;
        this.mPromptCredentialInteractor = provider4;
        this.mPromptViewModelProvider = provider7;
        this.mCredentialViewModelProvider = provider6;
        this.mOrientationListener = new BiometricDisplayListener(context, displayManager, handler, BiometricDisplayListener.SensorType.Generic.INSTANCE, new Function0() { // from class: com.android.systemui.biometrics.AuthController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                AuthController authController = AuthController.this;
                authController.updateSensorLocations();
                AuthDialog authDialog = authController.mCurrentDialog;
                if (authDialog != null) {
                    AuthContainerView authContainerView = (AuthContainerView) authDialog;
                    authContainerView.maybeUpdatePositionForUdfps(true);
                    AuthBiometricViewAdapter authBiometricViewAdapter = authContainerView.mBiometricView;
                    if (authBiometricViewAdapter != null) {
                        authBiometricViewAdapter.onOrientationChanged();
                    }
                }
                return Unit.INSTANCE;
            }
        });
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mPanelInteractionDetector = authDialogPanelInteractionDetector;
        this.mFaceProps = faceManager != null ? faceManager.getSensorPropertiesInternal() : null;
        int[] intArray = context.getResources().getIntArray(R.array.config_face_auth_props);
        if (intArray != null && intArray.length >= 2) {
            this.mFaceSensorLocationDefault = new Point(intArray[0], intArray[1]);
        } else {
            this.mFaceSensorLocationDefault = null;
        }
        this.mDisplay = context.getDisplay();
        updateSensorLocations();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        context.registerReceiver(broadcastReceiver, intentFilter, 2);
        this.mSensorPrivacyManager = (SensorPrivacyManager) context.getSystemService(SensorPrivacyManager.class);
    }

    public final void addCallback(Callback callback) {
        this.mCallbacks.add(callback);
    }

    public final void cancelIfOwnerIsNotInForeground() {
        boolean z;
        ((ExecutionImpl) this.mExecution).assertIsMainThread();
        AuthDialog authDialog = this.mCurrentDialog;
        if (authDialog != null) {
            try {
                String str = ((AuthContainerView) authDialog).mConfig.mOpPackageName;
                Log.w("AuthController", "Task stack changed, current client: " + str);
                List tasks = this.mActivityTaskManager.getTasks(1);
                if (!tasks.isEmpty()) {
                    boolean z2 = false;
                    String packageName = ((ActivityManager.RunningTaskInfo) tasks.get(0)).topActivity.getPackageName();
                    if (!packageName.contentEquals(str)) {
                        Context context = this.mContext;
                        int i = Utils.$r8$clinit;
                        if (context.checkCallingOrSelfPermission("android.permission.USE_BIOMETRIC_INTERNAL") == 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z && Intrinsics.areEqual("android", str)) {
                            z2 = true;
                        }
                        if (!z2) {
                            Log.e("AuthController", "Evicting client due to: ".concat(packageName));
                            ((AuthContainerView) this.mCurrentDialog).dismissWithoutCallback(true);
                            this.mCurrentDialog = null;
                            Iterator it = ((HashSet) this.mCallbacks).iterator();
                            while (it.hasNext()) {
                                ((Callback) it.next()).onBiometricPromptDismissed();
                            }
                            IBiometricSysuiReceiver iBiometricSysuiReceiver = this.mReceiver;
                            if (iBiometricSysuiReceiver != null) {
                                iBiometricSysuiReceiver.onDialogDismissed(3, (byte[]) null);
                                this.mReceiver = null;
                            }
                        }
                    }
                }
            } catch (RemoteException e) {
                Log.e("AuthController", "Remote exception", e);
            }
        }
    }

    @Override // com.android.systemui.doze.DozeReceiver
    public final void dozeTimeTick() {
        UdfpsController udfpsController = this.mUdfpsController;
        if (udfpsController != null) {
            udfpsController.dozeTimeTick();
        }
    }

    @Override // com.android.systemui.CoreStartable, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        AuthDialog authDialog = this.mCurrentDialog;
        printWriter.println("  mCachedDisplayInfo=" + this.mCachedDisplayInfo);
        StringBuilder m = LockIconView$$ExternalSyntheticOutline0.m(new StringBuilder("  mScaleFactor="), this.mScaleFactor, printWriter, "  faceAuthSensorLocationDefault=");
        m.append(this.mFaceSensorLocationDefault);
        printWriter.println(m.toString());
        printWriter.println("  faceAuthSensorLocation=" + this.mFaceSensorLocation);
        printWriter.println("  fingerprintSensorLocationInNaturalOrientation=" + getFingerprintSensorLocationInNaturalOrientation());
        printWriter.println("  fingerprintSensorLocation=" + this.mFingerprintSensorLocation);
        printWriter.println("  udfpsBounds=" + this.mUdfpsBounds);
        printWriter.println("  allFingerprintAuthenticatorsRegistered=" + this.mAllFingerprintAuthenticatorsRegistered);
        printWriter.println("  currentDialog=" + authDialog);
        if (authDialog != null) {
            ((AuthContainerView) authDialog).dump(printWriter, strArr);
        }
    }

    public final IBiometricSysuiReceiver getCurrentReceiver(long j) {
        AuthDialog authDialog = this.mCurrentDialog;
        boolean z = false;
        if (authDialog == null) {
            Log.w("AuthController", "shouldNotifyReceiver: dialog already gone");
        } else if (j != ((AuthContainerView) authDialog).mConfig.mRequestId) {
            Log.w("AuthController", "shouldNotifyReceiver: requestId doesn't match");
        } else {
            z = true;
        }
        if (!z) {
            return null;
        }
        if (this.mReceiver == null) {
            Log.w("AuthController", "getCurrentReceiver: Receiver is null");
        }
        return this.mReceiver;
    }

    public final Point getFingerprintSensorLocationInNaturalOrientation() {
        Context context = this.mContext;
        if (getUdfpsLocation() != null) {
            return getUdfpsLocation();
        }
        int naturalWidth = this.mCachedDisplayInfo.getNaturalWidth() / 2;
        try {
            naturalWidth = context.getResources().getDimensionPixelSize(R.dimen.physical_fingerprint_sensor_center_screen_location_x);
        } catch (Resources.NotFoundException unused) {
        }
        return new Point((int) (naturalWidth * this.mScaleFactor), (int) (context.getResources().getDimensionPixelSize(R.dimen.physical_fingerprint_sensor_center_screen_location_y) * this.mScaleFactor));
    }

    public final Point getUdfpsLocation() {
        if (this.mUdfpsController != null && this.mUdfpsBounds != null) {
            return new Point(this.mUdfpsBounds.centerX(), this.mUdfpsBounds.centerY());
        }
        return null;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void hideAuthenticationDialog(long j) {
        Log.d("AuthController", "hideAuthenticationDialog: " + this.mCurrentDialog);
        AuthDialog authDialog = this.mCurrentDialog;
        if (authDialog == null) {
            Log.d("AuthController", "dialog already gone");
            return;
        }
        AuthContainerView authContainerView = (AuthContainerView) authDialog;
        if (j != authContainerView.mConfig.mRequestId) {
            StringBuilder m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m("ignore - ids do not match: ", j, " current: ");
            m.append(((AuthContainerView) this.mCurrentDialog).mConfig.mRequestId);
            Log.w("AuthController", m.toString());
        } else {
            authContainerView.animateAway(0, false);
            this.mCurrentDialog = null;
        }
    }

    public final boolean isShowing() {
        if (this.mCurrentDialog != null) {
            return true;
        }
        return false;
    }

    public final boolean isUdfpsEnrolled(int i) {
        if (this.mUdfpsController == null) {
            return false;
        }
        return this.mUdfpsEnrolledForUser.get(i);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onBiometricAuthenticated(int i) {
        Log.d("AuthController", "onBiometricAuthenticated: ");
        VibratorHelper vibratorHelper = this.mVibratorHelper;
        vibratorHelper.getClass();
        vibratorHelper.vibrate(Process.myUid(), "com.android.systemui", VibratorHelper.BIOMETRIC_SUCCESS_VIBRATION_EFFECT, "AuthController, modality = " + i + "BP::success", VibratorHelper.HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES);
        AuthDialog authDialog = this.mCurrentDialog;
        if (authDialog != null) {
            AuthBiometricViewAdapter authBiometricViewAdapter = ((AuthContainerView) authDialog).mBiometricView;
            if (authBiometricViewAdapter != null) {
                authBiometricViewAdapter.onAuthenticationSucceeded(i);
                return;
            } else {
                Log.e("AuthContainerView", "onAuthenticationSucceeded(): mBiometricView is null");
                return;
            }
        }
        Log.w("AuthController", "onBiometricAuthenticated callback but dialog gone");
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onBiometricError(final int i, int i2, int i3) {
        boolean z;
        boolean z2;
        String str;
        Log.d("AuthController", String.format("onBiometricError(%d, %d, %d)", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
        VibratorHelper vibratorHelper = this.mVibratorHelper;
        vibratorHelper.getClass();
        vibratorHelper.vibrate(Process.myUid(), "com.android.systemui", VibratorHelper.BIOMETRIC_ERROR_VIBRATION_EFFECT, "AuthController, modality = " + i + "BP::error", VibratorHelper.HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES);
        boolean z3 = false;
        if (i2 != 7 && i2 != 9) {
            z = false;
        } else {
            z = true;
        }
        if (i2 == 1 && this.mSensorPrivacyManager.isSensorPrivacyEnabled(1, 2)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (i2 == 100 || i2 == 3 || z2) {
            z3 = true;
        }
        AuthDialog authDialog = this.mCurrentDialog;
        if (authDialog != null) {
            if (Utils.isDeviceCredentialAllowed(((AuthContainerView) authDialog).mConfig.mPromptInfo) && z) {
                Log.d("AuthController", "onBiometricError, lockout");
                AuthBiometricViewAdapter authBiometricViewAdapter = ((AuthContainerView) this.mCurrentDialog).mBiometricView;
                if (authBiometricViewAdapter != null) {
                    authBiometricViewAdapter.startTransitionToCredentialUI();
                    return;
                } else {
                    Log.e("AuthContainerView", "animateToCredentialUI(): mBiometricView is null");
                    return;
                }
            }
            String str2 = "";
            Context context = this.mContext;
            if (z3) {
                if (i2 == 100) {
                    str = context.getString(android.R.string.config_mms_user_agent_profile_url);
                } else {
                    if (i != 2) {
                        if (i == 8) {
                            str2 = FaceManager.getErrorString(context, i2, i3);
                        }
                    } else {
                        str2 = FingerprintManager.getErrorString(context, i2, i3);
                    }
                    str = str2;
                }
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onBiometricError, soft error: ", str, "AuthController");
                if (z2) {
                    this.mHandler.postDelayed(new Runnable() { // from class: com.android.systemui.biometrics.AuthController$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            AuthController authController = AuthController.this;
                            int i4 = i;
                            ((AuthContainerView) authController.mCurrentDialog).onAuthenticationFailed(i4, authController.mContext.getString(android.R.string.no_matches));
                        }
                    }, 500L);
                    return;
                } else {
                    ((AuthContainerView) this.mCurrentDialog).onAuthenticationFailed(i, str);
                    return;
                }
            }
            if (i != 2) {
                if (i == 8) {
                    str2 = FaceManager.getErrorString(context, i2, i3);
                }
            } else {
                str2 = FingerprintManager.getErrorString(context, i2, i3);
            }
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onBiometricError, hard error: ", str2, "AuthController");
            AuthBiometricViewAdapter authBiometricViewAdapter2 = ((AuthContainerView) this.mCurrentDialog).mBiometricView;
            if (authBiometricViewAdapter2 != null) {
                authBiometricViewAdapter2.onError(i, str2);
                return;
            } else {
                Log.e("AuthContainerView", "onError(): mBiometricView is null");
                return;
            }
        }
        Log.w("AuthController", "onBiometricError callback but dialog is gone");
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onBiometricHelp(int i, String str) {
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onBiometricHelp: ", str, "AuthController");
        AuthDialog authDialog = this.mCurrentDialog;
        if (authDialog != null) {
            AuthBiometricViewAdapter authBiometricViewAdapter = ((AuthContainerView) authDialog).mBiometricView;
            if (authBiometricViewAdapter != null) {
                authBiometricViewAdapter.onHelp(i, str);
                return;
            } else {
                Log.e("AuthContainerView", "onHelp(): mBiometricView is null");
                return;
            }
        }
        Log.w("AuthController", "onBiometricHelp callback but dialog gone");
    }

    @Override // com.android.systemui.CoreStartable
    public final void onConfigurationChanged(Configuration configuration) {
        boolean z;
        boolean z2;
        boolean z3;
        updateSensorLocations();
        AuthDialog authDialog = this.mCurrentDialog;
        if (authDialog != null) {
            PromptViewModel promptViewModel = ((AuthContainerView) authDialog).mPromptViewModel;
            Bundle bundle = new Bundle();
            AuthContainerView authContainerView = (AuthContainerView) this.mCurrentDialog;
            if (authContainerView.mContainerState == 4) {
                z = true;
            } else {
                z = false;
            }
            bundle.putBoolean("container_going_away", z);
            if (authContainerView.mBiometricView != null && authContainerView.mCredentialView == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            bundle.putBoolean("biometric_showing", z2);
            if (authContainerView.mCredentialView != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            bundle.putBoolean("credential_showing", z3);
            AuthBiometricViewAdapter authBiometricViewAdapter = authContainerView.mBiometricView;
            if (authBiometricViewAdapter != null) {
                authBiometricViewAdapter.onSaveState(bundle);
            }
            ((AuthContainerView) this.mCurrentDialog).dismissWithoutCallback(false);
            this.mCurrentDialog = null;
            if (!bundle.getBoolean("container_going_away", false)) {
                if (bundle.getBoolean("credential_showing")) {
                    ((PromptInfo) this.mCurrentDialogArgs.arg1).setAuthenticators(32768);
                }
                showDialog(this.mCurrentDialogArgs, true, bundle, promptViewModel);
            }
        }
    }

    public final void removeCallback(Callback callback) {
        ((HashSet) this.mCallbacks).remove(callback);
    }

    public Point rotateToCurrentOrientation(Point point, DisplayInfo displayInfo) {
        RotationUtils.rotatePoint(point, displayInfo.rotation, displayInfo.getNaturalWidth(), displayInfo.getNaturalHeight());
        return point;
    }

    public final void sendResultAndCleanUp(int i, byte[] bArr) {
        IBiometricSysuiReceiver iBiometricSysuiReceiver = this.mReceiver;
        if (iBiometricSysuiReceiver == null) {
            Log.e("AuthController", "sendResultAndCleanUp: Receiver is null");
            return;
        }
        try {
            iBiometricSysuiReceiver.onDialogDismissed(i, bArr);
        } catch (RemoteException e) {
            Log.w("AuthController", "Remote exception", e);
        }
        ListPopupWindow$$ExternalSyntheticOutline0.m("onDialogDismissed: ", i, "AuthController");
        if (this.mCurrentDialog == null) {
            Log.w("AuthController", "Dialog already dismissed");
        }
        Iterator it = ((HashSet) this.mCallbacks).iterator();
        while (it.hasNext()) {
            ((Callback) it.next()).onBiometricPromptDismissed();
        }
        this.mReceiver = null;
        this.mCurrentDialog = null;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void setBiometricContextListener(IBiometricContextListener iBiometricContextListener) {
        ((LogContextInteractorImpl) this.mLogContextInteractor).addBiometricContextListener(iBiometricContextListener);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void setUdfpsRefreshRateCallback(IUdfpsRefreshRateRequestCallback iUdfpsRefreshRateRequestCallback) {
        this.mUdfpsRefreshRateRequestCallback = iUdfpsRefreshRateRequestCallback;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showAuthenticationDialog(PromptInfo promptInfo, IBiometricSysuiReceiver iBiometricSysuiReceiver, int[] iArr, boolean z, boolean z2, int i, long j, String str, long j2) {
        int authenticators = promptInfo.getAuthenticators();
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        for (int i2 : iArr) {
            sb.append(i2);
            sb.append(" ");
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("showAuthenticationDialog, authenticators: ", authenticators, ", sensorIds: ");
        m.append(sb.toString());
        m.append(", credentialAllowed: ");
        m.append(z);
        m.append(", requireConfirmation: ");
        m.append(z2);
        m.append(", operationId: ");
        m.append(j);
        m.append(", requestId: ");
        m.append(j2);
        Log.d("AuthController", m.toString());
        SomeArgs obtain = SomeArgs.obtain();
        obtain.arg1 = promptInfo;
        obtain.arg2 = iBiometricSysuiReceiver;
        obtain.arg3 = iArr;
        obtain.arg4 = Boolean.valueOf(z);
        obtain.arg5 = Boolean.valueOf(z2);
        obtain.argi1 = i;
        obtain.arg6 = str;
        obtain.argl1 = j;
        obtain.argl2 = j2;
        if (this.mCurrentDialog != null) {
            Log.w("AuthController", "mCurrentDialog: " + this.mCurrentDialog);
            z3 = true;
        }
        showDialog(obtain, z3, null, (PromptViewModel) this.mPromptViewModelProvider.get());
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.biometrics.AuthController$$ExternalSyntheticLambda2] */
    public final void showDialog(SomeArgs someArgs, boolean z, Bundle bundle, PromptViewModel promptViewModel) {
        this.mCurrentDialogArgs = someArgs;
        PromptInfo promptInfo = (PromptInfo) someArgs.arg1;
        int[] iArr = (int[]) someArgs.arg3;
        ((Boolean) someArgs.arg4).booleanValue();
        boolean booleanValue = ((Boolean) someArgs.arg5).booleanValue();
        int i = someArgs.argi1;
        String str = (String) someArgs.arg6;
        long j = someArgs.argl1;
        long j2 = someArgs.argl2;
        DelayableExecutor delayableExecutor = this.mBackgroundExecutor;
        WakefulnessLifecycle wakefulnessLifecycle = this.mWakefulnessLifecycle;
        AuthDialogPanelInteractionDetector authDialogPanelInteractionDetector = this.mPanelInteractionDetector;
        UserManager userManager = this.mUserManager;
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        AuthContainerView.Config config = new AuthContainerView.Config();
        config.mContext = this.mContext;
        config.mCallback = this;
        config.mPromptInfo = promptInfo;
        config.mRequireConfirmation = booleanValue;
        config.mUserId = i;
        config.mOpPackageName = str;
        config.mSkipIntro = z;
        config.mOperationId = j;
        config.mRequestId = j2;
        config.mSensorIds = iArr;
        config.mScaleProvider = new ScaleFactorProvider() { // from class: com.android.systemui.biometrics.AuthController$$ExternalSyntheticLambda2
            @Override // com.android.systemui.biometrics.AuthController.ScaleFactorProvider
            public final float provide() {
                return AuthController.this.mScaleFactor;
            }
        };
        AuthContainerView authContainerView = new AuthContainerView(config, this.mFeatureFlags, this.mApplicationCoroutineScope, this.mFpProps, this.mFaceProps, wakefulnessLifecycle, authDialogPanelInteractionDetector, userManager, lockPatternUtils, this.mInteractionJankMonitor, this.mAuthBiometricFingerprintViewModelProvider, this.mPromptCredentialInteractor, this.mPromptSelectorInteractor, promptViewModel, this.mCredentialViewModelProvider, delayableExecutor);
        Log.d("AuthController", "userId: " + i + " savedState: " + bundle + " mCurrentDialog: " + this.mCurrentDialog + " newDialog: " + authContainerView);
        AuthDialog authDialog = this.mCurrentDialog;
        int i2 = 0;
        if (authDialog != null) {
            ((AuthContainerView) authDialog).dismissWithoutCallback(false);
        }
        this.mReceiver = (IBiometricSysuiReceiver) someArgs.arg2;
        Iterator it = ((HashSet) this.mCallbacks).iterator();
        while (it.hasNext()) {
            ((Callback) it.next()).onBiometricPromptShown();
        }
        this.mCurrentDialog = authContainerView;
        AuthBiometricViewAdapter authBiometricViewAdapter = authContainerView.mBiometricView;
        if (authBiometricViewAdapter != null) {
            authBiometricViewAdapter.restoreState(bundle);
        }
        this.mWindowManager.addView(authContainerView, AuthContainerView.getLayoutParams(authContainerView.mWindowToken, authContainerView.mConfig.mPromptInfo.getTitle()));
        if (!promptInfo.isAllowBackgroundAuthentication()) {
            this.mHandler.post(new AuthController$$ExternalSyntheticLambda1(this, i2));
        }
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        this.mCommandQueue.addCallback((CommandQueue.Callbacks) this);
        FingerprintManager fingerprintManager = this.mFingerprintManager;
        if (fingerprintManager != null) {
            fingerprintManager.addAuthenticatorsRegisteredCallback(new AnonymousClass6());
        }
        FaceManager faceManager = this.mFaceManager;
        if (faceManager != null) {
            faceManager.addAuthenticatorsRegisteredCallback(new AnonymousClass7());
        }
        this.mActivityTaskManager.registerTaskStackListener(this.mTaskStackListener);
        this.mOrientationListener.enable();
        updateSensorLocations();
    }

    public final void updateSensorLocations() {
        Point point;
        Display display = this.mDisplay;
        DisplayInfo displayInfo = this.mCachedDisplayInfo;
        display.getDisplayInfo(displayInfo);
        this.mUdfpsUtils.getClass();
        Display.Mode maximumResolutionDisplayMode = DisplayUtils.getMaximumResolutionDisplayMode(displayInfo.supportedModes);
        float physicalPixelDisplaySizeRatio = DisplayUtils.getPhysicalPixelDisplaySizeRatio(maximumResolutionDisplayMode.getPhysicalWidth(), maximumResolutionDisplayMode.getPhysicalHeight(), displayInfo.getNaturalWidth(), displayInfo.getNaturalHeight());
        if (physicalPixelDisplaySizeRatio == Float.POSITIVE_INFINITY) {
            physicalPixelDisplaySizeRatio = 1.0f;
        }
        this.mScaleFactor = physicalPixelDisplaySizeRatio;
        updateUdfpsLocation();
        if (this.mFpProps == null) {
            this.mFingerprintSensorLocation = null;
        } else {
            this.mFingerprintSensorLocation = rotateToCurrentOrientation(getFingerprintSensorLocationInNaturalOrientation(), displayInfo);
        }
        Set set = this.mCallbacks;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((Callback) it.next()).onFingerprintLocationChanged();
        }
        if (this.mFaceProps != null && (point = this.mFaceSensorLocationDefault) != null) {
            float f = point.x;
            float f2 = this.mScaleFactor;
            this.mFaceSensorLocation = rotateToCurrentOrientation(new Point((int) (f * f2), (int) (point.y * f2)), displayInfo);
        } else {
            this.mFaceSensorLocation = null;
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            ((Callback) it2.next()).onFaceSensorLocationChanged();
        }
    }

    public final void updateUdfpsLocation() {
        if (this.mUdfpsController != null) {
            FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal = (FingerprintSensorPropertiesInternal) this.mUdfpsProps.get(0);
            Rect rect = this.mUdfpsBounds;
            UdfpsOverlayParams udfpsOverlayParams = this.mUdfpsOverlayParams;
            Rect rect2 = fingerprintSensorPropertiesInternal.getLocation().getRect();
            this.mUdfpsBounds = rect2;
            rect2.scale(this.mScaleFactor);
            DisplayInfo displayInfo = this.mCachedDisplayInfo;
            UdfpsOverlayParams udfpsOverlayParams2 = new UdfpsOverlayParams(this.mUdfpsBounds, new Rect(0, displayInfo.getNaturalHeight() / 2, displayInfo.getNaturalWidth(), displayInfo.getNaturalHeight()), displayInfo.getNaturalWidth(), displayInfo.getNaturalHeight(), this.mScaleFactor, displayInfo.rotation);
            this.mUdfpsOverlayParams = udfpsOverlayParams2;
            UdfpsController udfpsController = this.mUdfpsController;
            if (udfpsController.mSensorProps.sensorId != fingerprintSensorPropertiesInternal.sensorId) {
                udfpsController.mSensorProps = fingerprintSensorPropertiesInternal;
                Log.w("UdfpsController", "updateUdfpsParams | sensorId has changed");
            }
            if (!udfpsController.mOverlayParams.equals(udfpsOverlayParams2)) {
                udfpsController.mOverlayParams = udfpsOverlayParams2;
                boolean isVisibleState = udfpsController.mAlternateBouncerInteractor.isVisibleState();
                UdfpsControllerOverlay udfpsControllerOverlay = udfpsController.mOverlay;
                if (udfpsControllerOverlay != null) {
                    udfpsController.hideUdfpsOverlay();
                    udfpsController.showUdfpsOverlay(udfpsControllerOverlay);
                }
                if (isVisibleState) {
                    udfpsController.mKeyguardViewManager.showBouncer();
                }
            }
            if (!Objects.equals(rect, this.mUdfpsBounds) || !Objects.equals(udfpsOverlayParams, this.mUdfpsOverlayParams)) {
                Iterator it = ((HashSet) this.mCallbacks).iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).onUdfpsLocationChanged(this.mUdfpsOverlayParams);
                }
            }
        }
    }
}
