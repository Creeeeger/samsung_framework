package android.widget;

import android.app.Activity;
import android.app.ActivityThread;
import android.app.INotificationManager;
import android.app.ITransientNotification;
import android.app.ITransientNotificationCallback;
import android.compat.Compatibility;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Binder;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.IWindowManager;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.view.accessibility.IAccessibilityManager;
import android.widget.Toast;
import com.android.internal.R;
import com.android.internal.util.Preconditions;
import com.samsung.android.desktopmode.SemDesktopModeManager;
import com.samsung.android.desktopmode.SemDesktopModeState;
import com.samsung.android.rune.CoreRune;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class Toast {
    private static final long CHANGE_TEXT_TOASTS_IN_THE_SYSTEM = 147798919;
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    private static final int MAX_LOOP_COUNT = 100;
    public static final int SEM_DISPLAY_TYPE_DEFAULT = 0;
    public static final int SEM_DISPLAY_TYPE_DEX = 1;
    public static final int SEM_LENGTH_LONG_DOUBLE = 1000;
    static final String TAG = "Toast";
    private static INotificationManager sService;
    private final List<Callback> mCallbacks;
    private final Context mContext;
    int mCustomDisplayId;
    Context mDisplayContext;
    int mDuration;
    private final Handler mHandler;
    private boolean mIsCustomToast;
    private View mNextView;
    View mNextViewForDex;
    final TN mTN;
    private CharSequence mText;
    private final Binder mToken;
    static final boolean localLOGV = Debug.semIsProductDev();
    static final boolean DEBUG = Debug.semIsProductDev();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface Duration {
    }

    /* renamed from: -$$Nest$smgetService, reason: not valid java name */
    static /* bridge */ /* synthetic */ INotificationManager m6792$$Nest$smgetService() {
        return getService();
    }

    public Toast(Context context) {
        this(context, null);
    }

    public Toast(Context context, Looper looper) {
        this.mDisplayContext = null;
        this.mNextViewForDex = null;
        this.mIsCustomToast = false;
        this.mCustomDisplayId = -1;
        this.mContext = context;
        Binder binder = new Binder();
        this.mToken = binder;
        Looper looper2 = getLooper(looper);
        this.mHandler = new Handler(looper2);
        ArrayList arrayList = new ArrayList();
        this.mCallbacks = arrayList;
        TN tn = new TN(context, context.getPackageName(), binder, arrayList, looper2);
        this.mTN = tn;
        tn.mY = context.getResources().getDimensionPixelSize(R.dimen.toast_y_offset);
        tn.mGravity = context.getResources().getInteger(R.integer.config_toastDefaultGravity);
    }

    private Looper getLooper(Looper looper) {
        if (looper != null) {
            return looper;
        }
        return (Looper) Preconditions.checkNotNull(Looper.myLooper(), "Can't toast on a thread that has not called Looper.prepare()");
    }

    private boolean isSpeg() {
        Context context;
        PackageManager pm;
        return CoreRune.SYSFW_APP_SPEG && (context = ActivityThread.currentApplication()) != null && (pm = context.getPackageManager()) != null && pm.isSpeg(Binder.getCallingUid());
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void show() {
        /*
            Method dump skipped, instructions count: 808
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.widget.Toast.show():void");
    }

    public void cancel() {
        if (Compatibility.isChangeEnabled(CHANGE_TEXT_TOASTS_IN_THE_SYSTEM) && this.mNextView == null) {
            try {
                getService().cancelToast(this.mContext.getOpPackageName(), this.mToken);
            } catch (RemoteException e) {
            }
        } else {
            this.mTN.cancel();
        }
    }

    @Deprecated
    public void setView(View view) {
        this.mNextView = view;
        this.mIsCustomToast = true;
        Log.i(TAG, "setView: it's a custom toast");
    }

    @Deprecated
    public View getView() {
        return this.mNextView;
    }

    public void setDuration(int duration) {
        this.mDuration = duration;
        this.mTN.mDuration = duration;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public void setMargin(float horizontalMargin, float verticalMargin) {
        if (isSystemRenderedTextToast()) {
            Log.e(TAG, "setMargin() shouldn't be called on text toasts, the values won't be used");
        }
        this.mTN.mHorizontalMargin = horizontalMargin;
        this.mTN.mVerticalMargin = verticalMargin;
    }

    public float getHorizontalMargin() {
        if (isSystemRenderedTextToast()) {
            Log.e(TAG, "getHorizontalMargin() shouldn't be called on text toasts, the result may not reflect actual values.");
        }
        return this.mTN.mHorizontalMargin;
    }

    public float getVerticalMargin() {
        if (isSystemRenderedTextToast()) {
            Log.e(TAG, "getVerticalMargin() shouldn't be called on text toasts, the result may not reflect actual values.");
        }
        return this.mTN.mVerticalMargin;
    }

    public void setGravity(int gravity, int xOffset, int yOffset) {
        if (isSystemRenderedTextToast()) {
            Log.e(TAG, "setGravity() shouldn't be called on text toasts, the values won't be used");
        }
        this.mTN.mGravity = gravity;
        this.mTN.mX = xOffset;
        this.mTN.mY = yOffset;
        this.mTN.mIsCustomOffset = true;
    }

    public int getGravity() {
        if (isSystemRenderedTextToast()) {
            Log.e(TAG, "getGravity() shouldn't be called on text toasts, the result may not reflect actual values.");
        }
        return this.mTN.mGravity;
    }

    public int getXOffset() {
        if (isSystemRenderedTextToast()) {
            Log.e(TAG, "getXOffset() shouldn't be called on text toasts, the result may not reflect actual values.");
        }
        return this.mTN.mX;
    }

    public int getYOffset() {
        if (isSystemRenderedTextToast()) {
            Log.e(TAG, "getYOffset() shouldn't be called on text toasts, the result may not reflect actual values.");
        }
        return this.mTN.mY;
    }

    private boolean isSystemRenderedTextToast() {
        return Compatibility.isChangeEnabled(CHANGE_TEXT_TOASTS_IN_THE_SYSTEM) && this.mNextView == null;
    }

    public void addCallback(Callback callback) {
        Preconditions.checkNotNull(callback);
        synchronized (this.mCallbacks) {
            this.mCallbacks.add(callback);
        }
    }

    public void removeCallback(Callback callback) {
        synchronized (this.mCallbacks) {
            this.mCallbacks.remove(callback);
        }
    }

    public WindowManager.LayoutParams getWindowParams() {
        if (Compatibility.isChangeEnabled(CHANGE_TEXT_TOASTS_IN_THE_SYSTEM)) {
            if (this.mNextView != null) {
                return this.mTN.mParams;
            }
            return null;
        }
        return this.mTN.mParams;
    }

    public static Toast makeText(Context context, CharSequence text, int duration) {
        return makeText(context, null, text, duration);
    }

    public static Toast makeText(Context context, Looper looper, CharSequence text, int duration) {
        Toast result = new Toast(context, looper);
        if (Compatibility.isChangeEnabled(CHANGE_TEXT_TOASTS_IN_THE_SYSTEM)) {
            result.mText = text;
        } else {
            result.mNextView = ToastPresenter.getTextToastView(context, text);
        }
        result.mDuration = duration;
        return result;
    }

    public static Toast makeCustomToastWithIcon(Context context, Looper looper, CharSequence text, int duration, Drawable icon) {
        if (icon == null) {
            throw new IllegalArgumentException("Drawable icon should not be null for makeCustomToastWithIcon");
        }
        Toast result = new Toast(context, looper);
        result.mNextView = ToastPresenter.getTextToastViewWithIcon(context, text, icon);
        result.mDuration = duration;
        return result;
    }

    public static Toast makeText(Context context, int resId, int duration) throws Resources.NotFoundException {
        return makeText(context, context.getResources().getText(resId), duration);
    }

    public void setText(int resId) {
        setText(this.mContext.getText(resId));
    }

    public void setText(CharSequence s) {
        if (Compatibility.isChangeEnabled(CHANGE_TEXT_TOASTS_IN_THE_SYSTEM)) {
            if (this.mNextView != null) {
                throw new IllegalStateException("Text provided for custom toast, remove previous setView() calls if you want a text toast instead.");
            }
            this.mText = s;
            return;
        }
        View view = this.mNextView;
        if (view == null) {
            throw new RuntimeException("This Toast was not created with Toast.makeText()");
        }
        TextView tv = (TextView) view.findViewById(16908299);
        if (tv == null) {
            throw new RuntimeException("This Toast was not created with Toast.makeText()");
        }
        tv.setText(s);
    }

    private static INotificationManager getService() {
        INotificationManager iNotificationManager = sService;
        if (iNotificationManager != null) {
            return iNotificationManager;
        }
        INotificationManager asInterface = INotificationManager.Stub.asInterface(ServiceManager.getService("notification"));
        sService = asInterface;
        return asInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class TN extends ITransientNotification.Stub {
        private static final int CANCEL = 2;
        private static final int HIDE = 1;
        private static final int SHOW = 0;
        private final WeakReference<List<Callback>> mCallbacks;
        int mDuration;
        int mGravity;
        final Handler mHandler;
        float mHorizontalMargin;
        boolean mIsCustomOffset;
        boolean mIsCustomView = false;
        WeakReference<View> mNextView;
        final String mPackageName;
        private final WindowManager.LayoutParams mParams;
        private final ToastPresenter mPresenter;
        final Binder mToken;
        float mVerticalMargin;
        View mView;
        WindowManager mWM;
        int mX;
        int mY;

        TN(Context context, String packageName, Binder token, List<Callback> callbacks, Looper looper) {
            IAccessibilityManager accessibilityManager = IAccessibilityManager.Stub.asInterface(ServiceManager.getService(Context.ACCESSIBILITY_SERVICE));
            ToastPresenter toastPresenter = new ToastPresenter(context, accessibilityManager, Toast.m6792$$Nest$smgetService(), packageName);
            this.mPresenter = toastPresenter;
            this.mParams = toastPresenter.getLayoutParams();
            this.mPackageName = packageName;
            this.mToken = token;
            this.mCallbacks = new WeakReference<>(callbacks);
            this.mHandler = new Handler(looper, null) { // from class: android.widget.Toast.TN.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    switch (msg.what) {
                        case 0:
                            IBinder token2 = (IBinder) msg.obj;
                            TN.this.handleShow(token2);
                            return;
                        case 1:
                            TN.this.handleHide();
                            TN.this.mNextView = null;
                            return;
                        case 2:
                            TN.this.handleHide();
                            TN.this.mNextView = null;
                            try {
                                Toast.m6792$$Nest$smgetService().cancelToast(TN.this.mPackageName, TN.this.mToken);
                                return;
                            } catch (RemoteException e) {
                                return;
                            }
                        default:
                            return;
                    }
                }
            };
        }

        private List<Callback> getCallbacks() {
            synchronized (this.mCallbacks) {
                if (this.mCallbacks.get() != null) {
                    return new ArrayList(this.mCallbacks.get());
                }
                return new ArrayList();
            }
        }

        @Override // android.app.ITransientNotification
        public void show(IBinder windowToken) {
            if (Toast.localLOGV) {
                Log.v(Toast.TAG, "SHOW: " + this);
            }
            this.mHandler.obtainMessage(0, windowToken).sendToTarget();
        }

        @Override // android.app.ITransientNotification
        public void hide() {
            if (Toast.localLOGV) {
                Log.v(Toast.TAG, "HIDE: " + this);
            }
            this.mHandler.obtainMessage(1).sendToTarget();
        }

        public void cancel() {
            if (Toast.localLOGV) {
                Log.v(Toast.TAG, "CANCEL: " + this);
            }
            this.mHandler.obtainMessage(2).sendToTarget();
        }

        public void handleShow(IBinder windowToken) {
            WeakReference<View> weakReference;
            Log.v(Toast.TAG, "HANDLE SHOW: " + this + " mView=" + this.mView + " mNextView=" + this.mNextView);
            if (!this.mHandler.hasMessages(2) && !this.mHandler.hasMessages(1) && (weakReference = this.mNextView) != null && this.mView != weakReference.get()) {
                handleHide();
                if (this.mIsCustomView) {
                    this.mParams.semClearExtensionFlags(131072);
                } else {
                    this.mParams.semAddExtensionFlags(131072);
                }
                View view = this.mNextView.get();
                this.mView = view;
                if (view != null) {
                    this.mPresenter.show(view, this.mToken, windowToken, this.mDuration, this.mGravity, this.mX, this.mY, this.mHorizontalMargin, this.mVerticalMargin, new CallbackBinder(getCallbacks(), this.mHandler));
                }
            }
        }

        public void handleHide() {
            if (Toast.localLOGV) {
                Log.v(Toast.TAG, "HANDLE HIDE: " + this + " mView=" + this.mView);
            }
            View view = this.mView;
            if (view != null) {
                Preconditions.checkState(view == this.mPresenter.getView(), "Trying to hide toast view different than the last one displayed");
                this.mPresenter.hide(new CallbackBinder(getCallbacks(), this.mHandler));
                this.mView = null;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class Callback {
        public void onToastShown() {
        }

        public void onToastHidden() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class CallbackBinder extends ITransientNotificationCallback.Stub {
        private final List<Callback> mCallbacks;
        private final Handler mHandler;

        private CallbackBinder(List<Callback> callbacks, Handler handler) {
            this.mCallbacks = callbacks;
            this.mHandler = handler;
        }

        @Override // android.app.ITransientNotificationCallback
        public void onToastShown() {
            this.mHandler.post(new Runnable() { // from class: android.widget.Toast$CallbackBinder$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Toast.CallbackBinder.this.lambda$onToastShown$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onToastShown$0() {
            for (Callback callback : getCallbacks()) {
                callback.onToastShown();
            }
        }

        @Override // android.app.ITransientNotificationCallback
        public void onToastHidden() {
            this.mHandler.post(new Runnable() { // from class: android.widget.Toast$CallbackBinder$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Toast.CallbackBinder.this.lambda$onToastHidden$1();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onToastHidden$1() {
            for (Callback callback : getCallbacks()) {
                callback.onToastHidden();
            }
        }

        private List<Callback> getCallbacks() {
            ArrayList arrayList;
            synchronized (this.mCallbacks) {
                arrayList = new ArrayList(this.mCallbacks);
            }
            return arrayList;
        }
    }

    private boolean checkGameHomeAllowList() {
        if (!"1".equals(SystemProperties.get("sys.boot_completed"))) {
            Log.i(TAG, "Boot is not completed yet. Don't read settings db.");
            return false;
        }
        int gameNoInterruption = Settings.System.getInt(this.mContext.getContentResolver(), "game_no_interruption", 0);
        if (gameNoInterruption <= 0) {
            return false;
        }
        String allowList = Settings.System.getString(this.mContext.getContentResolver(), "game_no_interruption_white_list");
        if (allowList != null) {
            String packageName = this.mContext.getPackageName();
            if (allowList.contains(packageName)) {
                Log.i(TAG, "GameNoInterruption mode. Show game toast. " + allowList);
                return false;
            }
            Log.i(TAG, "GameNoInterruption mode. Block toast " + allowList);
            return true;
        }
        Log.i(TAG, "gameNoInterruption is on, but allowList is null.");
        return false;
    }

    public static Toast semMakeAction(Context context, CharSequence text, int duration, CharSequence action, View.OnClickListener listener) {
        return makeText(context, null, text, duration);
    }

    private int semGetFocusedDisplayId() {
        if (this.mCustomDisplayId != -1) {
            int focusedDisplayId = this.mCustomDisplayId;
            return focusedDisplayId;
        }
        try {
            IWindowManager wm = WindowManagerGlobal.getWindowManagerService();
            int focusedDisplayId2 = wm.getTopFocusedDisplayId();
            return focusedDisplayId2;
        } catch (RemoteException e) {
            Log.w(TAG, "Unable to get focusedDisplayId");
            return 0;
        }
    }

    public void semSetPreferredDisplayType(int displayId) {
        if (displayId == 1) {
            this.mCustomDisplayId = 2;
        } else {
            this.mCustomDisplayId = 0;
        }
    }

    private boolean isDexDualModeEnabled(Context context) {
        boolean isDesktopDualMode = false;
        SemDesktopModeManager desktopModeManager = (SemDesktopModeManager) context.getSystemService(Context.SEM_DESKTOP_MODE_SERVICE);
        if (desktopModeManager != null) {
            SemDesktopModeState state = desktopModeManager.getDesktopModeState();
            isDesktopDualMode = state != null && state.enabled == 4 && state.getDisplayType() == 102;
        }
        if (localLOGV) {
            Log.v(TAG, "isDexDualModeEnabled: isDesktopDualMode = " + isDesktopDualMode);
        }
        return isDesktopDualMode;
    }

    private Activity getActivityContext(Context context) {
        Activity activity = null;
        Context tempContext = context;
        for (int count = 0; activity == null && tempContext != null && count < 100; count++) {
            if (tempContext instanceof Activity) {
                activity = (Activity) tempContext;
            } else {
                tempContext = tempContext instanceof ContextWrapper ? ((ContextWrapper) tempContext).getBaseContext() : null;
            }
        }
        return activity;
    }

    private Context semCreateDisplayContext(int displayType) {
        String dispCategory;
        Context displayContextTemp;
        DisplayManager dm = (DisplayManager) this.mContext.getSystemService(Context.DISPLAY_SERVICE);
        if (dm == null) {
            return null;
        }
        if (displayType == 2) {
            dispCategory = DisplayManager.DISPLAY_CATEGORY_DESKTOP;
        } else if (displayType == 1) {
            dispCategory = "com.samsung.android.hardware.display.category.BUILTIN";
        } else {
            return null;
        }
        Display[] displays = dm.getDisplays(dispCategory);
        for (Display d : displays) {
            if ((d.getDisplayId() == 1 || d.getDisplayId() == 2) && (displayContextTemp = this.mContext.createDisplayContext(d)) != null) {
                Context dispContext = new ContextThemeWrapper(displayContextTemp, 16974123);
                return dispContext;
            }
        }
        return null;
    }

    private String semGetMessageFromTv(View view) {
        CharSequence cs;
        if (view != null) {
            View tv = view.findViewById(16908299);
            if ((tv instanceof TextView) && (cs = ((TextView) tv).getText()) != null) {
                return cs.toString();
            }
            return "";
        }
        return "";
    }
}
